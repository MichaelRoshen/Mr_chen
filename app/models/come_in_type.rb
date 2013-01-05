class ComeInType < ActiveRecord::Base
    has_one :come_in_bill 
    attr_accessible :name
end
