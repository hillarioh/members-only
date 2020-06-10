module PostsHelper
    def post_author(post)
        if user_signed_in?
            post.user.name
        else
            "please sign in"                        
        end

    end

end
