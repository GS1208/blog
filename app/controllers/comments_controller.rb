class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comments = @article.comments.create(comment_params)
         redirect_to @article
    end
    def destroy
        @article = Article.find(params[:article_id])
          @comment = @article.comments.find(params[:id])
          @comment.destroy
          redirect_to @article
      end
    private def comment_params
        params[:comment].permit(:commenter, :body)
    end 
  end
