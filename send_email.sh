#!/bin/bash
# yes this opens up my email address to spam, normally I would care but the email address is a right off anyway.
recipients="rjjarvis@asu.edu"
subject="...Subject...: 12:00 Noon daily Australian Eastern Standard Time Daily Email test"
cat $HOME/email_message | mail -s $subject $recipients
