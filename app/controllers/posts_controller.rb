class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  # GET /posts or /posts.json
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  # GET /posts/1 or /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path, success: "Post was successfully created."
    else
      render(
        turbo_stream: turbo_stream.replace(
          "post_form",
          partial: "posts/form",
          locals: {
            post: @post
          }
        ), status: :unprocessable_entity)
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    if @post.update(post_params)
      redirect_to @post, success: "Post was successfully updated."
    else
      render(
        turbo_stream: turbo_stream.replace(
          "post_form",
          partial: "posts/form",
          locals: {
            post: @post
          }
        ), status: :unprocessable_entity)
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy
    redirect_to posts_url, notice: "Post was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :body, :category)
    end
end
