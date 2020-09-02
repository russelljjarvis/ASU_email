# Overview:
Script(s) for debugging asu email. 

## TODO:
create a "round-trip test". This requires:
* local unix based email server needs to be able to receive email.
* myasu email needs a forwarding rule setup, to auto-forward email pertaining to crontab test-mails.
* crontab sends email, this triggers a timer to start a stop watch to time measure elapsed time until local unix mail client receives the mail from myASU (completing the round trip).
* Mean and std dev of round trip mail latencies can be computed. Annomolies can then be investigated at the email header level of resolution.

## Installation
Confirm tools exhist, and if not install.

* Check if mail is installed on your system. 
try to launch with command `mail` or `mailx` on OSX. If its not installed:

If on Ubuntu:
```
sudo apt-get install mailutils
```
On OSX
```
brew install mailx
```
## Test:
```
echo Message Body | mail -s Message Subject rjjarvis@asu.edu
```
send email is contained in this directory. Make sure it is executable.
```
chmod +x $HOME/scripts/send_email.sh
```
## Schedule:
```
0 0 * * 1,3,5 $HOME/scripts/send_email.sh >> $HOME/tmp/out 2>&1
```
