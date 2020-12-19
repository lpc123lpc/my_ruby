class HistoryborrowtablesController < ApplicationController
  before_action :set_historyborrowtable, only: [:show, :edit, :update, :destroy]

  # GET /historyborrowtables
  # GET /historyborrowtables.json
  def index
    @historyborrowtables = Historyborrowtable.all
    if current_user.student?
    @my_historyborrowtables = current_user.student.historyborrowtables
    end
  end

  # GET /historyborrowtables/1
  # GET /historyborrowtables/1.json
  def show
  end

  # GET /historyborrowtables/new
  def new
    @historyborrowtable = Historyborrowtable.new
  end

  # GET /historyborrowtables/1/edit
  def edit
  end

  # POST /historyborrowtables
  # POST /historyborrowtables.json
  def create
    @historyborrowtable = Historyborrowtable.new(historyborrowtable_params)

    @historyborrowtable.student = current_user.student
    respond_to do |format|
      if @historyborrowtable.save
        format.html { redirect_to @historyborrowtable, notice: 'Historyborrowtable was successfully created.' }
        format.json { render :show, status: :created, location: @historyborrowtable }
      else
        format.html { render :new }
        format.json { render json: @historyborrowtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historyborrowtables/1
  # PATCH/PUT /historyborrowtables/1.json
  def update
    respond_to do |format|
      if @historyborrowtable.update(historyborrowtable_params)
        format.html { redirect_to @historyborrowtable, notice: 'Historyborrowtable was successfully updated.' }
        format.json { render :show, status: :ok, location: @historyborrowtable }
      else
        format.html { render :edit }
        format.json { render json: @historyborrowtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historyborrowtables/1
  # DELETE /historyborrowtables/1.json
  def destroy
    @historyborrowtable.destroy
    respond_to do |format|
      format.html { redirect_to historyborrowtables_url, notice: 'Historyborrowtable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historyborrowtable
      @historyborrowtable = Historyborrowtable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def historyborrowtable_params
      params.require(:historyborrowtable).permit(:bookid, :bookname, :borrowerid, :borrowdate, :returndate)
    end
end
