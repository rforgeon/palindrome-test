Rails.application.routes.draw do

	  scope '/palindromes', :controller => :palindromes do
        post :test
        get :recent
      end

end
