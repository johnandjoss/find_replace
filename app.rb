require('sinatra')
require('sinatra/reloader')
require('./lib/RPS')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/RPSform') do
  @Player1 = params.fetch('player1')
  @Player2 = params.fetch('player2')
  @Winner = @Player1.beats?(@Player2)
  erb(:RPS_win)
end
