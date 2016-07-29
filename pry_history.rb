Pet
Pet.all
Pet.create(name: "Moose")
exit
Pet.create(name: "Yuki")
exit
params
params["id"]
Pet.find("1")
Pet.find(params["id"])
exit
params
params["pet"]
params.class
params.require("pet")
params.require("pet").permit(:name)
params.require("cbobo")
exit
@pet
@pet.destroy
@pet.delete?
@pet.deleted?
@pet.destroyed?
@pet.reload
xit
exit
pet = Pet.find(8)
pet.visits
pet.vists.create(visited_on: Date.today, weight: 3.62874, notes: "none") 
pet.visits.create(visited_on: Date.today, weight: 3.62874, notes: "none") 
pet.visits.create(visited_on: Date.today, weight_in_kg: 3.62874, notes: "none") 
exit
@visit
exit
params
params["visit"]
exit!
assigns
assigns()
exit
Client.create(name: "The Osbornes")
exit
assigns
assigns["clients"]
exit
assigns("client")
assigns("clients")
exit!
client
client.pets
client.pets.first
client.pets.first.visits
exit
session
ls session
session[:user_id] = 1 
exit
session
session[:user_id]
exit
Client
@client = Client.last
@client.class
@client["name"]
@client["name"] = "Other guys"
@client
{}["book"]
{"book" => 1}["book"]
a = {"book" => 1}
a["book"]
exit
User.all
exit
