@ECHO OFF
SET random=%RANDOM%
echo random >> config.txt
SET commitMsg=random + "-new edits"
call git add .
call git commit -m commitMsg
call git push