class ComplimentsController < ApplicationController
  before_action :set_compliment, only: %i[ show edit update destroy ]

  # GET /compliments or /compliments.json
  def index
    @compliments = Compliment.all
  end

  # GET /compliments/1 or /compliments/1.json
  def show
  end

  # GET /compliments/new
  def new
    @compliment = Compliment.new
  end

  # GET /compliments/1/edit
  def edit
  end

  # POST /compliments or /compliments.json
  def create
    @compliment = Compliment.new(compliment_params)

    respond_to do |format|
      if @compliment.save
        format.html { redirect_to @compliment, notice: "Compliment was successfully created." }
        format.json { render :show, status: :created, location: @compliment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @compliment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compliments/1 or /compliments/1.json
  def update
    respond_to do |format|
      if @compliment.update(compliment_params)
        format.html { redirect_to @compliment, notice: "Compliment was successfully updated." }
        format.json { render :show, status: :ok, location: @compliment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @compliment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compliments/1 or /compliments/1.json
  def destroy
    @compliment.destroy
    respond_to do |format|
      format.html { redirect_to compliments_url, notice: "Compliment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compliment
      @compliment = Compliment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def compliment_params
      params.require(:compliment).permit(:content)
    end
end
