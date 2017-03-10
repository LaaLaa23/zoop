Biome.destroy_all
b1 = Biome.create :name => 'Tropical Rainforest', :description => 'Tropical Rainforests are mostly located around the equator, characterised by their high rainfall, warmer climate and high biodiversity.'
b2 = Biome.create :name => 'Savannah', :description => 'A savannah is a rolling grassland scattered with shrubs and isolated trees, which can be found between a tropical rainforest and desert biome. Not enough rain falls on a savannah to support forests. Savannahs are also known as tropical grasslands.'
b3 = Biome.create :name => 'Desert'
b4 = Biome.create :name => 'Tundra'
b5 = Biome.create :name => 'Taiga'
b6 = Biome.create :name => 'Alpine'
b7 = Biome.create :name => 'Chaparral'
b8 = Biome.create :name => 'Deciduous Forest'
b9 = Biome.create :name => 'Grassland'
b10 = Biome.create :name => 'Desert-scrub'
b11 = Biome.create :name => 'Deep Ocean'
b12 = Biome.create :name => 'Continental Shelves'
b13 = Biome.create :name => 'Estuaries and Enclosed seas'
b14 = Biome.create :name => 'Intertidal and Littoral'
b15 = Biome.create :name => 'Coral Reefs'
b16 = Biome.create :name => 'Rivers and Streams'
b17 = Biome.create :name => 'Lakes and Reservoirs'
b18 = Biome.create :name => 'Caves and Underground'


Chordatum.destroy_all
c1 = Chordatum.create :class_name => 'Mammal', :image => 'http://res.cloudinary.com/laalaa23/image/upload/v1489014713/koalaphant.jpg'
c2 = Chordatum.create :class_name => 'Bird', :image =>  'http://res.cloudinary.com/laalaa23/image/upload/v1489014725/angry-bird.jpg'
c3 = Chordatum.create :class_name => 'Reptile', :image =>  'http://res.cloudinary.com/laalaa23/image/upload/v1489014719/frilled-snake.jpg'
c4 = Chordatum.create :class_name => 'Amphibian', :image =>  'http://res.cloudinary.com/laalaa23/image/upload/v1489014712/toads.jpg'
c5 = Chordatum.create :class_name => 'Fish', :image =>  'http://res.cloudinary.com/laalaa23/image/upload/v1489014720/fishish.jpg'

Species.destroy_all
s7 = Species.create :common_name => 'Pukey Lukey', :latin_name => 'Lukus pukus', :description => 'Hobo-bearded overly attached web developer, currently teaching assistant at GA', :status => 'Heartbroken', :habitat => 'Somewhere on the GA campus', :biology => 'Really? I thought it was all VR.', :more_info => 'https://generalassemb.ly/instructors/luke-hammer/8342'

Image.destroy_all
i7 = Image.create :url => 'http://res.cloudinary.com/laalaa23/image/upload/v1489013273/giphy.gif'


# actually will be scraping more of this shit later...


# Associations
s7.biome = b18
s7.chordatum = c1
s7.images << i7
s7.save
