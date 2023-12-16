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
If see error in <project> tag please change http to https in the urls 
For last please review that dependencies it was added in Maeven dependencies section from package explorer


5. Right click on src/test/java and create the next folders:
header
infoUserUI
request

6. On header folder right click and add a new file with the name 'headersAddPet.json'

7.  On request folder right click and add a new file with the name 'requestAddPet.json'
