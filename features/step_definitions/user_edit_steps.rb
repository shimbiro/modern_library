
Given(/^am registered user$/) do
  user = FactoryGirl.create(:user)
end

When(/^I visit edit page$/) do
visit edit_path(User)
end

And(/^edit the details of the user$/) do
  fill_in('Email', with: 'mymail@gmail.com')
  fill_in('Password', with: 'password')
  click_button('Save Changes')
end

And(/^i should update the details$/) do
  
end
