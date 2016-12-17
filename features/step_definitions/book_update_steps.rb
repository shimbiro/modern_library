Given(/^l am a saved user$/) do
  @book = FactoryGirl.create(:book)
end

When(/^l visit the update page$/) do
  visit edit_book_path(@book)
end

When(/^write my new details$/) do
  fill_in 'Title', with: "Kiswahili"
  fill_in 'ISBN', with: '45'
  fill_in 'User_id', with: '1'
  fill_in 'Quantity', with: '8'
   
  click_button('Update Changes')
end

Then(/^my details should be updated in the database$/) do
 
end

