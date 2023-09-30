Given("User visit {string}") do |url|
  visit url
  expect(page).to have_content('Login')
  sleep 3
end

When("User fill email in login credential") do
  fill_in 'email', with: 'qa.rakamin.jubelio@gmail.com'
end

And("User fill password in login credential") do
  fill_in 'password', with: 'Jubelio123!'
end

And('User click login button') do
  click_button 'Submit'
  sleep 10
end

Then('User redirect to Jubelio dashboard') do
  expect(page).to have_content('Selamat Datang', wait: 10)
  find(:xpath, '//*[@class="metismenu nav"]', visible: true) 
  find(:xpath, '//*[@class="user-name dropdown"]') 
end

And(/^User should see title "([^"]*)" text$/) do |title|
  expect(page).to have_content(title) 
end

Then('User logs out') do
  click_link 'Logout'
  sleep 5
  expect(page).to have_content('Login', wait: 10)
end

When("User fill email in login credential with invalid email") do
  fill_in 'email', with: 'invalidemail'
end

Then('User should see error message {string}') do |error_message|
  expect(page).to have_content(error_message)
end
