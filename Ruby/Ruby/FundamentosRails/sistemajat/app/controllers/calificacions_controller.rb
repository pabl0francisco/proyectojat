class CalificacionsController < ApplicationController
  before_action :set_calificacion, only: %i[ show edit update destroy ]

  # GET /calificacions or /calificacions.json
  def index
    @calificacions = Calificacion.all
  end

  # GET /calificacions/1 or /calificacions/1.json
  def show
  end

  # GET /calificacions/new
  def new
    @calificacion = Calificacion.new
  end

  # GET /calificacions/1/edit
  def edit
  end

  # POST /calificacions or /calificacions.json
  def create
    @calificacion = Calificacion.new(calificacion_params)

    respond_to do |format|
      if @calificacion.save
        format.html { redirect_to @calificacion, notice: "Calificacion was successfully created." }
        format.json { render :show, status: :created, location: @calificacion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @calificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calificacions/1 or /calificacions/1.json
  def update
    respond_to do |format|
      if @calificacion.update(calificacion_params)
        format.html { redirect_to @calificacion, notice: "Calificacion was successfully updated." }
        format.json { render :show, status: :ok, location: @calificacion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @calificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calificacions/1 or /calificacions/1.json
  def destroy
    @calificacion.destroy
    respond_to do |format|
      format.html { redirect_to calificacions_url, notice: "Calificacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calificacion
      @calificacion = Calificacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calificacion_params
      params.require(:calificacion).permit(:valor, :comentario)
    end
end
