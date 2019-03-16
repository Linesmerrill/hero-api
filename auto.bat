@ECHO OFF
for /l %%x in (1, 1, 100) do (
    SET random=%RANDOM% + %x
    echo %random% >> config.txt
    SET commitMsg=%random% + "-new edits"
    call git add .
    call git commit -m %%commitMsg
    call git push
)