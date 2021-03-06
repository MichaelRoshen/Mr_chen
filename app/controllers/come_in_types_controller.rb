class ComeInTypesController < ApplicationController
  # GET /come_in_types
  # GET /come_in_types.json
  def index
    @come_in_types = ComeInType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @come_in_types }
    end
  end

  # GET /come_in_types/1
  # GET /come_in_types/1.json
  def show
    @come_in_type = ComeInType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @come_in_type }
    end
  end

  # GET /come_in_types/new
  # GET /come_in_types/new.json
  def new
    @come_in_type = ComeInType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @come_in_type }
    end
  end

  # GET /come_in_types/1/edit
  def edit
    @come_in_type = ComeInType.find(params[:id])
  end

  # POST /come_in_types
  # POST /come_in_types.json
  def create
    @come_in_type = ComeInType.new(params[:come_in_type])

    respond_to do |format|
      if @come_in_type.save
        format.html { redirect_to @come_in_type, notice: 'Come in type was successfully created.' }
        format.json { render json: @come_in_type, status: :created, location: @come_in_type }
      else
        format.html { render action: "new" }
        format.json { render json: @come_in_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /come_in_types/1
  # PUT /come_in_types/1.json
  def update
    @come_in_type = ComeInType.find(params[:id])

    respond_to do |format|
      if @come_in_type.update_attributes(params[:come_in_type])
        format.html { redirect_to @come_in_type, notice: 'Come in type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @come_in_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /come_in_types/1
  # DELETE /come_in_types/1.json
  def destroy
    @come_in_type = ComeInType.find(params[:id])
    @come_in_type.destroy

    respond_to do |format|
      format.html { redirect_to come_in_types_url }
      format.json { head :no_content }
    end
  end
end
