class Micropost1sController < ApplicationController
  before_action :set_micropost1, only: [:show, :edit, :update, :destroy]

  # GET /micropost1s
  # GET /micropost1s.json
  def index
    @micropost1s = Micropost1.all
  end

  # GET /micropost1s/1
  # GET /micropost1s/1.json
  def show
  end

  # GET /micropost1s/new
  def new
    @micropost1 = Micropost1.new
  end

  # GET /micropost1s/1/edit
  def edit
  end

  # POST /micropost1s
  # POST /micropost1s.json
  def create
    @micropost1 = Micropost1.new(micropost1_params)

    respond_to do |format|
      if @micropost1.save
        format.html { redirect_to @micropost1, notice: 'Micropost1 was successfully created.' }
        format.json { render :show, status: :created, location: @micropost1 }
      else
        format.html { render :new }
        format.json { render json: @micropost1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micropost1s/1
  # PATCH/PUT /micropost1s/1.json
  def update
    respond_to do |format|
      if @micropost1.update(micropost1_params)
        format.html { redirect_to @micropost1, notice: 'Micropost1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @micropost1 }
      else
        format.html { render :edit }
        format.json { render json: @micropost1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropost1s/1
  # DELETE /micropost1s/1.json
  def destroy
    @micropost1.destroy
    respond_to do |format|
      format.html { redirect_to micropost1s_url, notice: 'Micropost1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropost1
      @micropost1 = Micropost1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micropost1_params
      params.require(:micropost1).permit(:content, :user_id)
    end
end
