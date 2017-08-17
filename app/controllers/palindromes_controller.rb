class PalindromesController < ApplicationController


  def palindrome?(str)
  	str == str.reverse
  end


  def test
    body = params['body']
    #remove special characters
    regx_body = body.gsub(/[^0-9A-Za-z]/, '')
    if regx_body != nil
      @body = regx_body
    else
      @body = body 
    end  
    # remove white space
    @body.strip!
    # remove upper case
    @body.downcase!
    #set palindrome
    @palindrome = Palindrome.new
    @palindrome.body = @body
    #check palindrome
    if palindrome?(@palindrome.body) 
    	# save if true
      Palindrome.create!(body: @body)
    	json_response(true)

  	else
  		json_response(false)
  	end	

  end

  def recent
    #select the last 10 records
    @palindromes = Palindrome.last(10).reverse
    json_response(@palindromes)
  end  


  private

  def palindrome_params
    params.permit(:body)
  end


end
