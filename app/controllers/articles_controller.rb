class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(title: params[:article][:title], content: params[:article][:content])
    redirect_to @article
  end

  def new
    @article = Article.new
    # redirect_to @article
  end

  def create
    @article = Article.create(title: params[:article][:title], content: params[:article][:content])
  end

  def index
    @articles = Article.all
  end
end
