require 'sinatra/base'

class App < Sinatra::Base
    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/team' do
      @team = Team.new(params[:team])

      params[:team][:super_heroes].each do |details|
        SuperHero.new(details)
      end
      @super_heroes = SuperHero.all 

      erb :team
    end
end
