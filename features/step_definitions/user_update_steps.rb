Given(/^I am a registered user$/) do
  @user = FactoryGirl.create(:user)
end

Given(/^I visit the update page$/) do
  visit edit_user_path(@user)
end

Given(/^fill in my details$/) do
fill_in('Email', with: 'mymail@gmail.com')
  fill_in('Password', with: 'password')
  click_button('Save Changes')
end

Given(/^I should update details in the database$/) do
  
end
