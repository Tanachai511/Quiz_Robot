*** Settings ***
Documentation  Quiz Robotframework
Library  SeleniumLibrary
Suite Setup  Open Browser  https://automationexercise.com/  chrome
Suite Teardown  Close Browser

*** Variables ***
${Blue_Top}  Blue Top
${Email}  example103@email.com
${Password}  103

*** Keywords ***
Click Product 
  Click Element  //*[@id="header"]/div/div/div/div[2]/div/ul/li[2]

Input Product Name
  [Arguments]  ${Blue_Top}
   Input Text  //*[@id="search_product"]  ${Blue_Top}  

Click Search Button
  Click Button  //*[@id="submit_search"]  

Click Add to Cart
  Click Element  //*[@data-product-id="1"]

Click View Cart
  Click Element  //*[@id="header"]/div/div/div/div[2]/div/ul/li[3]/a

Click Signup/Login
  Click Link  //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a

Input Email
  [Arguments]  ${Email} 
  Input Text  //*[@data-qa="login-email"]  ${Email} 

Input Password
  [Arguments]  ${Password}
  Input Text  //*[@data-qa="login-password"]  ${Password}

Click Login Button
  Click Button  //*[@data-qa="login-button"]

*** Test Cases ***
Test Case 20: Search Products and Verify Cart After Login
  Click Product
  Input Product Name  ${Blue_Top}
  Click Search Button
  Click Add to Cart
  Click View Cart
  Click Signup/Login
  Input Email  ${Email}
  Input Password  ${Password}
  Click Login Button
  Click View Cart