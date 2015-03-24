require 'bundler'
Bundler.require


get "/ipsum/:paragraphs" do
  @times = params[:paragraphs].to_i*75
  @title_ipsum = ["Romam Greeksum", "Greekum Romansum"]
  @roman_ipsum = ["Saturn", "Iuppiter", "Neptune", "Bacchus", "Volcanius", "Venus", "Pluto", "Mars", "Diana", "Vestia", "Iuno", "Ceres", "Mercury", "Sol"]
  @greek_ipsum = ["Chronos", "Zeus", "Poseidon", "Dionysus", "Hephaestus", "Aphrodite", "Hades", "Ares", "Artemis", "Hestia", "Hera", "Demeter", "Hermes", "Apollo"]
  erb :ERB
end



