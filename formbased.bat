set projectLocation=C:\Users\msindhuja\eclipse-workspace2\FormBased
cd %projectLocation%
set classpath=%projectLocation%\bin;%projectLocation%\lib\*
java org.testng.TestNG %projectLocation%\testng.xml