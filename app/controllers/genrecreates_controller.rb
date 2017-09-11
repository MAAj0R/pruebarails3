class GenrecreatesController < ApplicationController
  before_action :set_genrecreate, only: [:show, :edit, :update, :destroy]

  # GET /genrecreates
  # GET /genrecreates.json
  def index
    @genrecreates = Genrecreate.all
  end

  # GET /genrecreates/1
  # GET /genrecreates/1.json
  def show
  end

  # GET /genrecreates/new
  def new
    @genrecreate = Genrecreate.new
  end

  # GET /genrecreates/1/edit
  def edit
  end

  # POST /genrecreates
  # POST /genrecreates.json
  def create
    @genrecreate = Genrecreate.new(genrecreate_params)

    respond_to do |format|
      if @genrecreate.save
        format.html { redirect_to @genrecreate, notice: 'Genrecreate was successfully created.' }
        format.json { render :show, status: :created, location: @genrecreate }
      else
        format.html { render :new }
        format.json { render json: @genrecreate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genrecreates/1
  # PATCH/PUT /genrecreates/1.json
  def update
    respond_to do |format|
      if @genrecreate.update(genrecreate_params)
        format.html { redirect_to @genrecreate, notice: 'Genrecreate was successfully updated.' }
        format.json { render :show, status: :ok, location: @genrecreate }
      else
        format.html { render :edit }
        format.json { render json: @genrecreate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genrecreates/1
  # DELETE /genrecreates/1.json
  def destroy
    @genrecreate.destroy
    respond_to do |format|
      format.html { redirect_to genrecreates_url, notice: 'Genrecreate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genrecreate
      @genrecreate = Genrecreate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genrecreate_params
      params.require(:genrecreate).permit(:name)
    end
end
