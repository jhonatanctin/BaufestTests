# BaufestTests
Pre requisites:
Eclipse IDE *Select option for java developers
VM Java 

1- In eclipse create a new type maven project
Make sure to check the options:
Create a simple project
Use deault workspace location

2. In the artifact window fill the next inputs for artifact section
Gruop Id *example: Baufest
Artifact Id *example: karateTests

3. Click on Finish button

Note: Wait to the create project process finish
In package explorer search your project

4. Open pom.xml file and add the next dependencies:
karate-core
karate-apache
karate-junit5
cucumber-reporting
Note: make sure to add before the <dependencies></dependencies> tag.
If see one error in <project> tag please change http to https in the urls 
For last please review that dependencies it was added in Maeven dependencies section from package explorer
Please review the file pom.xml from karate folder

5. Right click on src/test/java and create the next folders:
header
infoUserUI
request

6. On header folder right click and add a new file with the name 'headersAddPet.json'.
Copy the info contains in this GitHub repository karate/src/test/java/header/headersAddPet.json

8.  On request folder right click and add a new file with the name 'requestAddPet.json'.
Copy the info contains in this GitHub repository karate/src/test/java/request/requestAddPet.json

9.  On infoUserUI folder right click and add a new file with the name 'userInfo.json'.
Copy the info contains in this GitHub repository karate/src/test/java/infoUserUI/userInfo.json

10.  On request folder right click and add a new file with the name 'requestPutPet.json'.
Copy the info contains in this GitHub repository karate/src/test/java/request/requestPutPet.json

11. Right click on src/test/java and create the next files: AddANewPet.feature , AddNewUserUI.feature , GetInfoPet.feature , UpdatePet.feature and TestRunner.java . Copy their corresponding info for each file in this GitHub repository src/test/java .
    
12. For run the features, in TestRunner.java with select run as with JUnit Test

Please consider the next points if see some errors:
A. In line 5 in AddNewUserUI.feature  file from src/test/java please select the browser installed in your system and change the port
Example: * configure driver = { type: 'chrome', port:52437 }
B. Please update the values for user and pwd parameters from karate/src/test/java/infoUserUI/userInfo.json file when execute. 



