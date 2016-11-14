class DanielsController < ApplicationController
  before_action :set_daniel, only: [:show, :edit, :update, :destroy]

  # GET /daniels
  # GET /daniels.json
  def index
    @daniels = Daniel.all
  end

  # GET /daniels/1
  # GET /daniels/1.json
  def show
  end

  # GET /daniels/new
  def new
    @daniel = Daniel.new
  end

  # GET /daniels/1/edit
  def edit
  end

  # POST /daniels
  # POST /daniels.json
  def create
    @daniel = Daniel.new(daniel_params)

    respond_to do |format|
      if @daniel.save
        format.html { redirect_to @daniel, notice: 'Daniel was successfully created.' }
        format.json { render :show, status: :created, location: @daniel }
      else
        format.html { render :new }
        format.json { render json: @daniel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daniels/1
  # PATCH/PUT /daniels/1.json
  def update
    respond_to do |format|
      if @daniel.update(daniel_params)
        format.html { redirect_to @daniel, notice: 'Daniel was successfully updated.' }
        format.json { render :show, status: :ok, location: @daniel }
      else
        format.html { render :edit }
        format.json { render json: @daniel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daniels/1
  # DELETE /daniels/1.json
  def destroy
    @daniel.destroy
    respond_to do |format|
      format.html { redirect_to daniels_url, notice: 'Daniel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daniel
      @daniel = Daniel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daniel_params
      params.require(:daniel).permit(:login)
    end
end
