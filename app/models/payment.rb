class Payment < ActiveRecord::Base
  belongs_to :student

  validates :student, :year, :month, :paid_at, presence: true
end
