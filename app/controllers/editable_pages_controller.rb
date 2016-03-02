class EditablePagesController < ApplicationController
  before_action :set_editable_page, only: [:show, :edit, :update, :destroy]

  # GET /editable_pages
  # GET /editable_pages.json
  def index
    @editable_pages = @year.editable_pages.all
  end

  # GET /editable_pages/1
  # GET /editable_pages/1.json
  def show
  end

  # GET /editable_pages/new
  def new
    @editable_page = @year.editable_pages.new
  end

  # GET /editable_pages/1/edit
  def edit
  end

  # POST /editable_pages
  # POST /editable_pages.json
  def create
    @editable_page = @year.editable_pages.new(editable_page_params)

    respond_to do |format|
      if @editable_page.save
        @editable_page.years << @year
        format.html { redirect_to [@year, @editable_page], notice: 'Editable page was successfully created.' }
        format.json { render :show, status: :created, location: [@year, @editable_page] }
      else
        format.html { render :new }
        format.json { render json: @editable_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /editable_pages/1
  # PATCH/PUT /editable_pages/1.json
  def update
    respond_to do |format|
      if @editable_page.update(editable_page_params)
        format.html { redirect_to [@year, @editable_page], notice: 'Editable page was successfully updated.' }
        format.json { render :show, status: :ok, location: [@year, @editable_page] }
      else
        format.html { render :edit }
        format.json { render json: @editable_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /editable_pages/1
  # DELETE /editable_pages/1.json
  def destroy
    @editable_page.destroy
    respond_to do |format|
      format.html { redirect_to year_editable_pages_url, notice: 'Editable page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_editable_page
      @editable_page = @year.editable_pages.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def editable_page_params
      params.require(:editable_page).permit(:section_content)
    end
end
