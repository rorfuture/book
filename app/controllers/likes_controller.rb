class LikesController < ApplicationController
    def create
		@article = Article.find(params[:article_id])
		@like = @article.likes.create!(user_id:current_user.id, is_liked:true)
		redirect_to article_path(@article)
	end
end
