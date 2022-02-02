class Contact < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :birthdate_before_type_cast, format: { with: %r/(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}/ }
end
