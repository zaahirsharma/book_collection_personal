require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Super Mario: the Book?'
    fill_in 'Author', with: 'James Patterson'
    fill_in 'Price', with: '19.99'
    
    # Selecting from the standard Rails Date Dropdowns
    select '2026', from: 'book_published_date_1i' # Year
    select 'January', from: 'book_published_date_2i' # Month
    select '1', from: 'book_published_date_3i' # Day
    
    click_on 'Create Book'
    visit books_path
    
    expect(page).to have_content('Super Mario: the Book?')
    expect(page).to have_content('James Patterson')
    expect(page).to have_content('19.99')
  end

  scenario 'invalid inputs' do
    visit new_book_path
    fill_in 'Title', with: ''
    click_on 'Create Book'
    expect(page).to have_content("Title can't be blank")
  end

  scenario 'missing author and price' do
    visit new_book_path
    fill_in 'Title', with: 'Valid Title'
    fill_in 'Author', with: '' # Blank Author
    fill_in 'Price', with: ''  # Blank Price
    click_on 'Create Book'
    
    # Verified validations actually show up on screen
    expect(page).to have_content("Author can't be blank")
    expect(page).to have_content("Price can't be blank")
  end
end