class Meet < ApplicationRecord
  belongs_to :user
  validates :date, :reason, presence:true
end
