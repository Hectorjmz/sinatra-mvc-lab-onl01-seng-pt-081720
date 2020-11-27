require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :something
    end

    post "/piglatinize" do
        @info = PigLatinizer.new
        @info = @info.piglatinize(params[:user_phrase])
        erb :something
    end

    # post "/piglatinize" do
    #     @info = PigLatinizer.new
    #     @info = @info.piglatinize(params[:user_phrase])
    #     erb :something
    # end

end

# user_input