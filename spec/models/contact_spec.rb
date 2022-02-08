require 'rails_helper'

describe Contact do
  describe 'validations' do
    context 'when create new contact with blank name' do
      it { should validate_presence_of(:name) }
    end

    context 'when create duplicated contact names for same user' do
      subject { Contact.new(name: 'someone') }
      it { should validate_uniqueness_of(:name).case_insensitive.scoped_to(:user_id).with_message('Only different contacts name allowed for same user') }
    end

    context 'when create new contact inserting birthdate (dd/mm/yyyy or dd-mm-yyyy)' do
      it { is_expected.to allow_value('10/10/1999').for(:birthdate) }
    end

    context 'when create new contact inserting wrong birthdate' do
      subject { Contact.new(name: 'someone', birthdate: '10/10') }
      it 'returns error message for invalid' do
        is_expected.not_to be_valid
        expect(subject.errors.messages).to include(:birthdate_before_type_cast)
      end
    end
  end

  describe 'associations' do
    context 'when create new Contact' do
      it { should belong_to(:user) }
      it { should have_many(:phones) }
    end
  end
end
