
Given(/^am registered user$/) do
  get '/edit'
end

When(/^I visit edit page$/) do
  user = FactoryGirl.create(:user)
end

And(/^edit the details of the user$/) do
  get '/edit', id: @user
end

And(/^i should update the details$/) do
  
end
