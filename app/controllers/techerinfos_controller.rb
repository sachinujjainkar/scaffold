class TecherinfosController < ApplicationController
  before_action :set_techerinfo, only: [:show, :edit, :update, :destroy]

  # GET /techerinfos
  # GET /techerinfos.json
  def index
    @techerinfos = Techerinfo.all
  end

  # GET /techerinfos/1
  # GET /techerinfos/1.json
  def show
  end

  # GET /techerinfos/new
  def new
    @techerinfo = Techerinfo.new
  end

  # GET /techerinfos/1/edit
  def edit
  end

  # POST /techerinfos
  # POST /techerinfos.json
  def create
    @techerinfo = Techerinfo.new(techerinfo_params)

    respond_to do |format|
      if @techerinfo.save
        format.html { redirect_to @techerinfo, notice: 'Techerinfo was successfully created.' }
        format.json { render :show, status: :created, location: @techerinfo }
      else
        format.html { render :new }
        format.json { render json: @techerinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /techerinfos/1
  # PATCH/PUT /techerinfos/1.json
  def update
    respond_to do |format|
      if @techerinfo.update(techerinfo_params)
        format.html { redirect_to @techerinfo, notice: 'Techerinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @techerinfo }
      else
        format.html { render :edit }
        format.json { render json: @techerinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /techerinfos/1
  # DELETE /techerinfos/1.json
  def destroy
    @techerinfo.destroy
    respond_to do |format|
      format.html { redirect_to techerinfos_url, notice: 'Techerinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_techerinfo
      @techerinfo = Techerinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def techerinfo_params
      params.require(:techerinfo).permit(:name, :address)
    end
end
