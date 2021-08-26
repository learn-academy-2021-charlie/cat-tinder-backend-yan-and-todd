require 'rails_helper'

RSpec.describe Cat, type: :model do
  it 'should have a name' do
    cat = Cat.create(age: 2, enjoys: 'Cuddles and belly rubs')
    expect(cat.errors[:name]).to_not be_empty
  end

  it 'should have a age' do
    cat = Cat.create(name: 'Todd', enjoys: 'Cuddles and belly rubs')
    expect(cat.errors[:age]).to_not be_empty
  end

  it 'should have a enjoys' do
    cat = Cat.create(age: 2, name: 'Todd')
    expect(cat.errors[:enjoys]).to_not be_empty
  end
end