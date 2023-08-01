class PostsController < ApplicationController
    def create
        post = Post.new(post_params)
        if post.save #if the post meets the paramters, it can be created. otherwise an error will show 
            render json: post, status: :created
        else 
            render json: post.errors, status: :unprocessable_entity
        end 
    end 

    def index 
        posts = Post.all 
        render json: posts
    end 
    

    private 

    def post_params #there must be content in the post and a username / id association
        params.require(:post).permit(:content, :user_id)
    end 
end
