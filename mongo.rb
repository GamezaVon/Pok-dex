require 'mongo'

#Mongo client
#client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'Pokedex')

#Uri connection string
#client = Mongo::Client.new('mongodb://127.0.0.1:27017/Pokedex')
#Access a Database and a Collection
client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'Pokedex')
db = client.database
25.times {print "-"}
puts
puts db
puts db.collections

db.collections # returns a list of collection objects
db.collection_names # returns a list of collection names

#Access a collection
collection = client[:Pokemon]
