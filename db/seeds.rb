# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!(username: "George", password: "password")
User.create!(username: "Reginald", password: "password")
User.create!(username: "Georgerson", password: "password")
User.create!(username: "Reginaldson", password: "password")
User.create!(username: "Kaname", password: "password")
User.create!(username: "Hayate", password: "password")
User.create!(username: "Mirage", password: "password")
User.create!(username: "Reina", password: "password")
User.create!(username: "Alto", password: "password")
User.create!(username: "Michael", password: "password")
  list_one = List.create!(image_ref: "https://lh5.ggpht.com/koXV4NUZ7rRjm6LbBSvOLzDRe9drUeTmiJqvtvHVPbWRtOze1Giz1lBJFgRjzm4TOvZP=w300", source_ref: "http://www.imdb.com/chart/top",
    list_desc: "A user curated list of the top two-hundred and fifty movies in the databse",
    list_title: "The Internet Movie Database top movies.", list_type: "Movies", user_id: user.id)
  Item.create!(list_id: list_one.id, one: "The Shawshank Redemption", two: "The Godfather", three: "The Godfather: Part II",
  four: "The Dark Knight", five: "Schindler's List", six: "12 Angry Men", seven: "Pulp Fiction", eight: "The Lord of the Rings: The Return of the King",
  nine: "The Good, the Bad and the Ugly", ten: "Fight Club")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_one.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_two = List.create!(image_ref: "http://www.mix80.com/dimages/7mrmisterbroken.jpg", source_ref: "http://www.billboard.com/charts/hot-100/1985-12-14",
    list_desc: "A list of the top selling albums and air play of the given time period. Week of 12/14/1985",
    list_title: "The Billboard Top 100 for December 14, 1985.", list_type: "Music", user_id: user.id)
  Item.create!(list_id: list_two.id, one: "Broken Wings", two: "Separate Lives (Theme From White Nights)", three: "Say You, Say Me (Title Song From White Nights)",
  four: "Party All The Time", five: "Never", six: "Election Day", seven: "Alive And Kicking", eight: "Sleeping Bag",
  nine: "I Miss You", ten: "We Built This City")
  rand(1..3).times do |x|
    Vote.create!(list_id: list_two.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_three = List.create!(image_ref: "http://tvfiles.alphacoders.com/267/poster-267.jpg", source_ref: "http://www.animenewsnetwork.com/encyclopedia/ratings-anime.php?top50=best_bayesian",
    list_desc: "A list of the best rated, by users, anime. This is a bayesian estime which weights votes for those with less total votes overall.",
    list_title: "Top 50 Best Rated Anime (bayesian estime) from Anime News Network.", list_type: "Animation", user_id: user.id)
  Item.create!(list_id: list_three.id, one: "Steins;Gate (TV)", two: "	Fullmetal Alchemist: Brotherhood (TV)", three: "Clannad After Story (TV)",
  four: "Rurouni Kenshin: Trust & Betrayal (OAV)", five: "Mushishi: The Next Chapter (TV)", six: "Code Geass: Lelouch of the Rebellion R2 (TV)",
   seven: "	Spirited Away (movie)", eight: "Cowboy Bebop (TV)", nine: "(The) Disappearance of Haruhi Suzumiya (movie)", ten: "Princess Mononoke (movie)")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_three.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_four = List.create!(image_ref: "http://vignette4.wikia.nocookie.net/marvel_dc/images/5/5c/Watchmen_HC.jpg/revision/latest?cb=20080618051226",
  source_ref: "http://www.complex.com/pop-culture/2013/01/the-25-comic-books-you-need-to-read-before-you-die/maus",
    list_desc: "A list of the top 25 comics by Jason Serafino for Complex",
    list_title: "The 25 Comic Books You Need To Read Before You Die,", list_type: "Misc", user_id: user.id)
  Item.create!(list_id: list_four.id, one: "Maus (Raw, Pantheon Books)", two: "Watchmen (DC/Vertigo)", three: "Sandman (DC/Vertigo)",
  four: "The Dark Knight Returns (DC Entertainment)", five: "Preacher (DC/Vertigo)", six: "Transmetropolitan (DC/Vertigo/Helix)",
  seven: "V for Vendetta (Quality Comics, DC/Vertigo)", eight: "Ghost World (Fantagraphics Books)", nine: "American Splendor (self-published, Dark Horse Comics, DC Entertainment)",
   ten: "Hellblazer (DC/Vertigo)")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_four.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_five = List.create!(image_ref: "https://upload.wikimedia.org/wikipedia/commons/6/69/Wizard_of_oz_movie_poster.jpg", source_ref: "http://www.rottentomatoes.com/top/bestofrt/",
    list_desc: "Movies with 40 or more critic reviews vie for their place in history at Rotten Tomatoes. Eligible movies are ranked based on their Adjusted Scores.",
    list_title: "TOP 100 MOVIES OF ALL TIME", list_type: "Movies", user_id: user.id)
  Item.create!(list_id: list_five.id, one: "The Wizard of Oz (1939)", two: "The Third Man (1949)", three: "Citizen Kane (1941)",
  four: "Das Cabinet des Dr. Caligari. (The Cabinet of Dr. Caligari) (1920)", five: "All About Eve (1950)", six: "Modern Times (1936)",
  seven: "The Godfather (1972)", eight: "E.T. The Extra-Terrestrial (1982)", nine: "Metropolis (1927)", ten: "Singin' in the Rain (1952)")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_five.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_six = List.create!(image_ref: "http://ecx.images-amazon.com/images/I/41FLqHFwwuL._SX328_BO1,204,203,200_.jpg", source_ref: "http://thegreatestbooks.org/",
    list_desc: "A list of the greatest books of all time", list_title: "The Greatest Books", list_type: "Misc", user_id: user.id)
  Item.create!(list_id: list_six.id, one: "In Search of Lost Time by Marcel Proust", two: "Ulysses by James Joyce", three: "Don Quixote by Miguel de Cervantes",
  four: "Moby Dick by Herman Melville", five: "Hamlet by William Shakespeare", six: "War and Peace by Leo Tolstoy", seven: "The Odyssey by Homer",
  eight: "The Great Gatsby by F. Scott Fitzgerald", nine: "The Divine Comedy by Dante Alighieri", ten: "Madame Bovary by Gustave Flaubert")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_six.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_seven = List.create!(image_ref: "https://s-media-cache-ak0.pinimg.com/236x/cb/b8/6e/cbb86e3432bb58f880ed1141c3cf471b.jpg", source_ref: "http://pitchfork.com/features/lists-and-guides/9763-the-best-music-videos-of-2015/",
    list_desc: "From Nicki and Beyoncé’s ecstatic Coachella road trip, to David Bowie’s haunting interstellar hallucination, to Oneohtrix Point Never’s epic LARP-ing battle,
    to Charli XCX’s psychotic death-by-selfie freak show, to Kendrick’s powerful levitating act, here are our 20 favorite videos of the year.",
    list_title: "The Best Music Videos of 2015", list_type: "Music", user_id: user.id)
  Item.create!(list_id: list_seven.id, one: "Kendrick Lamar: 'Alright'", two: "Separate Lives (Theme From White Nights)", three: "Say You, Say Me (Title Song From White Nights)",
  four: 'Rihanna: “Bitch Better Have My Money”', five: 'Tame Impala: “The Less I Know the Better”', six: 'Kanye West: "Only One" [ft. Paul McCartney]',
  seven: 'Drake: “Hotline Bling”', eight: 'Run the Jewels: “Close Your Eyes”', nine: 'Oneohtrix Point Never: “Sticky Drama”', ten: 'Lana Del Rey: “High by the Beach”')
  rand(1..8).times do |x|
    Vote.create!(list_id: list_seven.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_eight = List.create!(image_ref: "https://img.buzzfeed.com/buzzfeed-static/static/2015-09/23/17/enhanced/webdr04/enhanced-buzz-4672-1443043495-15.jpg?no-auto", source_ref: "http://www.buzzfeed.com/annamenta/the-funniest-spongebob-squarepants-quotes#.gqPvoA3Wpz",
    list_desc: "We asked the BuzzFeed Community to share their favorite quotes from SpongeBob SquarePants. Here are the hilarious responses",
    list_title: "25 Of The Most Hilarious “SpongeBob” Quotes", list_type: "Misc", user_id: user.id)
  Item.create!(list_id: list_eight.id, one: "When Patrick asked the question on every musician’s mind", two: "When SpongeBob coined a mantra of body positivity.",
  three: "When Patrick was the world’s worst receptionist", four: "And when he was even worse at identifying animals",
  five: "When the narrator was 6000% done and quit the show", six: "When they had a “panty raid” joke on a CHILDREN’S SHOW",
  seven: "When the punch line of the entire episode was a reference to a 1922 German Expressionist horror film",
  eight: "When Patrick told a story we can all sometimes relate to", nine: "Every time there was any sort of disaster and that one guy hurt his leg",
  ten: "When SpongeBob revealed some interesting history about the pioneers of ocean life")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_eight.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_nine = List.create!(image_ref: "https://assets-cdn.github.com/images/modules/logos_page/Octocat.png", source_ref: "http://www.computerworld.com/article/2473298/application-development/120001-GitHub-s-top-10-rock-star-projects.html",
    list_desc: "Creators and contributors shed light on GitHub's most-popular projects -- and sing praise to the code-sharing site's impact on their community and code",
    list_title: "GitHub's top 10 most popular projects", list_type: "Misc", user_id: user.id)
  Item.create!(list_id: list_nine.id, one: "Bootstrap", two: "Node.js", three: "JQuery", four: "HTML5 Boilerplate", five: "Ruby on Rails",
  six: "D3", seven: "Impress.js", eight: "Font Awesome", nine: "Backbone.js", ten: "Homebrew")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_nine.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_ten = List.create!(image_ref: "https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2010/4/27/1272409048801/Einstien-the-worlds-small-001.jpg?w=620&q=55&auto=format&usm=12&fit=max&s=7eaca0efcea3ab1fa9d72a15faf030fd",
  source_ref: "http://listverse.com/2013/04/14/10-ridiculously-tiny-animals/",
    list_desc: "Every respected scientist will be able to tell you that there is a direct relationship with how small something is,
    and how adorable it is. Kittens, mini coopers, babies, hell even baby shoes are so adorable it will cause a person’s voice to jump several octaves up.
    But grizzly bears, hummers, fat guys etc. just don’t have the same effect, impressive as they are. So here are ten animals so ridiculously tiny,
    it’s hard to believe they were ever even spotted.",
    list_title: "10 Ridiculously Tiny Animals", list_type: "Animals", user_id: user.id)
  Item.create!(list_id: list_ten.id, one: "Einstein", two: "Paedophryne Amauensis", three: "Hippocampus Denise",
  four: "Brookesia Micra", five: "Leptotyphlops Carlae", six: "Octopus Wolfi", seven: "Speckled Padloper Tortoise",
  eight: "Kitti’s Hog-nosed Bat", nine: "Pygmy Marmoset", ten: "Munchkin Cat")
  9.times do |x|
    Vote.create!(list_id: list_ten.id, user_id: x+1, up_vote: 1, down_vote: 0)
  end

  list_eleven = List.create!(image_ref: "http://assets.nydailynews.com/polopoly_fs/1.374193.1314473371!/img/httpImage/image.jpg_gen/derivatives/article_970/amd-palin-jpg.jpg",
  source_ref: "http://www.businessinsider.com/best-david-letterman-top-10-lists-2014-4",
    list_desc: "To compile the ranked list, we took into consideration top-viewed lists from YouTube and talked-about lists across the Internet. We also looked at prior anniversary lists from Letterman himself",
    list_title: "The Top 10 David Letterman Top 10 Lists", list_type: "Misc", user_id: user.id)
  Item.create!(list_id: list_eleven.id, one: "Top 10 George Bush Moments", two: "Top Ten List of Top 10 Favorite California Names",
  three: "Barack Obama delivers his Top Ten Campaign Promises", four: 'Top Ten Things Never Before Said on "The Sopranos" as presented by the cast.',
  five: "Top Ten President Obama Excuses", six: "Top Ten Ways The Show Has Changed Since 1993", seven: "Robert De Niro and Al Pacino's Top Ten Reasons I Like Being An Actor",
  eight: "Ricky Gervais shares the Top Ten Stupid Things Americans Say To Brits", nine: "Top Ten Things I Have Learned Working For 'The Late Show'",
  ten: "Top Ten Reasons I'm glad to be named Justin Bieber")
  8.times do |x|
    Vote.create!(list_id: list_eleven.id, user_id: x+1, up_vote: 1, down_vote: 0)
  end

  list_twelve = List.create!(image_ref: "http://blog.honeyfeed.fm/wp-content/uploads/2015/05/zeta-gundam-dvd-300x424.jpg", source_ref: "http://blog.honeyfeed.fm/top-10-gundam-series-since-1979-best-recommendations/",
    list_desc: "A blog post detailing the websites top ten seires in the Gundam franchise",list_title: "Top 10 Gundam Series Since 1979 [Best Recommendations]",
    list_type: "Animation", user_id: user.id)
  Item.create!(list_id: list_twelve.id, one: "Zeta Gundam", two: "Gundam 08th MS Team", three: "Mobile Suit Gundam", four: "Gundam Unicorn",
  five: "New Mobile Report Gundam Wing", six: "After War Gundam X", seven: "Gundam 0080 War in the Pocket", eight: "Char’s Counterattack",
  nine: "Turn A Gundam", ten: "Mobile Fighter G Gundam")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_twelve.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_thirteen = List.create!(image_ref: "https://img.buzzfeed.com/buzzfeed-static/static/2014-12/9/12/enhanced/webdr05/enhanced-1358-1418146830-31.jpg?no-auto", source_ref: "http://www.buzzfeed.com/mjs538/the-40-most-important-corgis-of-2014#.diE1EgQ3pW",
    list_desc: "The most important end-of-the-year list is back.", list_title: "The 40 Most Important Corgis Of 2014", list_type: "Animals", user_id: user.id)
  Item.create!(list_id: list_thirteen.id, one: "Corgnelius and Stumphrey", two: "The Corgi That Fell in the Mud", three: "The Corgi That Was Used for Scale",
  four: "Penny", five: "The Corgi That Came Out of a Package of Cookies", six: "The Corgi and Cat That Became Best Friends", seven: "Otis",
  eight: "Chubby", nine: "Bentley", ten: "The Corgi That Fell Asleep in Class")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_thirteen.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_fourteen = List.create!(image_ref: "http://static.tumblr.com/97f1891e608261d7e8e5846badf43853/fxabo9x/1rZmobjim/tumblr_static_598639_457747654248676_1218767458_n.jpg",
  source_ref: "http://www.ranker.com/crowdranked-list/my-favorite-cartoons-of-all-time",
    list_desc: "A site that ranks items based on user votes.", list_title: "The Best Cartoons of All Time", list_type: "Animation", user_id: user.id)
  Item.create!(list_id: list_fourteen.id, one: "Looney Toons", two: "The Simpsons", three: "Tom and Jerry", four: "The Flinstones",
  five: "Scooby-Doo, Where are you!", six: "SpongeBob SquarePants", seven: "Batman: The Animated Series", eight: "Avatar: The Last Airbender",
  nine: "Dexter's Laboratory", ten: "Futurama")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_fourteen.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_fifteen = List.create!(image_ref: "http://www.cybercandy.co.uk/store/jelly-belly-2.jpg", source_ref: "http://www.thetoptens.com/best-jelly-belly-flavors/",
    list_desc: "A site that accepts user votes and coments to rank items",
    list_title: "Best Jelly Belly Flavors", list_type: "Food", user_id: user.id)
  Item.create!(list_id: list_fifteen.id, one: "Green Apple", two: "Toasted Marshmallow", three: "Buttered Popcorn", four: "Tutti Frutti",
  five: "Juicy Pear", six: "Very Cherry", seven: "Watermelon", eight: "Coconut", nine: "Apple Pie", ten: "Crushed Pineapple")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_fifteen.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_sixteen = List.create!(image_ref: "http://vignette3.wikia.nocookie.net/terminator/images/1/14/Terminator_2_poster.jpg/revision/20110513040054", source_ref: "http://screenrant.com/10-best-action-movies-ever-list/",
    list_desc: "A list of the top ten action movies by Chris Agar of Screenrant. Ordered by release year.", list_title: "10 Best Action Movies Ever Made", list_type: "Movies", user_id: user.id)
  Item.create!(list_id: list_sixteen.id, two: "FIRST BLOOD (1982)", three: "LETHAL WEAPON (1987)", four: "DIE HARD (1988)", five: "TERMINATOR 2: JUDGMENT DAY (1991)",
  six: "POINT BREAK (1991)", seven: "BAD BOYS (1995)", eight: "THE MATRIX (1999)", nine: "THE BOURNE ULTIMATUM (2007)",
  ten: "THE RAID: REDEMPTION (2012)", one: "RAIDERS OF THE LOST ARK (1981)")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_sixteen.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_seventeen = List.create!(image_ref: "https://imagesilove.files.wordpress.com/2010/02/mel-brooks.jpg", source_ref: "http://splitsider.com/2015/03/the-20-best-comedy-movies-of-all-time/",
    list_desc: "A list of the 20 best Comedies by John Wenzel of Splitsider",
    list_title: "The 20 Best Comedy Movies of All Time", list_type: "Movies", user_id: user.id)
  Item.create!(list_id: list_seventeen.id, one: "Blazing Saddles (1974)", two: "Dr. Strangelove (Or How I Learned to Stop Worrying and Love the Bomb) (1964)",
  three: "Some Like It Hot (1959)", four: "Monty Python and the Holy Grail (1975)", five: "Duck Soup (1933)",
  six: "Annie Hall (1977)", seven: "Caddyshack (1980)", eight: "This Is Spinal Tap (1984)", nine: "Raising Arizona (1987)", ten: "The Jerk (1979)")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_seventeen.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_eighteen = List.create!(image_ref: "http://cdn.toy-tma.com/wp-content/uploads/2011/01/Gurren-Lagann-Poster.jpg", source_ref: "http://blog.honeyfeed.fm/top-10-anime-made-by-gainax/",
    list_desc: "A blog post detailing the websites top ten anime series by the studio Gainax",
    list_title: "Top 10 Anime Made by Gainax [Best Recommendations]", list_type: "Anime", user_id: user.id)
  Item.create!(list_id: list_eighteen.id, one: "Neon Genesis Evangelion (Shin Seiki Evangelion)", two: "Tengen Toppa Gurren Lagann",
  three: "Gunbuster (Toppu wo Nerae! Gunbuster)", four: "FLCL (Fooly Cooly)", five: "Royal Space Force: The Wings of Honnêamise",
  six: "Panty and Stocking with Garterbelt", seven: "Nadia: Secret of Blue Water (Fushigi no Umi no Nadia)", eight: "Otaku no Video",
  nine: "Magical Shopping Arcade Abenobashi (Abenobashi Maho Shoutengai)", ten: "Medaka Box")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_eighteen.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_nineteen = List.create!(image_ref: "http://farm4.static.flickr.com/3101/3199702248_54e49a36ce.jpg", source_ref: "https://en.wikipedia.org/wiki/List_of_best-selling_game_consoles#All_game_consoles",
    list_desc: "A list of Video game consoles ranked by units sold.", list_title: "All Game Consoles", list_type: "Video Games", user_id: user.id)
  Item.create!(list_id: list_nineteen.id, one: "Playstation 2", two: "Nintendo DS", three: "Game Boy/Game Boy Color", four: "Playstation", five: "Wii",
  six: "Xbox360", seven: "Playstation 3", eight: "Playstation Portable", nine: "Game Boy Advance", ten: "Nintendo Entertainment System")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_nineteen.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end

  list_twenty = List.create!(image_ref: "http://www.brainygamer.com/.a/6a00e3982444028833016762475cba970b-pi", source_ref: "https://www.vg247.com/2014/08/29/50-best-rpgs-ever/",
    list_desc: "A list of the 50 best RPGs by VG24/7", list_title: "The 50 best RPGs EVER", list_type: "Video Games", user_id: user.id)
  Item.create!(list_id: list_twenty.id, one: "The Elder Scrolls V: Skyrim", two: "Mass Effect", three: "Baldur’s Gate", four: "World of Warcraft",
  five: "Fallout (Interplay)", six: "Diablo 1 & 2", seven: "Dark Souls", eight: "Final Fantasy", nine: "Zelda 2: The Adventure of Link", ten: "The Witcher")
  rand(1..8).times do |x|
    Vote.create!(list_id: list_twenty.id, user_id: x+2, up_vote: 1, down_vote: 0)
  end
