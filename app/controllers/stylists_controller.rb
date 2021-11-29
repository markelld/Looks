class StylistsController < ApplicationController
  before_action :set_stylist, only: %i[ show edit update destroy ]

  # GET /stylists or /stylists.json
  def index
    @stylists = Stylist.all
  end

  # GET /stylists/1 or /stylists/1.json
  def show
  end

  # GET /stylists/new
  def new
    @stylist = Stylist.new
  end

  # GET /stylists/1/edit
  def edit
  end

  # POST /stylists or /stylists.json
  def create
    @stylist = Stylist.new(stylist_params)

    respond_to do |format|
      if @stylist.save
        format.html { redirect_to @stylist, notice: "Stylist was successfully created." }
        format.json { render :show, status: :created, location: @stylist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stylist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stylists/1 or /stylists/1.json
  def update
    respond_to do |format|
      if @stylist.update(stylist_params)
        format.html { redirect_to @stylist, notice: "Stylist was successfully updated." }
        format.json { render :show, status: :ok, location: @stylist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stylist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stylists/1 or /stylists/1.json
  def destroy
    @stylist.destroy
    respond_to do |format|
      format.html { redirect_to stylists_url, notice: "Stylist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stylist
      @stylist = Stylist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stylist_params
      params.require(:stylist).permit(:name, :bio, :instagram, :rate, :user_id, images: [])
    end
end
