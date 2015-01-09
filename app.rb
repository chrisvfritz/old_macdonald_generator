require 'sinatra'

require_relative 'lib/nursery_rhymes/old_macdonald'

class NurseryRhymeApp < Sinatra::Base
  get '/' do
    @song = OldMacdonald.new(
      farmer_name: params[:farmer_name],
      number_of_verses: params[:animals_count]
    ).lyrics

    erb :index
  end
end
