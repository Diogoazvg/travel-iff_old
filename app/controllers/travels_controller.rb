class TravelsController < ApplicationController
  before_action :set_travel, only: [:show, :edit, :update, :destroy]

  # GET /travels
  # GET /travels.json
  def index
    @travels = Travel.all.order('created_at DESC').page params[:page]

    if params[:search] != nil
      @travels = Travel.search(params[:search]).page(params[:page])
      if @travels.empty?()
        @travels = Travel.search2(params[:search]).page(params[:page])
        if @travels.empty?()
          @travels = Travel.search3(params[:search]).page(params[:page])
        end  
      end
    else 
      @travels = Travel.all.page(params[:page]).per(15)
    end
  end

  # GET /travels/1
  # GET /travels/1.json
  def show
    respond_to do |format|
        format.html
        format.pdf { render pdf: "travels-list-report",
          header: {center: "RELATÓRIO DE VIAGENS"},
          footer: { center: "[page] of [topage]" }
        }
    end
  end

  # GET /travels/new
  def new
    @travel = Travel.new
  end

  # GET /travels/1/edit
  def edit
  end

  # POST /travels
  # POST /travels.json
  def create
    @travel = Travel.new(travel_params)

    respond_to do |format|
      if @travel.save
        format.html { redirect_to @travel, notice: t('Travel was successfully created.') }
        format.json { render :show, status: :created, location: @travel }
      else
        format.html { render :new }
        format.json { render json: @travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travels/1
  # PATCH/PUT /travels/1.json
  def update
    respond_to do |format|
      if @travel.update(travel_params)
        format.html { redirect_to @travel, notice: t('Travel was successfully updated.') }
        format.json { render :show, status: :ok, location: @travel }
      else
        format.html { render :edit }
        format.json { render json: @travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travels/1
  # DELETE /travels/1.json
  def destroy
    @travel.destroy
    respond_to do |format|
      format.html { redirect_to travels_url, notice: t('Travel was successfully destroyed.') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel
      @travel = Travel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_params
      params.require(:travel).permit(:name, :day, :description)
    end
end
