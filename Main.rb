require 'bundler'
Bundler.require


get "/" do
  erb :Generator
end

post '/Ipsum/Generate' do
  @roman_ipsum = ["Saturn", "Iuppiter", "Neptune", "Bacchus", "Volcanius", "Venus", "Pluto", "Mars", "Diana", "Vestia", "Iuno", "Ceres", "Mercury", "Sol"]
  @greek_ipsum = ["Chronos", "Zeus", "Poseidon", "Dionysus", "Hephaestus", "Aphrodite", "Hades", "Ares", "Artemis", "Hestia", "Hera", "Demeter", "Hermes", "Apollo"]
  @title_ipsum = ["Romam Greeksum", "Greekum Romansum"]
  @romansum = []
  @greeksum = []
  if params[:amount] == "pages"
    params[:quantity].to_i.times do
      500.times do
        @r = @roman_ipsum.sample
        @g = @greek_ipsum.sample
        @romansum.push @r
        @greeksum.push @g
      end
    end
  elsif params[:amount] == "paragraphs"
    params[:quantity].to_i.times do
      75.times do
        @r = @roman_ipsum.sample
        @g = @greek_ipsum.sample
        @romansum.push @r
        @greeksum.push @g
      end
    end
  elsif params[:amount] == "words"
    params[:quantity].to_i.times do
      1.times do
        @r = @roman_ipsum.sample
        @g = @greek_ipsum.sample
        @romansum.push @r
        @greeksum.push @g
      end
    end
  end
  @romansum = @romansum.join(', ')
  @greeksum = @greeksum.join(', ')
  erb :Ipsum
end

