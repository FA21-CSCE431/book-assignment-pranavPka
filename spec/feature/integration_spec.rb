# location: spec/feature/integration_spec.rb
require 'rails_helper'

# sunny day tests
RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
    visit new_book_path
    save_and_open_page
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 50.0
    select 2021, :from=> "book_date_1i"
    select 'September', :from=> "book_date_2i"
    select 30, :from=> "book_date_3i"
    #fill_in 'date', with: book_date_1i['2021']

    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('J.K. Rowling')
    expect(page).to have_content(50.0)
    expect(page).to have_content('2021-09-30')
  end
end

#rainy day test - Title
RSpec.describe 'Creating a book', type: :feature do
    scenario 'invalid title' do
    visit new_book_path
  #  save_and_open_page
    fill_in 'Title', with: ''
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 50.0
    select 2021, :from=> "book_date_1i"
    select 'September', :from=> "book_date_2i"
    select 30, :from=> "book_date_3i"
    #fill_in 'date', with: book_date_1i['2021']

    click_on 'Create Book'
    visit books_path
    expect(page).to_not have_content('harry potter')
  end
end

#rainy day test - Author
RSpec.describe 'Creating a book', type: :feature do
    scenario 'invalid title' do
    visit new_book_path
  #  save_and_open_page
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: ''
    fill_in 'Price', with: 50.0
    select 2021, :from=> "book_date_1i"
    select 'September', :from=> "book_date_2i"
    select 30, :from=> "book_date_3i"
    #fill_in 'date', with: book_date_1i['2021']

    click_on 'Create Book'
    visit books_path
    expect(page).to_not have_content('J.K. Rowling')
  end
end

#rainy day test - Price
RSpec.describe 'Creating a book', type: :feature do
    scenario 'invalid title' do
    visit new_book_path
  #  save_and_open_page
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: ''
    select 2021, :from=> "book_date_1i"
    select 'September', :from=> "book_date_2i"
    select 30, :from=> "book_date_3i"
    #fill_in 'date', with: book_date_1i['2021']

    click_on 'Create Book'
    visit books_path
    expect(page).to_not have_content(50.0)
  end
end
