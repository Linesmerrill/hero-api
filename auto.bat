
setlocal EnableDelayedExpansion
for /l %%x in (1, 1, 100) do (
    SET random=%RANDOM%
    SET randomString=%x%
    SET newvar=!%random%%randomString%!
    echo %newvar% >> config.txt
    SET commitMsg=!%newvar%!
    call git add .
    call git commit -m %%commitMsg
    call git push
)