require 'rails_helper'

describe Phone do
  describe 'validations' do
    context 'when create new phone with blank number value' do
      it { should validate_presence_of(:number) }
    end
    context 'when create duplicated number for same contact' do
      subject { Phone.create(number: '123', kind: 'something', primary: false) }
      it { should validate_uniqueness_of(:number).scoped_to(:contact_id) }
    end
    context 'when create new phone with blank kind value' do
      it { should validate_presence_of(:kind) }
    end
    context 'when create new phone with blank primary value' do
      it { should validate_presence_of(:primary) }
    end
  end
  describe 'associations' do
    context 'when create new Phone' do
      it { should belong_to(:contact) }
    end
  end
end
