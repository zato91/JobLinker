class PostsController < ApplicationController
 
    def new 
        @post = Post.new
    end 

    def create
        @post = Post.create(post_params)
        redirect_to post_path(@post)
    end 

    private 
    def post_params
        params.require(:post).permit(:title, :message, :user_ids => [])
    end 

end
