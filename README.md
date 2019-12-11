# sourcecode
#first learn the full flow of the git and 
read "git-scm" book and then practice the commands

########## Installing the Ngnix in Ubuntu############Ubuntu
####Install the prerequisites:

sudo apt install curl gnupg2 ca-certificates lsb-release
###To set up the apt repository for stable nginx packages, run the following command:

echo "deb http://nginx.org/packages/ubuntu `lsb_release -cs` nginx" \
    | sudo tee /etc/apt/sources.list.d/nginx.list
###If you would like to use mainline nginx packages, run the following command instead:

echo "deb http://nginx.org/packages/mainline/ubuntu `lsb_release -cs` nginx" \
    | sudo tee /etc/apt/sources.list.d/nginx.list
###Next, import an official nginx signing key so apt could verify the packages authenticity:

curl -fsSL https://nginx.org/keys/nginx_signing.key | sudo apt-key add -
###Verify that you now have the proper key:

sudo apt-key fingerprint ABF5BD827BD9BF62
###The output should contain the full fingerprint 573B FD6B 3D8F BC64 1079 A6AB ABF5 BD82 7BD9 BF62 as follows:

pub   rsa2048 2011-08-19 [SC] [expires: 2024-06-14]
      573B FD6B 3D8F BC64 1079  A6AB ABF5 BD82 7BD9 BF62
uid   [ unknown] nginx signing key <signing-key@nginx.com>
To install nginx, run the following commands:

sudo apt update
sudo apt install nginx
