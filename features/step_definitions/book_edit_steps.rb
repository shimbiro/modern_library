Given(/^am admin$/) do
    @book = FactoryGirl.create(:book)
end
When(/^I visit th edit_book page$/) do
  visit edit_book_path(@book)
end
When(/^edit the details of the book$/) do
  fill_in 'Title', with: "Kiswahili"
  fill_in 'ISBN', with: '45'
  fill_in 'User_id', with: '1'
  fill_in 'Quantity', with: '8'
   
  click_button('Update Changes')
end

And(/^i should update the database$/) do
 
end

