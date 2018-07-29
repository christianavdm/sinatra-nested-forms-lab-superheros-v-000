require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @member1_name = params[:team][:members][0][:name]
      @member1_power = params[:team][:members][0][:power]
      @member1_bio = params[:team][:members][0][:bio]

      erb :team
    end
end
