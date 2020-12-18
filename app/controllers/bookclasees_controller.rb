class BookclaseesController < ApplicationController
  before_action :set_bookclasee, only: [:show, :edit, :update, :destroy]

  # GET /bookclasees
  # GET /bookclasees.json
  def index
    @bookclasees = Bookclasee.all
  end

  # GET /bookclasees/1
  # GET /bookclasees/1.json
  def show
  end

  # GET /bookclasees/new
  def new
    @bookclasee = Bookclasee.new
  end

  # GET /bookclasees/1/edit
  def edit
  end

  # POST /bookclasees
  # POST /bookclasees.json
  def create
    @bookclasee = Bookclasee.new(bookclasee_params)

    respond_to do |format|
      if @bookclasee.save
        format.html { redirect_to @bookclasee, notice: 'Bookclasee was successfully created.' }
        format.json { render :show, status: :created, location: @bookclasee }
      else
        format.html { render :new }
        format.json { render json: @bookclasee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookclasees/1
  # PATCH/PUT /bookclasees/1.json
  def update
    respond_to do |format|
      if @bookclasee.update(bookclasee_params)
        format.html { redirect_to @bookclasee, notice: 'Bookclasee was successfully updated.' }
        format.json { render :show, status: :ok, location: @bookclasee }
      else
        format.html { render :edit }
        format.json { render json: @bookclasee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookclasees/1
  # DELETE /bookclasees/1.json
  def destroy
    @bookclasee.destroy
    respond_to do |format|
      format.html { redirect_to bookclasees_url, notice: 'Bookclasee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookclasee
      @bookclasee = Bookclasee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookclasee_params
      params.require(:bookclasee).permit(:classid, :classname)
    end
end
