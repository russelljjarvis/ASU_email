#!/bin/bash
recipients="rjjarvis@asu.edu"
subject="...Subject...: 12:00 Noon daily Australian Eastern Standard Time Daily Email test"
cat $HOME/email_message | mail -s $subject $recipients