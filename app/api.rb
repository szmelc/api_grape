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
          puts random_number
          puts 'dupa'
          {
            post_body: params[:post_body],
            user_id: params[:user_id]
          }
        else
          puts random_number
          puts 'error'
          error! 'Server error', 500
        end
      end
    end
  end
end
