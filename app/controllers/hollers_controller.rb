class HollersController < ApplicationController
  before_action :set_holler, only: %i[ show edit update destroy ]

  # GET /hollers or /hollers.json
  def index
    @hollers = Holler.all
  end

  # GET /hollers/1 or /hollers/1.json
  def show
  end

  # GET /hollers/new
  def new
    @holler = Holler.new
  end

  # GET /hollers/1/edit
  def edit
  end

  # POST /hollers or /hollers.json
  def create
    @holler = Holler.new(holler_params)

    respond_to do |format|
      if @holler.save
        format.html { redirect_to holler_url(@holler), notice: "Holler was successfully created." }
        format.json { render :show, status: :created, location: @holler }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @holler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hollers/1 or /hollers/1.json
  def update
    respond_to do |format|
      if @holler.update(holler_params)
        format.html { redirect_to holler_url(@holler), notice: "Holler was successfully updated." }
        format.json { render :show, status: :ok, location: @holler }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @holler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hollers/1 or /hollers/1.json
  def destroy
    @holler.destroy

    respond_to do |format|
      format.html { redirect_to hollers_url, notice: "Holler was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_holler
      @holler = Holler.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def holler_params
      params.require(:holler).permit(:title, :subtitle, :message)
    end
end
