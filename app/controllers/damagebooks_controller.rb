class DamagebooksController < ApplicationController
  before_action :set_damagebook, only: [:show, :edit, :update, :destroy]

  # GET /damagebooks
  # GET /damagebooks.json
  def index
    @damagebooks = Damagebook.all
  end

  # GET /damagebooks/1
  # GET /damagebooks/1.json
  def show
  end

  # GET /damagebooks/new
  def new
    @damagebook = Damagebook.new
  end

  # GET /damagebooks/1/edit
  def edit
  end

  # POST /damagebooks
  # POST /damagebooks.json
  def create
    book_id = params[:book_id]
    book_title = params[:book_title]
    damage_date = params[:damage_date]
    borrower_id = params[:borrower_id]
    level = damagebook_params[:level]
    @damagebook = Damagebook.new(:bookid => book_id, :bookname => book_title, :date => damage_date, :level => level )
    unaffirmedbook = Unaffirmedbook.find_by bookid: book_id
    unaffirmedbook.destroy
    book = Book.find(book_id)
    book.state = "已损坏"
    book.save!
    student = Student.find(borrower_id)
    student.credit = student.credit - 10
    student.save!

    respond_to do |format|
      if @damagebook.save
        format.html { redirect_to @damagebook, notice: '成功加入损坏图书列表！' }
        format.json { render :show, status: :created, location: @damagebook }
      else
        format.html { render :new }
        format.json { render json: @damagebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /damagebooks/1
  # PATCH/PUT /damagebooks/1.json
  def update
    respond_to do |format|
      if @damagebook.update(damagebook_params)
        format.html { redirect_to @damagebook, notice: '损坏图书信息更新成功！' }
        format.json { render :show, status: :ok, location: @damagebook }
      else
        format.html { render :edit }
        format.json { render json: @damagebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /damagebooks/1
  # DELETE /damagebooks/1.json
  def destroy
    book_id = params[:book_id]
    book_title = params[:book_title]
    book = Book.find(book_id)
    book.state = "未借阅"
    book.save!

    @damagebook.destroy
    respond_to do |format|
      format.html { redirect_to damagebooks_url, notice: '入库成功！' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_damagebook
      @damagebook = Damagebook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def damagebook_params
      params.require(:damagebook).permit(:bookid, :bookname, :level, :date)
    end
end
