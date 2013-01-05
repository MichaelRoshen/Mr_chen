class CostBillsController < ApplicationController
  # GET /cost_bills
  # GET /cost_bills.json
  def index
    @cost_bills = CostBill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cost_bills }
    end
  end

  # GET /cost_bills/1
  # GET /cost_bills/1.json
  def show
    @cost_bill = CostBill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cost_bill }
    end
  end

  # GET /cost_bills/new
  # GET /cost_bills/new.json
  def new
    @cost_bill = CostBill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cost_bill }
    end
  end

  # GET /cost_bills/1/edit
  def edit
    @cost_bill = CostBill.find(params[:id])
  end

  # POST /cost_bills
  # POST /cost_bills.json
  def create
    @cost_bill = CostBill.new(params[:cost_bill])
    @cost_bill.cost_type = CostType.find(params[:cost_type][:id])
    respond_to do |format|
      if @cost_bill.save
        format.html { redirect_to @cost_bill, notice: 'Cost bill was successfully created.' }
        format.json { render json: @cost_bill, status: :created, location: @cost_bill }
      else
        format.html { render action: "new" }
        format.json { render json: @cost_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cost_bills/1
  # PUT /cost_bills/1.json
  def update
    @cost_bill = CostBill.find(params[:id])
    @cost_bill.cost_type = CostType.find(params[:cost_type][:id])
    respond_to do |format|
      if @cost_bill.update_attributes(params[:cost_bill])
        format.html { redirect_to @cost_bill, notice: 'Cost bill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cost_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cost_bills/1
  # DELETE /cost_bills/1.json
  def destroy
    @cost_bill = CostBill.find(params[:id])
    @cost_bill.destroy

    respond_to do |format|
      format.html { redirect_to cost_bills_url }
      format.json { head :no_content }
    end
  end
end
