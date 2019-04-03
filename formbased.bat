set projectLocation=C:\Users\msindhuja\eclipse-workspace2\FormBased
cd %projectLocation%
set classpath=%projectLocation%\bin;%projectLocation%\lib\*
java org.testng.TestNG %projectLocation%\testng.xml

@echo off

for /f "delims=" %%a in ('wmic OS Get localdatetime ^| find "."') do set DateTime=%%a

set Yr=%DateTime:~0,4%
set Mon=%DateTime:~4,2%
set Day=%DateTime:~6,2%
set Hr=%DateTime:~8,2%
set Min=%DateTime:~10,2%
set Sec=%DateTime:~12,2%

set BackupName= index__%Yr%-%Mon%-%Day%_(%Hr%-%Min%-%Sec%)

xcopy /e /I "C:\Users\msindhuja\eclipse-workspace2\FormBased\test-output\html\index.html" "C:\Users\msindhuja\eclipse-workspace2\FormBased\test-output\%BackupName%.html"