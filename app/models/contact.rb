class Contact < ApplicationRecord
  belongs_to :user
  has_many :phones
  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :user_id, message: 'Only different contacts name allowed for same user' }
  validates :birthdate_before_type_cast, format: { with: %r/(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}/ }, allow_blank: true
end
