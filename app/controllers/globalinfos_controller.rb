class GlobalinfosController < ApplicationController
  before_action :set_globalinfo, only: [:show, :edit, :update, :destroy]

  # GET /globalinfos
  # GET /globalinfos.json
  def index
    @globalinfos = Globalinfo.all
  end

  # GET /globalinfos/1
  # GET /globalinfos/1.json
  def show
  end

  # GET /globalinfos/new
  def new
    @globalinfo = Globalinfo.new
  end

  # GET /globalinfos/1/edit
  def edit
  end

  # POST /globalinfos
  # POST /globalinfos.json
  def create
    @globalinfo = Globalinfo.new(globalinfo_params)

    respond_to do |format|
      if @globalinfo.save
        format.html { redirect_to @globalinfo, notice: 'Globalinfo was successfully created.' }
        format.json { render :show, status: :created, location: @globalinfo }
      else
        format.html { render :new }
        format.json { render json: @globalinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /globalinfos/1
  # PATCH/PUT /globalinfos/1.json
  def update
    respond_to do |format|
      if @globalinfo.update(globalinfo_params)
        format.html { redirect_to @globalinfo, notice: 'Globalinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @globalinfo }
      else
        format.html { render :edit }
        format.json { render json: @globalinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /globalinfos/1
  # DELETE /globalinfos/1.json
  def destroy
    @globalinfo.destroy
    respond_to do |format|
      format.html { redirect_to globalinfos_url, notice: 'Globalinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_globalinfo
      @globalinfo = Globalinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def globalinfo_params
      params.require(:globalinfo).permit(:title, :publisher, :content)
    end
end
