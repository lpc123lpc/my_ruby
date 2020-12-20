class TextbooksearchesController < ApplicationController

  def index
    @textbooksearches = Textbooksearch.all
  end

  def show
    @textbooksearch = Textbooksearch.find(params[:id])
  end

  def new
    @textbooksearch = Textbooksearch.new
    @departments = Textbook.distinct.pluck(:department)
    @terms = Textbook.distinct.pluck(:term)
  end

  def create
    @textbooksearch = Textbooksearch.create(textbooksearch_params)
    redirect_to @textbooksearch
  end

  private

  def textbooksearch_params
    params.require(:textbooksearch).permit(:bookname, :department, :term)
  end
end
