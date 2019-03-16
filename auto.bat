@ECHO OFF &setlocal
for /l %%x in (1, 1, 100) do (
    SET random=%RANDOM%
    echo %random% >> config.txt
    SET commitMsg=%random% + "-new edits"
    call git add .
    call git commit -m echo %commitMsg%
    call git push
)