Given(/^I am Existing user$/) do
  
end

When(/^I visit login page$/) do
	visit login_path
	fill_in 'Email', with: 'my@email.com'
	fill_in 'Password', with: 'qwerty'
	click_button 'Log in'
  
end

Then(/^user should be logged in$/) do
  
  visit users_path
end

Given(/^I am a logged in user$/) do
  
  visit login_url
    fill_in 'Email', with: 'my@email.com'
	fill_in 'Password', with: 'qwerty'
	click_button 'Log in'
  
end

And(/^user can log out$/) do
 
 visit root_path 
end
