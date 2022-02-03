class Phone < ApplicationRecord
  belongs_to :contact
  validates :number, presence: true, uniqueness: true
  validates :kind, presence: true
  validates :primary, presence: true
end
