class Project < ActiveRecord::Base
  has_many :bids
  has_many :companies, :through => :bids
  has_and_belongs_to_many :users
  belongs_to :progression_category
end
