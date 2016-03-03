class UndergraduateAdvisementsController < ApplicationController
  before_action :set_undergraduate_advisement, only: [:show, :edit, :update, :destroy]

  # GET /undergraduate_advisements
  # GET /undergraduate_advisements.json
  def index
    @undergraduate_advisements = UndergraduateAdvisement.all
  end

  # GET /undergraduate_advisements/1
  # GET /undergraduate_advisements/1.json
  def show
  end

  # GET /undergraduate_advisements/new
  def new
    @undergraduate_advisement = UndergraduateAdvisement.new
  end

  # GET /undergraduate_advisements/1/edit
  def edit
  end

  # POST /undergraduate_advisements
  # POST /undergraduate_advisements.json
  def create
    @undergraduate_advisement = UndergraduateAdvisement.new(undergraduate_advisement_params)

    respond_to do |format|
      if @undergraduate_advisement.save
        format.html { redirect_to @undergraduate_advisement, notice: 'Undergraduate advisement was successfully created.' }
        format.json { render :show, status: :created, location: @undergraduate_advisement }
      else
        format.html { render :new }
        format.json { render json: @undergraduate_advisement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /undergraduate_advisements/1
  # PATCH/PUT /undergraduate_advisements/1.json
  def update
    respond_to do |format|
      if @undergraduate_advisement.update(undergraduate_advisement_params)
        format.html { redirect_to @undergraduate_advisement, notice: 'Undergraduate advisement was successfully updated.' }
        format.json { render :show, status: :ok, location: @undergraduate_advisement }
      else
        format.html { render :edit }
        format.json { render json: @undergraduate_advisement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /undergraduate_advisements/1
  # DELETE /undergraduate_advisements/1.json
  def destroy
    @undergraduate_advisement.destroy
    respond_to do |format|
      format.html { redirect_to undergraduate_advisements_url, notice: 'Undergraduate advisement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_undergraduate_advisement
      @undergraduate_advisement = UndergraduateAdvisement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def undergraduate_advisement_params
      params.require(:undergraduate_advisement).permit(:section_content)
    end
end
