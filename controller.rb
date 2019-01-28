require("sinatra")
require("sinatra/contrib/all")
require("pry")

require_relative("./models/game")
also_reload("./models/*")

get "/" do
  erb(:home)
end

get "/rules" do
  erb(:rules)
end

get "/game" do
  erb(:play)
end

get "/game/:result1/:result2" do
  game = RockPaperScissor.new(params[:result1], params[:result2])
  @player = game.who_won()
  @result = game.get_result()
  erb(:result)
end
