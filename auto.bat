@ECHO OFF
for /l %%x in (1, 1, 100) do (
    call SET random=%RANDOM%
    echo %%%random%%% >> config.txt
    SET commitMsg=%%%random%%%
    call git add .
    call git commit -m %%commitMsg
    call git push
)