require 'rails_helper'

describe Contact do
  describe 'validations' do
    context 'when create new contact' do
      it { should validate_presence_of(:name) }
      subject { Contact.new(name: 'someone') }
      it { should validate_uniqueness_of(:name).case_insensitive.scoped_to(:user_id).with_message('Only different contacts name allowed for same user') }
    end
  end
  describe 'associations' do
    it { should belong_to(:user) }
  end
end
