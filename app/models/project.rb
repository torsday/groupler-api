class Project < ActiveRecord::Base
  has_many :bids
  has_many :companies, :through => :bids
  belongs_to :progression_category
end
