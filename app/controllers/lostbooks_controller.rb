class LostbooksController < ApplicationController
  before_action :set_lostbook, only: [:show, :edit, :update, :destroy]

  # GET /lostbooks
  # GET /lostbooks.json
  def index
    @lostbooks = Lostbook.all
    if current_user.student?
      @my_lostbooks = current_user.student.lostbooks
    end
  end

  # GET /lostbooks/1
  # GET /lostbooks/1.json
  def show
  end

  # GET /lostbooks/new
  def new
    @lostbook = Lostbook.new
  end

  # GET /lostbooks/1/edit
  def edit
  end

  # POST /lostbooks
  # POST /lostbooks.json
  def create
    book_id = params[:book_id]
    book_title = params[:book_title]
    borrowerid = params[:borrowerid]
    lostdate = params[:lost_date]

    @lostbook = Lostbook.new(:bookid => book_id, :booktitle => book_title, :borrowerid => borrowerid, :lostdate => lostdate)
    @lostbook.student = current_user.student

    book = Book.find(book_id)
    book.state = "丢失"
    book.save!


    student = Student.find(borrowerid)
    student.credit = student.credit - 20
    student.save!


    borrowbook = Borrowtable.find_by book_title
    borrowbook.destroy


    respond_to do |format|
      if @lostbook.save
        format.html { redirect_to @lostbook, notice: 'Lostbook was successfully created.' }
        format.json { render :show, status: :created, location: @lostbook }
      else
        format.html { render :new }
        format.json { render json: @lostbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lostbooks/1
  # PATCH/PUT /lostbooks/1.json
  def update
    respond_to do |format|
      if @lostbook.update(lostbook_params)
        format.html { redirect_to @lostbook, notice: 'Lostbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @lostbook }
      else
        format.html { render :edit }
        format.json { render json: @lostbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lostbooks/1
  # DELETE /lostbooks/1.json
  def destroy
    book_id = params[:book_id]
    book_title = params[:book_title]
    borrowerid = params[:borrower_id]

    book = Book.find(book_id)
    book.state = "未借阅"
    book.save!



    @lostbook.destroy
    respond_to do |format|
      format.html { redirect_to lostbooks_url, notice: 'Lostbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lostbook
      @lostbook = Lostbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lostbook_params
      params.require(:lostbook).permit(:bookid, :booktitle, :author, :press, :price)
    end
end
