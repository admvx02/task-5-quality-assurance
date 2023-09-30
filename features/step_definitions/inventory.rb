Given("User visit {string} page to setting inventory") do |url|
  visit url
  expect(page).to have_selector("[placeholder='Nama, SKU, Merek Lain']")
  find_button('Import Stock', wait: 5) 
end

When("User fill {string} in search field Persediaan page") do |keyword|
  fill_in "[placeholder='Nama, SKU, Merek Lain']", with: keyword 
  find(:xpath, "//span[@class='glyphicon glyphicon-search']", visible: true).click
end

And("User click on checkbox") do
  find(:xpath, "//label[@for='checkbox0']").click
end

And("User click on Penyesuaian Persediaan button") do
  click_button('Penyesuaian Persediaan') 
  expect(page).to have_content('Qty Akhir', wait: 10, visible: true)

And("User click on +- column") do
  element = find(:xpath, "//*[@id='page-wrapper']//div[@class='your-xpath-here']")
  element.double_click 
end

And("User update inventory quantity to {string}") do |quantity|
  element = find(:xpath, "//*[@id='page-top']/div[6]/div/input")
  element.set(quantity) 
  find(:xpath, "//*[@id='page-wrapper']//span[contains(text(), 'Your text here')]") 
  sleep 5
end

And("User click on Simpan button") do
  find_button('Simpan').click 
end

And("User successfully updates inventory quantity") do
  expect(page).to have_content('Data berhasil disimpan.', wait: 10) 
end
