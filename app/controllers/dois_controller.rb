class DoisController < ApplicationController
  before_action :set_doi, only: [:show, :edit, :update, :destroy]
  before_filter :get_url
  # GET /dois
  # GET /dois.json
  def index
    @dois = Doi.all
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

    respond_to do |format|
      if @doi.save
        format.html { redirect_to @doi, notice: 'Doi was successfully created.' }
        format.json { render action: 'show', status: :created, location: @doi }
      else
        format.html { render action: 'new' }
        format.json { render json: @doi.errors, status: :unprocessable_entity }
      end
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
      params.require(:doi).permit(:name, :description, :user_id)
    end

    def get_url
      # @url = Url.find(params[:url_id])
    end
    
end
