class ApplicationController < ActionController::Base
    private

    def post_params
        params.require(:post).permit(:title, :text, :user_id)
    end
end
