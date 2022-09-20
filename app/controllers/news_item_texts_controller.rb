class NewsItemTextsController < ApplicationController
  before_action :set_news_item_text, only: %i[ show update destroy ]

  # GET /news_item_texts
  def index
    @news_item_texts = NewsItemText.all

    render json: @news_item_texts
  end

  # GET /news_item_texts/1
  def show
    render json: @news_item_text
  end

  # POST /news_item_texts
  def create
    @news_item_text = NewsItemText.new(news_item_text_params)

    if @news_item_text.save
      render json: @news_item_text, status: :created, location: @news_item_text
    else
      render json: @news_item_text.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /news_item_texts/1
  def update
    if @news_item_text.update(news_item_text_params)
      render json: @news_item_text
    else
      render json: @news_item_text.errors, status: :unprocessable_entity
    end
  end

  # DELETE /news_item_texts/1
  def destroy
    @news_item_text.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_item_text
      @news_item_text = NewsItemText.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def news_item_text_params
      params.require(:news_item_text).permit(:title, :sutien, :authors, :editors, :news_text, :keywords, :related_news, :related_publisher, :posted_on)
    end
end
