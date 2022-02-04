require 'rails_helper'

describe User do
  describe 'validations' do
    context 'when create new user' do
      it { should validate_presence_of(:name) }
      subject { User.new(name: 'someone') }
      it { should validate_uniqueness_of(:name).case_insensitive }
    end
  end
  describe 'associations' do
    it { should have_many(:contacts) }
  end
end
