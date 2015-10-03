class ForwardersController < ApplicationController
  before_action :set_forwarder, only: [:show, :edit, :update, :destroy]

  # GET /fowarders
  # GET /fowarders.json
  def index
    @forwarders = Forwarder.all
  end

  # GET /fowarders/1
  # GET /fowarders/1.json
  def show
  end

  # GET /fowarders/new
  def new
    @forwarder = Forwarder.new
  end

  # GET /fowarders/1/edit
  def edit
  end

  # POST /fowarders
  # POST /fowarders.json
  def create
    @forwarder = Forwarder.new(forwarder_params)

    respond_to do |format|
      if @forwarder.save
        format.html { redirect_to new_forwarder_path, notice: 'Forwarder was successfully created.' }
        format.json { render :show, status: :created, location: @forwarder }
      else
        format.html { render :new }
        format.json { render json: @forwarder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fowarders/1
  # PATCH/PUT /fowarders/1.json
  def update
    respond_to do |format|
      if @forwarder.update(forwarder_params)
        format.html { redirect_to @forwarder, notice: 'Forwarder was successfully updated.' }
        format.json { render :show, status: :ok, location: @forwarder }
      else
        format.html { render :edit }
        format.json { render json: @forwarder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fowarders/1
  # DELETE /fowarders/1.json
  def destroy
    @forwarder.destroy
    respond_to do |format|
      format.html { redirect_to forwarders_url, notice: 'Forwarder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forwarder
      @forwarder = Forwarder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forwarder_params
      params.require(:forwarder).permit(:first_name, :last_name, :address, :alias)
    end
end
