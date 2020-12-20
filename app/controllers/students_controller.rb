class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    id = student_params[:id]
    name = student_params[:name]
    gender = student_params[:gender]
    department = student_params[:department]
    registration = params[:registration]
    validity = params[:validity]
    credit = student_params[:credit]
    @student = Student.new(:id => id, :name => name, :gender => gender, :department => department,
                           :registration => registration, :validity => validity, :credit => credit)
    email = id + "@1.com"
    user_id = id
    user = User.new(:email => email, :userid => user_id, :password => id, :password_confirmation => id,
                    :role => "student", :username => name)
    user.save!

    @student.user = user

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: '创建学生成功！' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: '学生信息更新成功！' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: '删除学生成功！' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_params
      params.require(:student).permit(:id, :name, :gender, :department, :registration, :validity, :credit)
    end
end
