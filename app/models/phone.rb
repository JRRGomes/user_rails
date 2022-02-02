class Phone < ApplicationRecord
  validates :number, presence: true, uniqueness: true
  validates :kind, presence: true
  validates :primary, presence: true, uniqueness: true
end
