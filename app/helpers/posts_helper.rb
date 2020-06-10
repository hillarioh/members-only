module PostsHelper
  def post_author(post)
    if user_signed_in?
      post.user.name
    else
      '*******'
    end
  end
end
