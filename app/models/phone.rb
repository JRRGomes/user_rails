class Phone < ApplicationRecord
  belongs_to :contact
  validates :number, presence: true, uniqueness: { scope: :contact_id }
  validates :kind, presence: true
  validates :primary, :inclusion => { :in => [true, false] }
  validates :primary, uniqueness: { scope: :contact_id }, if: :primary

  before_validation :check_if_primary_true

  def check_if_primary_true
    return unless primary

    phone_list = Phone.all
    phone_list.each do |bool|
      if bool['primary'] == true
        bool.update_attribute(:primary, false)
      end
    end
  end
end
