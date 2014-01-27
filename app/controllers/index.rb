get '/:word' do
   @anagrams = Word.anagrams(params[:word])
   @word = params[:word]
  # "Here are all the anagrams for #{params[:word]}. #{Word.anagrams(params[:word])}"
  erb :index
end
