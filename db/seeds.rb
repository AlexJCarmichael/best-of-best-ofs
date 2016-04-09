# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!(username: "George", password: "password")
  list_one = List.create!(image_ref: "#", source_ref: "http://www.imdb.com/chart/top",
    list_desc: "A user curated list of the top two-hundred and fifty movies in the databse",
    list_title: "The Internet Movie Database top movies.", list_type: "Movies", user_id: user.id)
  Item.create!(list_id: list_one.id, one: "The Shawshank Redemption", two: "The Godfather", three: "The Godfather: Part II",
  four: "The Dark Knight", five: "Schindler's List", six: "12 Angry Men", seven: "Pulp Fiction", eight: "The Lord of the Rings: The Return of the King",
  nine: "The Good, the Bad and the Ugly", ten: "Fight Club")
  rand(1..15).times do
    Vote.create!(list_id: list_one.id, user_id: user.id, up_vote: 1, down_vote: 0)
  end

  list_two = List.create!(image_ref: "#", source_ref: "http://www.billboard.com/charts/hot-100/1985-12-14",
    list_desc: "A list of the top selling albums and air play of the given time period. Week of 12/14/1985",
    list_title: "The Billboard Top 100 for December 14, 1985.", list_type: "Music", user_id: user.id)
  Item.create!(list_id: list_two.id, one: "Broken Wings", two: "Separate Lives (Theme From White Nights)", three: "Say You, Say Me (Title Song From White Nights)",
  four: "Party All The Time", five: "Never", six: "Election Day", seven: "Alive And Kicking", eight: "Sleeping Bag",
  nine: "I Miss You", ten: "We Built This City")
  rand(1..15).times do
    Vote.create!(list_id: list_two.id, user_id: user.id, up_vote: 1, down_vote: 0)
  end

  list_three = List.create!(image_ref: "#", source_ref: "http://www.animenewsnetwork.com/encyclopedia/ratings-anime.php?top50=best_bayesian",
    list_desc: "A list of the best rated, by users, anime. This is a bayesian estime which weights votes for those with less total votes overall.",
    list_title: "Top 50 Best Rated Anime (bayesian estime) from Anime News Network.", list_type: "Misc", user_id: user.id)
  Item.create!(list_id: list_three.id, one: "Steins;Gate (TV)", two: "	Fullmetal Alchemist: Brotherhood (TV)", three: "Clannad After Story (TV)",
  four: "Rurouni Kenshin: Trust & Betrayal (OAV)", five: "Mushishi: The Next Chapter (TV)", six: "Code Geass: Lelouch of the Rebellion R2 (TV)",
   seven: "	Spirited Away (movie)", eight: "Cowboy Bebop (TV)", nine: "(The) Disappearance of Haruhi Suzumiya (movie)", ten: "Princess Mononoke (movie)")
  rand(1..15).times do
    Vote.create!(list_id: list_three.id, user_id: user.id, up_vote: 1, down_vote: 0)
  end

  list_four = List.create!(image_ref: "#", source_ref: "http://www.complex.com/pop-culture/2013/01/the-25-comic-books-you-need-to-read-before-you-die/maus",
    list_desc: "A list of the top 25 comics by Jason Serafino for Complex",
    list_title: "The 25 Comic Books You Need To Read Before You Die,", list_type: "Misc", user_id: user.id)
  Item.create!(list_id: list_four.id, one: "Maus (Raw, Pantheon Books)", two: "Watchmen (DC/Vertigo)", three: "Sandman (DC/Vertigo)",
  four: "The Dark Knight Returns (DC Entertainment)", five: "Preacher (DC/Vertigo)", six: "Transmetropolitan (DC/Vertigo/Helix)",
  seven: "V for Vendetta (Quality Comics, DC/Vertigo)", eight: "Ghost World (Fantagraphics Books)", nine: "American Splendor (self-published, Dark Horse Comics, DC Entertainment)",
   ten: "Hellblazer (DC/Vertigo)")
  rand(1..15).times do
    Vote.create!(list_id: list_four.id, user_id: user.id, up_vote: 1, down_vote: 0)
  end

  list_five = List.create!(image_ref: "#", source_ref: "http://www.rottentomatoes.com/top/bestofrt/",
    list_desc: "Movies with 40 or more critic reviews vie for their place in history at Rotten Tomatoes. Eligible movies are ranked based on their Adjusted Scores.",
    list_title: "TOP 100 MOVIES OF ALL TIME", list_type: "Movies", user_id: user.id)
  Item.create!(list_id: list_five.id, one: "The Wizard of Oz (1939)", two: "The Third Man (1949)", three: "Citizen Kane (1941)",
  four: "Das Cabinet des Dr. Caligari. (The Cabinet of Dr. Caligari) (1920)", five: "All About Eve (1950)", six: "Modern Times (1936)",
  seven: "The Godfather (1972)", eight: "E.T. The Extra-Terrestrial (1982)", nine: "Metropolis (1927)", ten: "Singin' in the Rain (1952)")
  rand(1..15).times do
    Vote.create!(list_id: list_five.id, user_id: user.id, up_vote: 1, down_vote: 0)
  end

  list_six = List.create!(image_ref: "#", source_ref: "http://thegreatestbooks.org/",
    list_desc: "A list of the greatest books of all time", list_title: "The Greatest Books", list_type: "Misc", user_id: user.id)
  Item.create!(list_id: list_six.id, one: "In Search of Lost Time by Marcel Proust", two: "Ulysses by James Joyce", three: "Don Quixote by Miguel de Cervantes",
  four: "Moby Dick by Herman Melville", five: "Hamlet by William Shakespeare", six: "War and Peace by Leo Tolstoy", seven: "The Odyssey by Homer",
  eight: "The Great Gatsby by F. Scott Fitzgerald", nine: "The Divine Comedy by Dante Alighieri", ten: "Madame Bovary by Gustave Flaubert")
  rand(1..15).times do
    Vote.create!(list_id: list_six.id, user_id: user.id, up_vote: 1, down_vote: 0)
  end

  list_seven = List.create!(image_ref: "#", source_ref: "http://pitchfork.com/features/lists-and-guides/9763-the-best-music-videos-of-2015/",
    list_desc: "From Nicki and Beyoncé’s ecstatic Coachella road trip, to David Bowie’s haunting interstellar hallucination, to Oneohtrix Point Never’s epic LARP-ing battle,
    to Charli XCX’s psychotic death-by-selfie freak show, to Kendrick’s powerful levitating act, here are our 20 favorite videos of the year.",
    list_title: "The Best Music Videos of 2015", list_type: "Music", user_id: user.id)
  Item.create!(list_id: list_seven.id, one: "Kendrick Lamar: 'Alright'", two: "Separate Lives (Theme From White Nights)", three: "Say You, Say Me (Title Song From White Nights)",
  four: 'Rihanna: “Bitch Better Have My Money”', five: 'Tame Impala: “The Less I Know the Better”', six: 'Kanye West: "Only One" [ft. Paul McCartney]',
  seven: 'Drake: “Hotline Bling”', eight: 'Run the Jewels: “Close Your Eyes”', nine: 'Oneohtrix Point Never: “Sticky Drama”', ten: 'Lana Del Rey: “High by the Beach”')
  rand(1..15).times do
    Vote.create!(list_id: list_seven.id, user_id: user.id, up_vote: 1, down_vote: 0)
  end

  list_eight = List.create!(image_ref: "#", source_ref: "http://www.buzzfeed.com/annamenta/the-funniest-spongebob-squarepants-quotes#.gqPvoA3Wpz",
    list_desc: "We asked the BuzzFeed Community to share their favorite quotes from SpongeBob SquarePants. Here are the hilarious responses",
    list_title: "25 Of The Most Hilarious “SpongeBob” Quotes", list_type: "Misc", user_id: user.id)
  Item.create!(list_id: list_eight.id, one: "When Patrick asked the question on every musician’s mind", two: "When SpongeBob coined a mantra of body positivity.",
  three: "When Patrick was the world’s worst receptionist", four: "And when he was even worse at identifying animals",
  five: "When the narrator was 6000% done and quit the show", six: "When they had a “panty raid” joke on a CHILDREN’S SHOW",
  seven: "When the punch line of the entire episode was a reference to a 1922 German Expressionist horror film",
  eight: "When Patrick told a story we can all sometimes relate to", nine: "Every time there was any sort of disaster and that one guy hurt his leg",
  ten: "When SpongeBob revealed some interesting history about the pioneers of ocean life")
  rand(1..15).times do
    Vote.create!(list_id: list_eight.id, user_id: user.id, up_vote: 1, down_vote: 0)
  end

  list_nine = List.create!(image_ref: "#", source_ref: "http://www.computerworld.com/article/2473298/application-development/120001-GitHub-s-top-10-rock-star-projects.html",
    list_desc: "Creators and contributors shed light on GitHub's most-popular projects -- and sing praise to the code-sharing site's impact on their community and code",
    list_title: "GitHub's top 10 most popular projects" list_type: "Misc", user_id: user.id)
  Item.create!(list_id: list_nine.id, one: "Bootstrap", two: "Node.js", three: "Say You, Say Me (Title Song From White Nights)",
  four: "Party All The Time", five: "Never", six: "Election Day", seven: "Alive And Kicking", eight: "Sleeping Bag",
  nine: "I Miss You", ten: "We Built This City")
  rand(1..15).times do
    Vote.create!(list_id: list_nine.id, user_id: user.id, up_vote: 1, down_vote: 0)
  end

  list_ten = List.create!(image_ref: "#", source_ref: "http://www.billboard.com/charts/hot-100/1985-12-14",
    list_desc: "A list of the top selling albums and air play of the given time period. Week of 12/14/1985",
    list_title: "The Billboard Top 100 for December 14, 1985.", list_type: "Music", user_id: user.id)
  Item.create!(list_id: list_ten.id, one: "Broken Wings", two: "Separate Lives (Theme From White Nights)", three: "Say You, Say Me (Title Song From White Nights)",
  four: "Party All The Time", five: "Never", six: "Election Day", seven: "Alive And Kicking", eight: "Sleeping Bag",
  nine: "I Miss You", ten: "We Built This City")
  rand(1..15).times do
    Vote.create!(list_id: list_ten.id, user_id: user.id, up_vote: 1, down_vote: 0)
  end
