last_twenty_years_wimbledon_winners = 
['Ivanisevic', 'Hewitt', 'Federer', 'Federer', 'Federer', 
  'Federer', 'Federer', 'Nadal', 'Federer', 'Nadal', 'Djokovic', 
  'Federer', 'Murray', 'Djokovic', 'Djokovic', 'Murray', 'Federer',
  'Djokovic', 'Djokovic', 'Djokovic'
]

def substrings(word, dictionary)
  word.upcase!
  dictionary.each do 
    |i| i.upcase!
  end
  arr = word.split(' ')
  arr2 = dictionary.select do
    |w| arr.include? w
  end
  hash = arr2.reduce(Hash.new(0)) do
    |k,v|
    k[v] += 1
    k
  end
  p hash
 
  end

  substrings('FEDERER DjokOvic NaDal', last_twenty_years_wimbledon_winners)
