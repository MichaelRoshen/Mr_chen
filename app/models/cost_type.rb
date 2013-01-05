class CostType < ActiveRecord::Base
   has_one :cost_bill  
   attr_accessible :name
end
