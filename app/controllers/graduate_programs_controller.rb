class GraduateProgramsController < ApplicationController
  before_action :set_graduate_program, only: [:show, :edit, :update, :destroy]

  # GET /graduate_programs
  # GET /graduate_programs.json
  def index
    @graduate_programs = GraduateProgram.all
  end

  # GET /graduate_programs/1
  # GET /graduate_programs/1.json
  def show
  end

  # GET /graduate_programs/new
  def new
    @graduate_program = GraduateProgram.new
  end

  # GET /graduate_programs/1/edit
  def edit
  end

  # POST /graduate_programs
  # POST /graduate_programs.json
  def create
    @graduate_program = GraduateProgram.new(graduate_program_params)

    respond_to do |format|
      if @graduate_program.save
        format.html { redirect_to @graduate_program, notice: 'Graduate program was successfully created.' }
        format.json { render :show, status: :created, location: @graduate_program }
      else
        format.html { render :new }
        format.json { render json: @graduate_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graduate_programs/1
  # PATCH/PUT /graduate_programs/1.json
  def update
    respond_to do |format|
      if @graduate_program.update(graduate_program_params)
        format.html { redirect_to @graduate_program, notice: 'Graduate program was successfully updated.' }
        format.json { render :show, status: :ok, location: @graduate_program }
      else
        format.html { render :edit }
        format.json { render json: @graduate_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graduate_programs/1
  # DELETE /graduate_programs/1.json
  def destroy
    @graduate_program.destroy
    respond_to do |format|
      format.html { redirect_to graduate_programs_url, notice: 'Graduate program was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graduate_program
      @graduate_program = GraduateProgram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graduate_program_params
      params.require(:graduate_program).permit(:section_content)
    end
end
