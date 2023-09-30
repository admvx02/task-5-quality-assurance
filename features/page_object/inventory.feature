Feature: Adjust product quantity in Penyesuaian Persediaan page

@update-inventory @finaltask-qa-jubelio-muhammad_adam_romadhon

Scenario: User able to update product quantity in Persediaan page
  Given User visit "https://app.jubelio.com/login"
  And User fill email in login credential
  And User fill password in login credential
  And User click login button
  And User visit "https://app.jubelio.com/home/inventory" page to setting inventory
  And User fill "123" in search field Persediaan page
  And User click on checkbox
  And User click on Penyesuaian Persediaan button
  And User click on +- column
  When User update inventory quantity to "10"
  And User click on Simpan button
  Then User success to update inventory quantity
