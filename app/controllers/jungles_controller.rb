class JunglesController < ApplicationController
  before_action :set_jungle, only: [:show, :edit, :update, :destroy]

  # GET /jungles
  # GET /jungles.json
  def index
    @jungles = Jungle.all
  end

  # GET /jungles/1
  # GET /jungles/1.json
  def show
  end

  # GET /jungles/new
  def new
    @jungle = Jungle.new
  end

  # GET /jungles/1/edit
  def edit
  end

  # POST /jungles
  # POST /jungles.json
  def create
    @jungle = Jungle.new(jungle_params)

    respond_to do |format|
      if @jungle.save
        format.html { redirect_to @jungle, notice: 'Jungle was successfully created.' }
        format.json { render :show, status: :created, location: @jungle }
      else
        format.html { render :new }
        format.json { render json: @jungle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jungles/1
  # PATCH/PUT /jungles/1.json
  def update
    respond_to do |format|
      if @jungle.update(jungle_params)
        format.html { redirect_to @jungle, notice: 'Jungle was successfully updated.' }
        format.json { render :show, status: :ok, location: @jungle }
      else
        format.html { render :edit }
        format.json { render json: @jungle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jungles/1
  # DELETE /jungles/1.json
  def destroy
    @jungle.destroy
    respond_to do |format|
      format.html { redirect_to jungles_url, notice: 'Jungle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jungle
      @jungle = Jungle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jungle_params
      params.require(:jungle).permit(:monkey, :eats)
    end
end
