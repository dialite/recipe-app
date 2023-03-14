class RecipefoodsController < ApplicationController
  before_action :set_recipefood, only: %i[ show edit update destroy ]

  # GET /recipefoods or /recipefoods.json
  def index
    @recipefoods = Recipefood.all
  end

  # GET /recipefoods/1 or /recipefoods/1.json
  def show
  end

  # GET /recipefoods/new
  def new
    @recipefood = Recipefood.new
  end

  # GET /recipefoods/1/edit
  def edit
  end

  # POST /recipefoods or /recipefoods.json
  def create
    @recipefood = Recipefood.new(recipefood_params)

    respond_to do |format|
      if @recipefood.save
        format.html { redirect_to recipefood_url(@recipefood), notice: "Recipefood was successfully created." }
        format.json { render :show, status: :created, location: @recipefood }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipefood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipefoods/1 or /recipefoods/1.json
  def update
    respond_to do |format|
      if @recipefood.update(recipefood_params)
        format.html { redirect_to recipefood_url(@recipefood), notice: "Recipefood was successfully updated." }
        format.json { render :show, status: :ok, location: @recipefood }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipefood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipefoods/1 or /recipefoods/1.json
  def destroy
    @recipefood.destroy

    respond_to do |format|
      format.html { redirect_to recipefoods_url, notice: "Recipefood was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipefood
      @recipefood = Recipefood.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipefood_params
      params.fetch(:recipefood, {})
    end
end
