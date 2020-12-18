class BorrowtablesController < ApplicationController
  before_action :set_borrowtable, only: [:show, :edit, :update, :destroy]

  # GET /borrowtables
  # GET /borrowtables.json
  def index
    @borrowtables = Borrowtable.all
  end

  # GET /borrowtables/1
  # GET /borrowtables/1.json
  def show
  end

  # GET /borrowtables/new
  def new
    book_id = params[:bookid]
    book_title = params[:booktitle]
    @borrowtable = Borrowtable.new
  end

  # GET /borrowtables/1/edit
  def edit
  end

  # POST /borrowtables
  # POST /borrowtables.json
  def create
    book_id = params[:book_id]
    book_title = params[:book_title]
    borrowerid = borrowtable_params[:borrowerid]
    borrowdate = params[:borrow_date]
    returndate = params[:return_date]
    @borrowtable = Borrowtable.new(:bookid => book_id, :bookname => book_title, :borrowerid => borrowerid,
                                   :borrowdate => borrowdate, :returndate => returndate)
    historyborrowtable = Historyborrowtable.new(:bookid => book_id, :bookname => book_title, :borrowerid => borrowerid,
                                   :borrowdate => borrowdate, :returndate => "未归还")
    historyborrowtable.save!

    student = Student.find(borrowerid)
    if student.credit < 60
      respond_to do |format|
      format.html { redirect_to books_path, notice: '信用分过低，无法借书，请信用分大于60分后再执行操作。'}
      #format.json { render :show, status: :created, location: @borrowtable }
      return
      end
    end

    book = Book.find(book_id)
    book.author = "已借阅"
    book.save!
    respond_to do |format|
      if @borrowtable.save
        format.html { redirect_to @borrowtable, notice: '借阅成功!' }
        format.json { render :show, status: :created, location: @borrowtable }
      else
        format.html { render :new }
        format.json { render json: @borrowtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /borrowtables/1
  # PATCH/PUT /borrowtables/1.json
  def update
    respond_to do |format|
      if @borrowtable.update(borrowtable_params)
        format.html { redirect_to @borrowtable, notice: 'Borrowtable was successfully updated.' }
        format.json { render :show, status: :ok, location: @borrowtable }
      else
        format.html { render :edit }
        format.json { render json: @borrowtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /borrowtables/1
  # DELETE /borrowtables/1.json
  def destroy
    book_id = params[:book_id]
    book_title = params[:book_title]
    borrowerid = params[:borrower_id]
    book_expected_return_date = params[:return_date]
    return_date = Date.today
    overdue = "已逾期"
    if Date.today < Time.parse(book_expected_return_date)
      overdue = "未逾期"
    end

    unaffirmedbook = Unaffirmedbook.new(:bookid => book_id, :booktitle => book_title,:expected_return => book_expected_return_date,
                                        :returndate => return_date, :overdue => overdue, :borrowerid => borrowerid)
    unaffirmedbook.save!
    @borrowtable.destroy
    respond_to do |format|
      format.html { redirect_to borrowtables_url, notice: 'Borrowtable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_borrowtable
      @borrowtable = Borrowtable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def borrowtable_params
      params.require(:borrowtable).permit(:bookid, :bookname, :borrowerid, :borrowdate, :returndate)
    end
end
