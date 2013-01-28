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
  end

  def create_cost_bill
   @cost_bill = CostBill.new(:money => params[:money], :billdate => params[:date], :remarks => params[:remarks])
   @cost_type = CostType.find(params[:type])
   @cost_bill.cost_type = @cost_type
   @cost_bill.save
   render json: @cost_bill
 end

 def destroy_come_in_bill
   @come_in_bill = ComeInBill.find(params[:cib_id])
   @come_in_bill.destroy
   render json: @come_in_bill
 end

 def edit_come_in_bill
   @come_in_bill = ComeInBill.find(params[:cib_id])
   session[:cil_id] = params[:cib_id]
   render json: @come_in_bill
 end

 def update_come_in_bill
  cil_id = session[:cil_id]
  @come_in_bill = ComeInBill.find(cil_id)
  @come_in_bill.come_in_type = ComeInType.find(params[:come_in_type_id])
  @come_in_bill.update_attributes(:money => params[:money], :billdate => params[:date], :remarks => params[:remarks])
  session[:cil_id] = nil
  render json: @come_in_bill
end

end
