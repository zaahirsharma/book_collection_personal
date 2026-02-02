require 'rails_helper'

RSpec.describe 'Seed Data Check', type: :model do
  # Forces RSpec to load seeds before running test
  before do
    Rails.application.load_seed
  end

  it 'contains the books loaded from the seed file' do
    # After re-seeding, it should pass
    expect(Book.count).to be >= 5
    
    # Check specific book title (matches seeds.rb)
    expect(Book.find_by(title: "The Great Gatsby")).not_to be_nil
  end
end