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
    @come_in_bill = ComeInBill.new(:money => params[:money], :billdate => params[:date], :remarks => params[:remarks])
    @come_in_type = ComeInType.find(params[:type])
    @come_in_bill.come_in_type = @come_in_type
    @come_in_bill.save
    render json: @come_in_bill
    puts @come_in_bill.to_json
  end

  def create_cost_bill
       @cost_bill = CostBill.new(:money => params[:money], :billdate => params[:date], :remarks => params[:remarks])
    @cost_type = CostType.find(params[:type])
    @cost_bill.cost_type = @cost_type
    @cost_bill.save
    render json: @cost_bill
    puts @cost_bill.to_json
  end
end
