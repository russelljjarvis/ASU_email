If on Ubuntu:
```
sudo apt-get install mailutils
```
Test:
```
echo Message Body | mail -s Message Subject rjjarvis@asu.edu
```
send email is contained in this directory. Make sure it is executable.
```
chmod +x $HOME/scripts/send_email.sh
```
Schedule:
```
0 0 * * 1,3,5 $HOME/scripts/send_email.sh >> $HOME/tmp/out 2>&1
```