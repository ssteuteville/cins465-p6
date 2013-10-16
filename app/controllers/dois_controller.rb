class DoisController < ApplicationController
  before_action :set_doi, only: [:show, :edit, :update, :destroy]

  # GET /dois
  # GET /dois.json
  def index
    @dois = Doi.search(params[:search])
  end

  # GET /dois/1
  # GET /dois/1.json
  def show
  end

  # GET /dois/new
  def new
    @doi = Doi.new
  end

  # GET /dois/1/edit
  def edit
  end

  # POST /dois
  # POST /dois.json
  def create
    @doi = Doi.new(doi_params)
    @update = @doi.updates.build(update_params)
    if @doi.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end


  # PATCH/PUT /dois/1
  # PATCH/PUT /dois/1.json
  def update
    respond_to do |format|
      if @doi.update(doi_params)
        format.html { redirect_to @doi, notice: 'Doi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @doi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dois/1
  # DELETE /dois/1.json
  def destroy
    @doi.destroy
    respond_to do |format|
      format.html { redirect_to dois_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doi
      @doi = Doi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doi_params
      params.require(:doi).permit(:name, :description)
    end

    def update_params
      params.require(:update).permit(:url)
    end
end
