class CourseNamesController < ApplicationController
  before_action :set_course_name, only: [:show, :edit, :update, :destroy]
  
def find

      @client_workouts = ClientWorkout.where( "client_name = ? OR trainer = ?", params[ :search_string ], params[ :search_string] )

  end
  # GET /course_names
  # GET /course_names.json
  def index
    @course_names = CourseName.all
  end

  # GET /course_names/1
  # GET /course_names/1.json
  def show
  end

  # GET /course_names/new
  def new
    @course_name = CourseName.new
  end

  # GET /course_names/1/edit
  def edit
  end

  # POST /course_names
  # POST /course_names.json
  def create
    @course_name = CourseName.new(course_name_params)

    respond_to do |format|
      if @course_name.save
        format.html { redirect_to @course_name, notice: 'Course name was successfully created.' }
        format.json { render :show, status: :created, location: @course_name }
      else
        format.html { render :new }
        format.json { render json: @course_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_names/1
  # PATCH/PUT /course_names/1.json
  def update
    respond_to do |format|
      if @course_name.update(course_name_params)
        format.html { redirect_to @course_name, notice: 'Course name was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_name }
      else
        format.html { render :edit }
        format.json { render json: @course_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_names/1
  # DELETE /course_names/1.json
  def destroy
    @course_name.destroy
    respond_to do |format|
      format.html { redirect_to course_names_url, notice: 'Course name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_name
      @course_name = CourseName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_name_params
      params.require(:course_name).permit(:teacher_name, :title, :courser_name, :hours, :quntity)
    end
end
