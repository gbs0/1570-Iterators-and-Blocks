musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# Como pegar o primeiro músico do array?
first_musician = musicians[0] # é o mesmo que musicians.first
puts first_musician

# Como inserir um novo músico dentro do array?
musicians << "Ozzy Osbourne" # Inserindo o objeto no ultimo indice
# é o mesmo que
musicians.push("Taylor Swift")
# é mesmo que
musicians.append("Michael Jackson")

# Como inserir um novo músico a partir de um INDICE especifico?
musicians.insert(0, "Dinho Ouro Preto")
puts musicians

# Como remover um elemento pelo seu INDICE?
musicians.delete_at(0) # Deletamos o primeiro elemento
musicians.delete_at(-1) # Deletamos o ultimo elemento


# Como descobrir o nº de elementos de dentro da array?
musicians.size
musicians.count
musicians.length

# Como organizar o array em order alfabética?
p musicians.sort

# Como Inverter os elementos da array?
musicians.reverse

# Como embaralhar uma array?
musicians.shuffle
p musicians.sample(musicians.count)
# => ["Nick Mason", "Richard Wright", "Ozzy Osbourne", "Taylor Swift", "David Gilmour", "Roger Waters"]

# Pega um elemento randomico da array
musicians.sample # => Uma amostra da array
