musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# Como podemos comprimentar os músicos?
# for artist in musicians
#   puts "Hello #{artist}!"
# end

# O iterator equivalente ao for em ruby é o .each
musicians.each do |artist|
  puts artist if artist[0] == "R"
end

# => ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# Como listar os músicos de forma ordenada?
musicians.each_with_index do |musician, index|
  puts "#{index + 1} - #{musician}"
end

# Como podemos filtrar o array p/ pegar somente os músicos com a letra "R"?
artists_with_r = musicians.map do |artist|
  # Condicao verdadeira
  artist if artist[0] == "R"
end
# é o mesmo que:
# artists_with_r = musicians.map { |artist| artist if artist[0] == "R"  }

# => [nil, 'Roger Waters', 'Richard Wright', nil]

p artists_with_r.compact

artists_with_r = musicians.select do |artist|
  artist[0] == "R"
end

p artists_with_r

# Como fazer uma lista com somente o primeiro nome de cada artista?
list_firstnames = musicians.map do |artist|
  first_name = artist.split(" ").first
end

p list_firstnames

# Como contar os músicos que começam com a letra "R"?
count_artists_with_r = musicians.count do |artist|
  artist[0] == "R"
end

p count_artists_with_r

# for index in 0...6
#   index = 1
#   musician = musicians[index]
#   puts "#{index + 1} - #{musician}"
# end

# # => 1- David ....

# for musician in musicians
#   musician = "Nick ..."
#   puts "Listen to #{musician}"
# end
