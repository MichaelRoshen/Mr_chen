class PurseController < ApplicationController
  def account
  	@come_in_bill = ComeInBill.new
  	@cost_bill = CostBill.new
  	@come_in_bills = ComeInBill.all
  	@cost_bills = CostBill.all
  end

  def setup_types
  	@cost_type = CostType.new
  	@come_in_type = ComeInType.new
  end

  def create_come_in_bill
    render :text => "hello, render text"
  end
end
