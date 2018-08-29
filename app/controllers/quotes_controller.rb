class QuotesController < ApplicationController
  def index
    @quotes = Quote.order(:created_at).page params[:page]
  end

  def new
    @quote = Quote.new
  end

  def create
    Quote.create(quote_params)
    redirect_to quotes_path
  end

  def quote_params
    params.require(:quote).permit(:text)
  end
end
