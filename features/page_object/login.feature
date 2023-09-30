Feature: Login Page with valid credentials

@login @finaltask-qa-jubelio-muhammad_adam_romadhon

Scenario: User success Login with correct credential in Jubelio page
  Given User visit "https://app.jubelio.com/login"
  When User fill email in login credential
  And User fill password in login credential
  And User click login button
  Then User redirect to Jubelio dashboard
  And User should see title "3 Langkah mudah untuk memulai..." text
