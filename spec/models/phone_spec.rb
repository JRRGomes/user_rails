require 'rails_helper'

describe Phone do
  describe 'validations' do
    context 'when create new phone with blank number' do
      it { should validate_presence_of(:number) }
    end
    #context 'when create duplicated numbers for same contact' do
     # subject { Phone.new(number: '123', kind: 'something') }
     # it { should validate_uniqueness_of(:number).scoped_to(:contact_id) }
    #end
  end
end
