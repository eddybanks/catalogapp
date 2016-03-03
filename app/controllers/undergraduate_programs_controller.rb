class UndergraduateProgramsController < ApplicationController
  before_action :set_undergraduate_program, only: [:show, :edit, :update, :destroy]

  # GET /undergraduate_programs
  # GET /undergraduate_programs.json
  def index
    @undergraduate_programs = UndergraduateProgram.all
  end

  # GET /undergraduate_programs/1
  # GET /undergraduate_programs/1.json
  def show
  end

  # GET /undergraduate_programs/new
  def new
    @undergraduate_program = UndergraduateProgram.new
  end

  # GET /undergraduate_programs/1/edit
  def edit
  end

  # POST /undergraduate_programs
  # POST /undergraduate_programs.json
  def create
    @undergraduate_program = UndergraduateProgram.new(undergraduate_program_params)

    respond_to do |format|
      if @undergraduate_program.save
        format.html { redirect_to @undergraduate_program, notice: 'Undergraduate program was successfully created.' }
        format.json { render :show, status: :created, location: @undergraduate_program }
      else
        format.html { render :new }
        format.json { render json: @undergraduate_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /undergraduate_programs/1
  # PATCH/PUT /undergraduate_programs/1.json
  def update
    respond_to do |format|
      if @undergraduate_program.update(undergraduate_program_params)
        format.html { redirect_to @undergraduate_program, notice: 'Undergraduate program was successfully updated.' }
        format.json { render :show, status: :ok, location: @undergraduate_program }
      else
        format.html { render :edit }
        format.json { render json: @undergraduate_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /undergraduate_programs/1
  # DELETE /undergraduate_programs/1.json
  def destroy
    @undergraduate_program.destroy
    respond_to do |format|
      format.html { redirect_to undergraduate_programs_url, notice: 'Undergraduate program was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_undergraduate_program
      @undergraduate_program = UndergraduateProgram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def undergraduate_program_params
      params.require(:undergraduate_program).permit(:section_content)
    end
end
