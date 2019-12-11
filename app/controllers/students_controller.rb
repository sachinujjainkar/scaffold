class StudentsController < ApplicationController

def index

end

before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /techerinfos
  # GET /techerinfos.json
  def index
    @student = Student.all
  end

  # GET /techerinfos/1
  # GET /techerinfos/1.json
  def show
  end

  # GET /techerinfos/new
  def new
    @student = Student.new
  end

  # GET /techerinfos/1/edit
  def edit
  end

  # POST /techerinfos
  # POST /techerinfos.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /techerinfos/1
  # PATCH/PUT /techerinfos/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studnet/1
  # DELETE /techerinfos/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :address)
    end






end