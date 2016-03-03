class ExtendedLearningsController < ApplicationController
  before_action :set_extended_learning, only: [:show, :edit, :update, :destroy]

  # GET /extended_learnings
  # GET /extended_learnings.json
  def index
    @extended_learnings = ExtendedLearning.all
  end

  # GET /extended_learnings/1
  # GET /extended_learnings/1.json
  def show
  end

  # GET /extended_learnings/new
  def new
    @extended_learning = ExtendedLearning.new
  end

  # GET /extended_learnings/1/edit
  def edit
  end

  # POST /extended_learnings
  # POST /extended_learnings.json
  def create
    @extended_learning = ExtendedLearning.new(extended_learning_params)

    respond_to do |format|
      if @extended_learning.save
        format.html { redirect_to @extended_learning, notice: 'Extended learning was successfully created.' }
        format.json { render :show, status: :created, location: @extended_learning }
      else
        format.html { render :new }
        format.json { render json: @extended_learning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extended_learnings/1
  # PATCH/PUT /extended_learnings/1.json
  def update
    respond_to do |format|
      if @extended_learning.update(extended_learning_params)
        format.html { redirect_to @extended_learning, notice: 'Extended learning was successfully updated.' }
        format.json { render :show, status: :ok, location: @extended_learning }
      else
        format.html { render :edit }
        format.json { render json: @extended_learning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extended_learnings/1
  # DELETE /extended_learnings/1.json
  def destroy
    @extended_learning.destroy
    respond_to do |format|
      format.html { redirect_to extended_learnings_url, notice: 'Extended learning was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extended_learning
      @extended_learning = ExtendedLearning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def extended_learning_params
      params.require(:extended_learning).permit(:section_content)
    end
end
