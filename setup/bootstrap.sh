# Function to hide the output of all the installation steps as it's noisy.
function install {
	echo Installing $1
	shift
	sudo apt-get -y install "$@" >/dev/null 2>&1
}

echo ' '
echo "---------------------------"
echo "Updating package information"
echo "---------------------------"
echo ' '
sudo apt-get -y update >/dev/null 2>&1

echo ' '
echo "--------------------"
echo "Installing core stuff"
echo "--------------------"
echo ' '
install 'git core' git-core
install 'curl' curl
install 'libssl-dev' libssl-dev
install 'libreadline-dev' libreadline-dev
install 'zlib1g-dev' zlib1g-dev

install 'apparmor' apparmor
install 'apparmor-utils' apparmor-utils
install 'apparmor-profiles' apparmor-profiles

echo ' '
echo "---------------------------"
echo "Cloning and installing rbenv"
echo "---------------------------"
echo ' '
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
export PATH="$HOME/.rbenv/bin:$PATH"
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
eval "$(rbenv init -)"
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
rbenv install 2.3.1
rbenv global 2.3.1

echo ' '
echo "-----------------"
echo "Installing bundler"
echo "-----------------"
echo ' '
cd /vagrant
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler >/dev/null 2>&1

echo ' '
echo "--------------"
echo "Running bundle"
echo "--------------"
echo ' '
bundle

sudo update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8

echo ' '

echo "--------------------------"
echo "Setup apparmor profile"
echo "--------------------------"
echo ' '

function set_profile {
    echo Set Profile $1
    sudo cp ./apparmor_profiles/$1 /etc/apparmor.d/$1
}

set_profile home.vagrant..rbenv.shims.rake

sudo /etc/init.d/apparmor reload

echo ' '

echo "--------------------------"
echo "You're all set... AMERICA!"
echo "--------------------------"
echo ' '
