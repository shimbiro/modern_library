Given(/^am Admin$/) do
    
end

When(/^I visit books  page$/) do
    visit books_path
end

And(/^fill in the details of the book$/) do
fill_in 'Title', with: 'kiswahili'
fill_in 'ISBN', with: '45'
fill_in 'User_id', with:'1'
fill_in 'Quantity', with: '8'
end

Then(/^I should add the book to database$/) do
    Book.create(title: "kiswahili")
end

