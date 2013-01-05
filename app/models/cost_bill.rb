class CostBill < ActiveRecord::Base
  belongs_to :cost_type
  attr_accessible :billdate, :money, :remarks
end
