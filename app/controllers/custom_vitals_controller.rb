class CustomVitalsController < ApplicationController
  before_action :set_custom_vital, only: [:show, :edit, :update, :destroy]

  # GET /custom_vitals
  # GET /custom_vitals.json
  def index
    @custom_vitals = CustomVital.where(:user_id=>current_user.id).all
  end

  # GET /custom_vitals/1
  # GET /custom_vitals/1.json
  def show
  end

  # GET /custom_vitals/new
  def new
    @custom_vital = CustomVital.new
  end

  # GET /custom_vitals/1/edit
  def edit
  end

  # POST /custom_vitals
  # POST /custom_vitals.json
  def create
    @custom_vital = CustomVital.new(custom_vital_params)

    respond_to do |format|
      if @custom_vital.save
        format.html { redirect_to @custom_vital, notice: 'Custom vital was successfully created.' }
        format.json { render :show, status: :created, location: @custom_vital }
      else
        format.html { render :new }
        format.json { render json: @custom_vital.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_vitals/1
  # PATCH/PUT /custom_vitals/1.json
  def update
    respond_to do |format|
      if @custom_vital.update(custom_vital_params)
        format.html { redirect_to @custom_vital, notice: 'Custom vital was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_vital }
      else
        format.html { render :edit }
        format.json { render json: @custom_vital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_vitals/1
  # DELETE /custom_vitals/1.json
  def destroy
    @custom_vital.destroy
    respond_to do |format|
      format.html { redirect_to custom_vitals_url, notice: 'Custom vital was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_vital
      @custom_vital = CustomVital.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_vital_params
      params.require(:custom_vital).permit(:name, :value, :user_id,:date)
    end
end
