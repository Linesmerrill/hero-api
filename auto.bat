@ECHO OFF
setlocal EnableDelayedExpansion
for /l %%x in (1, 1, 100) do (
    call SET random=!%RANDOM%%x%!
    echo %random% >> config.txt
    call SET commitMsg=%random% + "-new edits"
    call git add .
    call git commit -m %%commitMsg
    call git push
)