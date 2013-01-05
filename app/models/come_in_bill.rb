class ComeInBill < ActiveRecord::Base
  belongs_to :come_in_type
  attr_accessible :billdate, :money, :remarks
end
