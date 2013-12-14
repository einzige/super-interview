class Job < ActiveRecord::Base
  validates :started_on, presence: true
end
