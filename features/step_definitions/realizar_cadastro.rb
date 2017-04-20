

Dado(/^que eu acesse o site demoqa\.com$/) do
  visit ('http://demoqa.com')
end

Dado(/^clique no botão Registration$/) do
  click_link 'Registration' 
end

Dado(/^preencha todos os campos obrigatorios$/) do
  @name = Faker::Name.first_name
  @lastname = Faker::Name.last_name
  @email = Faker::Internet.email
  @username = Faker::Internet.user_name
  @password = Faker::Internet.password
  
  fill_in 'first_name', :with => @name
  fill_in 'last_name', :with => @lastname
  find(:xpath, '//*[@id="pie_register"]/li[2]/div/div/input[2]').click
  find(:xpath, '//*[@id="pie_register"]/li[3]/div/div/input[2]').click
  select 'Brazil', from: 'dropdown_7'
  select '5', from: 'mm_date_8'
  select '31', from: 'dd_date_8'
  select '1990', from: 'yy_date_8'
  fill_in 'phone_9', :with => "9123456078"
  fill_in 'username', :with => @username
  fill_in 'e_mail', :with => @email
  fill_in 'password', :with => @password
  fill_in 'confirm_password_password_2', :with => @password

end


Quando(/^clicar no botão Submit$/) do
  
  find('input[name="pie_submit"]').click
	#find(:xpath, '//*[@id="pie_register"]/li[14]/div/input').click
end

Então(/^o cadastro deve ser realizado com sucesso$/) do
	expect(page).to have_content 'Thank you for your registration'
end