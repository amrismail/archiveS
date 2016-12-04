class RFilesController < ApplicationController
  before_action :set_r_file, only: [:show, :edit, :update, :destroy]

  # GET /r_files
  # GET /r_files.json
  def index
    @r_files = RFile.all
  end

  # GET /r_files/1
  # GET /r_files/1.json
  def show
  end

  # GET /r_files/new
  def new
    @r_file = RFile.new
  end

  # GET /r_files/1/edit
  def edit
  end

  # POST /r_files
  # POST /r_files.json
  def create
    @r_file = RFile.new(r_file_params)

    respond_to do |format|
      if @r_file.save
        format.html { redirect_to @r_file, notice: 'R file was successfully created.' }
        format.json { render :show, status: :created, location: @r_file }
      else
        format.html { render :new }
        format.json { render json: @r_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /r_files/1
  # PATCH/PUT /r_files/1.json
  def update
    respond_to do |format|
      if @r_file.update(r_file_params)
        format.html { redirect_to @r_file, notice: 'R file was successfully updated.' }
        format.json { render :show, status: :ok, location: @r_file }
      else
        format.html { render :edit }
        format.json { render json: @r_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /r_files/1
  # DELETE /r_files/1.json
  def destroy
    @r_file.destroy
    respond_to do |format|
      format.html { redirect_to r_files_url, notice: 'R file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_r_file
      @r_file = RFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def r_file_params
      params.require(:r_file).permit(:name, :date, :reporter, :uploader, :event, :place, :access, :URL)
    end
end
