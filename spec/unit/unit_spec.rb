# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', Author: 'J.K. Rowling', Price: 50.0, date: '2021-08-06')
  end

# attributes are validated
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

# If it the bookTitle is empty, error is displayed
  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

#  it 'is valid with valid attributes' do
#    expect(subject).to be_valid
#  end

# If author is empty, error is displayed
  it 'is not valid without a name' do
    subject.Author = nil
    expect(subject).not_to be_valid
  end
  
# If Price is empty, error is displayed
  it 'is not valid without a numeric' do
    subject.Price = nil
    expect(subject).not_to be_valid
  end
# If date is empty, error is displayed
  it 'is not valid without a date' do
    subject.date = nil
    expect(subject).not_to be_valid
  end

end
