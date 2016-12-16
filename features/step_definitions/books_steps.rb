Given(/^am Admin$/) do
    @book = FactoryGirl.create(:book)
end

When(/^I visit books  page$/) do
    visit book_path(@book)
end

And(/^fill in the details of the book$/) do
fill_in 'Title', with: 'Kiswahili'
fill_in 'ISBN', with: '45'
fill_in 'User_id', with:'1'
fill_in 'Quantity', with: '8'
click_button "Add Book"
end
Then(/^I should add the book to database$/) do
    expect(page).to have_content("Book has been added")
end

