class FreightBillsController < ApplicationController
  before_action :set_freight_bill, only: [:show, :edit, :update, :destroy]

  # GET /freight_bills
  # GET /freight_bills.json
  def index
    @freight_bills = FreightBill.all
  end

  # GET /freight_bills/1
  # GET /freight_bills/1.json
  def show
  end

  # GET /freight_bills/new
  def new
    @freight_bill = FreightBill.new
  end

  # GET /freight_bills/1/edit
  def edit
  end

  # POST /freight_bills
  # POST /freight_bills.json
  def create
    @freight_bill = FreightBill.new(freight_bill_params)

    respond_to do |format|
      if @freight_bill.save
        format.html { redirect_to @freight_bill, notice: 'Freight bill was successfully created.' }
        format.json { render :show, status: :created, location: @freight_bill }
      else
        format.html { render :new }
        format.json { render json: @freight_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /freight_bills/1
  # PATCH/PUT /freight_bills/1.json
  def update
    respond_to do |format|
      if @freight_bill.update(freight_bill_params)
        format.html { redirect_to @freight_bill, notice: 'Freight bill was successfully updated.' }
        format.json { render :show, status: :ok, location: @freight_bill }
      else
        format.html { render :edit }
        format.json { render json: @freight_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /freight_bills/1
  # DELETE /freight_bills/1.json
  def destroy
    @freight_bill.destroy
    respond_to do |format|
      format.html { redirect_to freight_bills_url, notice: 'Freight bill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freight_bill
      @freight_bill = FreightBill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def freight_bill_params
      params.require(:freight_bill).permit(:invoice_number, :shipper_id, :date, :total_weight_in_lbs, :total_volume_in_cft, :cost)
    end
end
