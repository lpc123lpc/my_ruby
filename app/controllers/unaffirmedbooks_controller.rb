class UnaffirmedbooksController < ApplicationController
  before_action :set_unaffirmedbook, only: [:show, :edit, :update, :destroy]

  # GET /unaffirmedbooks
  # GET /unaffirmedbooks.json
  def index
    @unaffirmedbooks = Unaffirmedbook.all
  end

  # GET /unaffirmedbooks/1
  # GET /unaffirmedbooks/1.json
  def show
  end

  # GET /unaffirmedbooks/new
  def new
    @unaffirmedbook = Unaffirmedbook.new
  end

  # GET /unaffirmedbooks/1/edit
  def edit
  end

  # POST /unaffirmedbooks
  # POST /unaffirmedbooks.json
  def create
    @unaffirmedbook = Unaffirmedbook.new(unaffirmedbook_params)

    respond_to do |format|
      if @unaffirmedbook.save
        format.html { redirect_to @unaffirmedbook, notice: 'Unaffirmedbook was successfully created.' }
        format.json { render :show, status: :created, location: @unaffirmedbook }
      else
        format.html { render :new }
        format.json { render json: @unaffirmedbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unaffirmedbooks/1
  # PATCH/PUT /unaffirmedbooks/1.json
  def update
    respond_to do |format|
      if @unaffirmedbook.update(unaffirmedbook_params)
        format.html { redirect_to @unaffirmedbook, notice: 'Unaffirmedbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @unaffirmedbook }
      else
        format.html { render :edit }
        format.json { render json: @unaffirmedbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unaffirmedbooks/1
  # DELETE /unaffirmedbooks/1.json
  def destroy
    book_id = params[:book_id]
    book_title = params[:book_title]
    borrower_id = params[:borrower_id]
    overdue = params[:overdue]
    if overdue == "已逾期"
      student = Student.find(borrower_id)
      student.credit = student.credit - 5
      student.save!
    end

    historyborrowtable = Historyborrowtable.find(book_id)
    historyborrowtable.returndate = Date.today
    historyborrowtable.save!

    book = Book.find(book_id)
    book.state = "未借阅"
    book.save!

    @unaffirmedbook.destroy
    respond_to do |format|
      format.html { redirect_to unaffirmedbooks_url, notice: '操作成功' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unaffirmedbook
      @unaffirmedbook = Unaffirmedbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unaffirmedbook_params
      params.require(:unaffirmedbook).permit(:bookid, :booktitle, :expected_return, :returndate, :overdue)
    end
end
