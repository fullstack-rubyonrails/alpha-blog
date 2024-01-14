class ArticlesController < ApplicationController
  def show
    #byebug
    @article = Article.find(params[:id])
  end
  def index
    @articles = Article.all
  end
  def new
    @article = Article.new
  end
  def edit
    #byebug
    @article = Article.find(params[:id])
  end
  def create
    #render plain: params[:article]
    @article = Article.new(params.require(:article).permit(:title, :description))
    #render plain: @article.inspect
    if @article.save
      #flash messages are NOTICE OR ALERT
      #redirect_to article_path(@article)
      redirect_to @article
      flash[:notice] = "Article was created successfully"
    else
      render 'new'
    end
  end
  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = "Article was updated successfully"
      redirect_to @article
    else
      render 'edit'
    end
  end
end