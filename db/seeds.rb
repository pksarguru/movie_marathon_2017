User.create(username: "Pavan", password: "Pavan", password_confirmation: "Pavan")
User.create(username: "Logan", password: "Logan", password_confirmation: "Logan")

movies = ["The Godfather", "The Last Samurai", "Gone Baby Gone", "Blade Runner", "2001: A Space Odyssey", "Step Brothers"]

movies.each {|title| Movie.create(title: title)}

pavan.summaries.create(text:"POW!", movie_id: 1)
pavan.summaries.create(text:"PAH!", movie_id: 2)
logan.summaries.create(text:"beep boop!", movie_id: 1)