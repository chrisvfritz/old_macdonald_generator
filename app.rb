require 'sinatra'
require 'json'

require_relative 'lib/farmer'
require_relative 'lib/farm'
require_relative 'lib/animal'

class NurseryRhymeApp < Sinatra::Base
  get '/' do
    params[:farmer_name] ||= 'MacDonald'
    params[:animals_count] ||= 1
    @song = generate_song params[:farmer_name], params[:animals_count]
    erb :index
  end

  helpers do

    NAMES = ['Sam', 'Frank', 'Alice', 'Sherman']
    ANIMALS = [Pig, Cow, Duck, Horse, Owl, Rabbit]

    def generate_song(farmer_name, animals_count)
      animals = []
      animals_count.to_i.times do
        animals << ANIMALS.sample.new(NAMES.sample)
      end

      farm = Farm.new animals

      farmer = Farmer.new farmer_name, farm

      farmer.song
    end

  end
end
