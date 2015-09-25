class OrderLinesController < ApplicationController
  before_action :set_order_line, only: [:show, :edit, :update, :destroy]

  # GET /order_lines
  # GET /order_lines.json
  def index
    @order_lines = OrderLine.all
  end

  # GET /order_lines/order_me
  def order_me
    @order_lines = OrderLine.all
  end

  def ordered
    OrderLine.where(:id => params[:order_line_ids]).update_all(["ordered_date=?", Date.today])
    redirect_to order_lines_path
    #OrderStatus.where(:order_line_id => params[:order_line_ids]).update_all(...)
    #if only you could access associations from the other end... right? :)
    #Order: has_many :items through: :shipments

    # Order:
    # has_many :shipments
    # has_many :order_items through: :order_line
    # order_number:string
    #
    # OrderLine:
    #     has_one: order_item (bad design?)
    # qty: integer
    #
    # OrderItem:
    #     belongs_to :order
    # belongs_to :shipment
    # sku :string
    #
    # ShippedLine:
    #     has_one: order_item (bad design?)
    # qty: integer
    #
    # Shipment:
    #     has_many :order_items through: :shipped_line
    # shipment_uuid :string
    # shipped_at :timestamp
    # delivered_at :timestamp
  end



  # POST /arrived_in_mia
  def create
    @order_line = OrderLine.new(order_status_params)
    respond_to do |format|
      if @order_line.save
        format.html { redirect_to @order_line, notice: 'order status was successfully created.' }
        format.json { render :show, status: :created, location: @order_line }
      else
        format.html { render :order_me }
        format.json { render json: @order_line.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @order_line.update(order_status_params)
        format.html { redirect_to @order_line, notice: 'order status was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_line }
      else
        format.html { render :edit }
        format.json { render json: @order_line.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_line
      @order_line = OrderLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_status_params
      params.require(:@order_line).permit(:ordered_date, :arrived_mia, :arrived_sme, :picked_up, :orders_id)
    end
end
