class PurseController < ApplicationController
  def account
  	@come_in_bill = ComeInBill.new
  	@cost_bill = CostBill.new
  end

  def setup_types
  	@cost_type = CostType.new
  	@come_in_type = ComeInType.new
  end
end
