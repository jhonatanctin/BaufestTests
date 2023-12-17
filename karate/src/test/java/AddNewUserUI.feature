Feature: Test cases UI

  Background: 
    * configure ssl = true
    * configure driver = { type: 'chrome', port:52437 }
    * def infoUser = read("classpath:infoUserUI/userInfo.json")

  Scenario: Create new user
    Given driver 'https://www.demoblaze.com/index.html'
    And waitFor('{a}Sign up').click()
    * delay(3000)
    And input('#sign-username',infoUser.user)
    And input('#sign-password',infoUser.pwd)
    When click('#signInModal > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > button:nth-child(2)')
    * delay(5000)
    * match driver.dialogText == 'Sign up successful.'
    And dialog(true)

  Scenario: Login and Log out with register user
    Given driver 'https://www.demoblaze.com/index.html'
    And waitFor('{a}Log in').click()
    * delay(3000)
    And input('#loginusername',infoUser.user)
    And input('#loginpassword',infoUser.pwd)
    When click('#logInModal > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > button:nth-child(2)')
    * delay(3000)
    * def linkUserExists = waitFor('#nameofuser')
    * if (!linkUserExists) karate.fail('link with User name does not exists')
    And waitFor('{a}Log out').click()
    * delay(3000)
    And waitFor('{a}Log in')

  Scenario: Add laptop to the cart
    Given driver 'https://www.demoblaze.com/index.html'
    And driver.maximize()
    And waitFor('{a}Log in').click()
    * delay(3000)
    And input('#loginusername',infoUser.user)
    And input('#loginpassword',infoUser.pwd)
    When click('#logInModal > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > button:nth-child(2)')
    * delay(3000)
    * def linkUserExists = waitFor('#nameofuser')
    * if (!linkUserExists) karate.fail('link with User name does not exists')
    And waitFor('{a}Laptops').click()
    * def texItem = text('{a}Sony vaio i5')
    And waitFor('{a}Sony vaio i5').click()
    And waitFor('{a}Add to cart').click()
    * delay(5000)
    * match driver.dialogText == 'Product added.'
    And dialog(true)
    And waitFor('{a}Cart').click()
    * delay(5000)
    And waitFor('.success > td:nth-child(2)')
    * def textItemCart = text('.success > td:nth-child(2)')
    * match textItemCart == texItem
    And waitFor('{a}Delete').click()
    * delay(3000)
    And waitFor('{a}Log out').click()
