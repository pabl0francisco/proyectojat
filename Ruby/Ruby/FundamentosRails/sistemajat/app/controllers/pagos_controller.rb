class PagosController < ApplicationController
  before_action :set_pago, only: %i[ show edit update destroy ]

  # GET /pagos or /pagos.json
  def index
    @pagos = Pago.all
  end

  # GET /pagos/1 or /pagos/1.json
  def show
  end

  # GET /pagos/new
  def new
    @pago = Pago.new
  end

  # GET /pagos/1/edit
  def edit
  end

  # POST /pagos or /pagos.json
  def create
    @pago = Pago.new(pago_params)

    respond_to do |format|
      if @pago.save
        format.html { redirect_to @pago, notice: "Pago was successfully created." }
        format.json { render :show, status: :created, location: @pago }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pagos/1 or /pagos/1.json
  def update
    respond_to do |format|
      if @pago.update(pago_params)
        format.html { redirect_to @pago, notice: "Pago was successfully updated." }
        format.json { render :show, status: :ok, location: @pago }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagos/1 or /pagos/1.json
  def destroy
    @pago.destroy
    respond_to do |format|
      format.html { redirect_to pagos_url, notice: "Pago was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pago
      @pago = Pago.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pago_params
      params.require(:pago).permit(:monto, :numero_transferencia, :efectivo)
    end
end
