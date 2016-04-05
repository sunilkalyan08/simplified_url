class UrlShortnersController < ApplicationController
  before_action :set_url_shortner, only: [:show, :edit, :update, :destroy]

  # GET /url_shortners
  # GET /url_shortners.json
  def index
    @url_shortners = UrlShortner.all
  end

  # GET /url_shortners/1
  # GET /url_shortners/1.json
  def show
  end

  # GET /url_shortners/new
  def new
    @url_shortner = UrlShortner.new
  end

  # GET /url_shortners/1/edit
  def edit
  end

  # POST /url_shortners
  # POST /url_shortners.json
  def create
    @url_shortner = UrlShortner.new(url_shortner_params)

    respond_to do |format|
      if @url_shortner.save
        format.html { redirect_to url_shortners_path}
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /url_shortners/1
  # PATCH/PUT /url_shortners/1.json
  def update
    respond_to do |format|
      if @url_shortner.update(url_shortner_params)
        format.html { redirect_to @url_shortner, notice: 'Url shortner was successfully updated.' }
        format.json { render :show, status: :ok, location: @url_shortner }
      else
        format.html { render :edit }
        format.json { render json: @url_shortner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /url_shortners/1
  # DELETE /url_shortners/1.json
  def destroy
    @url_shortner.destroy
    respond_to do |format|
      format.html { redirect_to url_shortners_url, notice: 'Url shortner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url_shortner
      @url_shortner = UrlShortner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def url_shortner_params
      params.require(:url_shortner).permit(:original_url, :generated_url)
    end
end
