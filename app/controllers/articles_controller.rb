class ArticlesController < ApplicationController
before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index         # GET /restaurants
    @articles = Article.all
  end

  def show          # GET /restaurants/:id
  end

  def new           # GET /restaurants/new
    @article = Article.new
  end

  def create        # POST /restaurants
    @article = Article.new(article_params)
    @article.save
    redirect_to root_path
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy       # DELETE /restaurants/:id
    @article.destroy
    redirect_to root_path
  end

  private

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content, :picture)
  end

end
