User.create(email: "test")
User.create!(email: "test")
exit
"Hello World"
exit
BCrypt::Password.create("test")
a = _
a
BCrypt::Password.new("test")
a == "test"
a
a == "test"
a == "test1"
BCrypt::Password.new("test123") == "123"
BCrypt::Password.create("test123") == "123"
a
a.class
a == "test123"
exit
BCrypt::Password.new("$2a$10$z8V539SlVuo802cBndQqrOOyz/MoevHmc/z50tfvm6RB15diW7RtK")
BCrypt::Password.new("$2a$10$z8V539SlVuo802cBndQqrOOyz/MoevHmc/z50tfvm6RB15diW7RtK") == "test"
exit
BCrypt::Password.create("test123") == BCrypt::Password.create("test123")
require 'bcrypt'
BCrypt::Password.create("test123") == BCrypt::Password.create("test123")
BCrypt::Password.create("test123")
exit
BCrypt::Password.create("test123")
BCrypt::Password.create("test123") == BCrypt::Password.create("test123")
BCrypt::Password.create("test123") == BCrypt::Password.new("$2a$10$X540nVwWGo08Wn6qUeDrwO4anVEWptUcui87Xlqsx5X5nTUEJ7SS.")
BCrypt::Password.create("test123") == "test123"
"$2a$10$X540nVwWGo08Wn6qUeDrwO4anVEWptUcui87Xlqsx5X5nTUEJ7SS." == "test123"
BCrypt::Password.new("$2a$10$X540nVwWGo08Wn6qUeDrwO4anVEWptUcui87Xlqsx5X5nTUEJ7SS.") == "test123"
exit
params
params["user"]
params["user"]["password"]
exit
User.last
User.last.password == "test"
BCrypt::Password.new("HASHSTHING")
exit!
User.all.each do |user|
  user.password = "password"
end
User.all.each do |user|
  user.update(password: "password")
end
exit
