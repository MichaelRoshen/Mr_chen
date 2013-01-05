class ComeInBillsController < ApplicationController
  # GET /come_in_bills
  # GET /come_in_bills.json
  def index
    @come_in_bills = ComeInBill.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @come_in_bills }
    end
  end

  # GET /come_in_bills/1
  # GET /come_in_bills/1.json
  def show
    @come_in_bill = ComeInBill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @come_in_bill }
    end
  end

  # GET /come_in_bills/new
  # GET /come_in_bills/new.json
  def new
    @come_in_bill = ComeInBill.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @come_in_bill }
    end
  end

  # GET /come_in_bills/1/edit
  def edit
    @come_in_bill = ComeInBill.find(params[:id])
  end

  # POST /come_in_bills
  # POST /come_in_bills.json
  def create
    @come_in_bill = ComeInBill.new(params[:come_in_bill])
    @come_in_bill.come_in_type = ComeInType.find(params[:come_in_type][:id])
    respond_to do |format|
      if @come_in_bill.save
        format.html { redirect_to @come_in_bill, notice: 'Come in bill was successfully created.' }
        format.json { render json: @come_in_bill, status: :created, location: @come_in_bill }
      else
        format.html { render action: "new" }
        format.json { render json: @come_in_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /come_in_bills/1
  # PUT /come_in_bills/1.json
  def update
    @come_in_bill = ComeInBill.find(params[:id])
    @come_in_bill.come_in_type = ComeInType.find(params[:come_in_type][:id])
    respond_to do |format|
      if @come_in_bill.update_attributes(params[:come_in_bill])
        format.html { redirect_to @come_in_bill, notice: 'Come in bill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @come_in_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /come_in_bills/1
  # DELETE /come_in_bills/1.json
  def destroy
    @come_in_bill = ComeInBill.find(params[:id])
    @come_in_bill.destroy

    respond_to do |format|
      format.html { redirect_to come_in_bills_url }
      format.json { head :no_content }
    end
  end
end
