class Job < ActiveRecord::Base
  belongs_to :company
  validates :title, :description, :category, :location, presence: true
end
