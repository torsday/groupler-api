class Project < ActiveRecord::Base
  :has_many :bids
  :has_many :companies, :through => :bids
end
