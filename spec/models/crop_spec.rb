require 'rails_helper'

RSpec.describe Crop, type: :model do
  subject{ Crop.new name: 'this is the name', description: 'this is the description'}
  it 'validates the presence of a name' do
    expect(subject).to be_valid
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
