class Phone < ApplicationRecord
  belongs_to :contact
  validates :number, presence: true, uniqueness: { scope: :contact_id }
  validates :kind, presence: true
  validates :primary, :inclusion => { :in => [true, false] }
  validates :primary, uniqueness: { scope: :contact_id }, if: :primary

  before_save :disable_previous_primary, if: :primary

  def check_if_primary_true
    phones = Phone.all
    phones.each do |phone|
      if phone['primary'] == true
        phone.update_attribute(:primary, false)
      end
    end
  end
end
