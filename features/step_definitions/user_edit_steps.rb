
Given(/^am registered user$/) do
  user = FactoryGirl.create(:user)
end

When(/^I visit edit page$/) do
visit edit_path(User)
end

And(/^edit the details of the user$/) do
  get '/edit', id: @user
end

And(/^i should update the details$/) do
  
end
