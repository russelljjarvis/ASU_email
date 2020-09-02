
# Installation
Confirm tools exhist, and if not install.

Scripts for debugging asu email. 
**1** check if mail is installed on your system. 
try to launch with command `mail` or `mailx` on OSX. If its not installed:

If on Ubuntu:
```
sudo apt-get install mailutils
```
On OSX
```
brew install mailx
```
# Test:
```
echo Message Body | mail -s Message Subject rjjarvis@asu.edu
```
send email is contained in this directory. Make sure it is executable.
```
chmod +x $HOME/scripts/send_email.sh
```
# Schedule:
```
0 0 * * 1,3,5 $HOME/scripts/send_email.sh >> $HOME/tmp/out 2>&1
```
