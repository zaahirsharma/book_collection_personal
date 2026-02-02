require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'is valid with all attributes' do
    # This will fail because author, price, and date don't exist yet
    book = Book.new(title: 'Super Mario: the Book?', author: 'James Patterson', price: 19.99, published_date: '2026-01-01')
    expect(book).to be_valid
  end

  it 'is not valid without a title' do
    book = Book.new(title: nil)
    expect(book).not_to be_valid
  end

  it 'is not valid without an author' do
    book = Book.new(author: nil)
    expect(book).not_to be_valid
  end

  it 'is not valid without a price' do
    book = Book.new(price: nil)
    expect(book).not_to be_valid
  end

  it 'is not valid without a published_date' do
    book = Book.new(published_date: nil)
    expect(book).not_to be_valid
  end
end