class ArticlesController < ApplicationController
  # GET: /articles
  def index
    @articles = Article.all
    @article = Article.new
  end

  # GET: /articles/:id
  def show
    @article = Article.find(params[:id])
  end

  # GET: /articles/new
  def new

  end

  # POST: /articles
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to root_path
  end

  # GET: /articles/:id/edit
  def edit
    @article = Article.find(params[:id])

  end

  # PATCH: /articles/:id
  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to root_path
  end

  # DELETE: /restaurants/:id
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to root_path
  end

  private


  def article_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:article).permit(:title, :context)
  end
end
