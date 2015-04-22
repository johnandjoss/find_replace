require('sinatra')
require('sinatra/reloader')
require('./lib/find')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/replace_form') do
  @Sentence = params.fetch('sentence')
  @OldWord = params.fetch('oldword')
  @NewWord = params.fetch('newword')
  @Substitute = @Sentence.finder(@OldWord, @NewWord)
  erb(:final)
end
