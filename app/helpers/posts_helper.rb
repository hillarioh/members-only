module PostsHelper
  def post_author(post)
    if user_signed_in?
      post.user.name
    else
      '*******'
    end
  end

  def index_session
    if user_signed_in?
      link_to('Logout', destroy_user_session_path, method: :delete)
    else
      link_to('Login', new_user_session_path)
      link_to('Register', new_user_registration_path)
    end
  end
end
