Given(/^am a registered user$/) do
   @user =FactoryGirl.create(:user)
end

When(/^I visit the show page$/) do
  visit users_path
end

Then(/^Details of the user are displayed$/) do
  
end

Then(/^I should see the users details$/) do
  
end
