class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :presence => true
  validates :hourly_rate, length: {within: 40..200}
  validates :store, :presence => true
end
