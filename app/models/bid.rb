class Bid < ActiveRecord::Base
  belongs_to :project
  belongs_to :company
end
