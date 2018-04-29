class ArticlesController < ApplicationController

before_action :set_article, except: [:new, :create, :index]

def index
  @articles = Article.all
end

def show
  @article = Article.find(params[:id])
end

def new
  @article = Article.new
end

def update
  @article.assign_attributes(article_params)
  if @article.save
    flash[:success] = "Article was successfully updated."
    redirect_to article_path(@article)
  else
    flash[:danger] = "Article update failure."
    render :new
  end
end

def edit
end

def create
  @article = Article.new(article_params)
  if @article.save
    flash[:success] = "Article was successfully created."
    redirect_to article_path(@article)
  else
    flash[:danger] = "Article creation failure."
    render :new
  end
end

def destroy
  if @article.destroy
    flash[:success] = "Article was successfully deleted."
    redirect_to articles_path
  else
    flash[:danger] = "Article deletion failure."
  end
end

protected

def set_article
  @article = Article.find(params[:id])
end

def article_params
  params.require(:article).permit(
    :title,
    :description
  )
end

end

