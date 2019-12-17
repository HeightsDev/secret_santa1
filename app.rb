require 'sinatra'
require_relative './data_mapper_setup.rb'
require_relative './lib/participant.rb'

class SecretSantaApp < Sinatra::Base
    get '/' do
        erb :index
    end

    get '/participants/new' do
        erb :"participants/new"
    end

    post '/participants' do
        participant = Participant.new(
            :name => params["name"],
            :email => params["email"]
            )
        participant.save
        redirect '/participants/new'
    end
end
