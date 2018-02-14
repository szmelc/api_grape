module Post
  class API < Grape::API
    format :json
    namespace :api do
      params do
       requires :post_body, type: String
       requires :user_id, type: Integer
      end
      post do
        n  = Random.new
        random_number = n.rand
        if random_number > 0.5
          puts 'Post updated!'
          {
            post_body: params[:post_body],
            user_id: params[:user_id]
          }
        else
          puts 'Error (500)!'
          error! 'Server error', 500
        end
      end
    end
  end
end
