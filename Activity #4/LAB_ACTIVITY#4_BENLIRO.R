library(dplyr,dbplyr)
library(RMySQL) 
library(DBI)

connection<-dbConnect(RMariaDB::MariaDB(),
                      dsn="RMaria-connection",
                      dbname="sample_db",
                      Server="localhost",
                      user="root")

dbListTables(connection)
dbListFields(connection,"movie_reviews")

query <- "INSERT INTO movie_reviews (movie, name, date, rating, title_review, reviews) VALUES ('Puss n Boots: The Last Wish', 'benjaminskylerhill', '22 December 2022', '10/10', 'Yeah, its that good.','I did not expect the sequel to a decent spin-off Dreamworks film from over a decade ago to be one of the most poignant, introspective, genuinely hilarious, and heartwarming films of the year. But here we are.After an overly cheesy, somewhat clunky opening sequence, The Last Wish very quickly begins developing its zany assortment of characters into distinct quirky personalities with sympathetic desires and clear goals. The film juggles several character arcs and its almost miraculous how it successfully handled all of them with proper set up and satisfying, emotionally weighty payoffs.The screenplay is wacky, witty, and also bursting with heart as it deals with weighty themes of trusting others and finding purpose in any circumstances. And it tackles these themes in ways that are always understandable to all ages but never insultingly oversimplified.What I also didnt expect was that the action sequences would be so well-choreographed and beautifully animated, and that the movie would often be terrifying and violent at times.I adored this film. I think its Dreamworks best film since Megamind and its easily the best true family film of the year.')"

query_result <- dbSendQuery(connection, query)

movie_reviews_dta <- dbGetQuery(connection, "SELECT * FROM sample_db.movie_reviews")
glimpse(movie_reviews_dta)

query <- "INSERT INTO movie_reviews (movie, name, date, rating, title_review, reviews) VALUES ('Puss n Boots: The Last Wish', 'GusherPop', '22 December 2022', '10/10', 'Darker, Better and Brings my childhood back','Puss in Boots: The Last Wish is as spry and light on its feet as its titular feline. The inherently alluring paradox of the swashbuckling kitty from the Shrek universe remains firmly in place 11 years after his first solo feature. Hes a dashing adventurer, a charmer with the ladies, feared and renowned throughout the land -- but hes also unbearably adorable as he laps up milk from a shot glass with his pinky, sandpapery tongue. As always, the charismatic and sensitive Antonio Banderas finds just the right tone in exploring this furry animated figures suave and silly sides. The Last Wish expands the roster of ridiculously talented supporting players from the Oscar-nominated 2011 original Puss in Boots. Joining Banderas and his longtime friend and co-star Salma Hayek Pinault are Florence Pugh, Olivia Colman, Ray Winstone, DaVine Joy Randolph, and John Mulaney, among many others. They bring a surprising amount of substance to what might have been a purely playful endeavor. But of course, the fast-paced humor and elaborate visuals are the main draws of director Joel Crawford and co-director Januel Mercados film. The films aesthetics may rely too heavily on anime influences, especially during the action sequences, but the vibrant colors and rich textures are a delight. From the moss growing on a fearsome forest giant to the shiny silkiness of Puss whiskers blowing in the wind, The Last Wish offers a variety of eye-popping details. And it frequently features dramatic shadows and subtle dissolves to transition from past to present or one scene to the next. But the film also manages to convey messages of selflessness and teamwork in a way that doesnt feel heavy-handed or cloying. And the stellar voice performances and dazzling visuals keep things so engaging you wont need a laser pointer or a catnip-stuffed mouse toy to entertain you.')"

query_result <- dbSendQuery(connection, query)

movie_reviews_dta <- dbGetQuery(connection, "SELECT * FROM sample_db.movie_reviews")
glimpse(movie_reviews_dta)


query <- "INSERT INTO movie_reviews (movie, name, date, rating, title_review, reviews) VALUES ('Puss n Boots: The Last Wish', 'MissSimonetta', '11 February 2023', '8/10 ', ' I was actually moved by the existential crisis of this cartoon cat','CS Lewis once said a childrens story that only appeals to children is not a good childrens film in the least. I can think of plenty of crummy kids movies that illustrate the point, but Id rather bring up a positive example-- PUSS IN BOOTS: THE LAST WISH.I cannot believe I am saying this about a Shrek spinoff, but this movie really is that good. It works on so many levels: as a high-speed comedy, all the jokes land, but as a story about mortality and the meaning of life, this film is oddly compelling and mature. The plot literally involves Puss running from the personification of death, hoping to cling to his life. In between the funny scenes, I was actually moved by the existential crisis of this cartoon cat. Thats no small feat.This is truly a movie kids and adults can cherish.')"

query_result <- dbSendQuery(connection, query)

movie_reviews_dta <- dbGetQuery(connection, "SELECT * FROM sample_db.movie_reviews")
glimpse(movie_reviews_dta)

query <- "INSERT INTO movie_reviews (movie, name, date, rating, title_review, reviews) VALUES ('Puss n Boots: The Last Wish', 'cardsrock', '16 July 2023', '9/10', 'Simply outstanding', 'I cant say I expected this from a Puss in Boots sequel 12 years later. The Last Wish is a true standout feature of 2022 and one of the best animated films in some time.The new art style, clearly inspired by Spider-Verse, feels right at home in this world. I love how it blended the typical CGI look with the new, more hand-drawn style. That combined with some top notch humor and an incredibly emotional story makes this a terrific watch. The film is very singularly focused on Pusss arc, leading to some very satisfying story beats. I had a wonderful time watching this movie and I cant recommend it enough.')"

query_result <- dbSendQuery(connection, query)

movie_reviews_dta <- dbGetQuery(connection, "SELECT * FROM sample_db.movie_reviews")
glimpse(movie_reviews_dta)

query <- "INSERT INTO movie_reviews (movie, name, date, rating, title_review, reviews) VALUES ('Puss n Boots: The Last Wish', 'bbevis-47954', '23 December 2022', '9/10', 'Aged like fine wine.', 'Puss and Boots the last wish is a fantastic sequel and inarguably better than the charming first outing. The animation is brilliant, characters are charming, pacing is tight, very funny and the action is excellent. Not to mention there is a ton of heart. If I were to nitpick I think one of the antagonists trumps the other. One is played for more comedic purposes while the other is an Intimidating physical presence for boots to contend with. The Last Wish has something for everyone and its probably one of the better animated movies Ive seen in sometime. I really dont want to get into the story to avoid spoilers because the movie was a lot of fun, and its best to go into it fresh. If anyone is considering taking their family to see the Last Wish like I did then The Last Wish is an easy recommendation. 100% worth the money. Two thumbs up for team friendship.')"

query_result <- dbSendQuery(connection, query)

movie_reviews_dta <- dbGetQuery(connection, "SELECT * FROM sample_db.movie_reviews")
glimpse(movie_reviews_dta)

query <- "INSERT INTO movie_reviews (movie, name, date, rating, title_review, reviews) VALUES ('Puss n Boots: The Last Wish', 'Genti26', '13 December 2022', '8/10', 'Not only fun, but heartfelt too.', 'This is genuinely one of my favorite films of the year. I hope it gets real recognition and people dont dismiss it as just an animated film.Ive always liked DreamWorks films, with my favorite being How to Train Your Dragon 2, but after rewatching the first Puss in Boots movie, I wasnt expecting much for this sequel, eleven years after. I like the first installment for sure but its certainly a lot simpler in story than Id prefer. This one however, has such a rich emotional aspect to it that I truly felt something during it.There were also certain scenes involving a wolf character that were quite creepy. I think kids will have a lot of fun with this movie, but at the core this is a story about family and understanding the value of things and/or people who are in front of you already. And thats a message that every person of any age can get something out of. The voice acting is top-notch and the animation is such a ridiculous step-up from the last time. This is such a cool direction to take this sequel into and I dug it all the way through.Theres really not much negative to say other than the ending feels like it should have been slightly more concise, but thats it. I loved it and Ill rewatch it as soon as it releases on VOD.')"

query_result <- dbSendQuery(connection, query)

movie_reviews_dta <- dbGetQuery(connection, "SELECT * FROM sample_db.movie_reviews")
glimpse(movie_reviews_dta)

query <- "INSERT INTO movie_reviews (movie, name, date, rating, title_review, reviews) VALUES ('Puss n Boots: The Last Wish', 'siggirules', '7 December 2022', '9/10', ' Dreamworks best movie besides Shrek and How to Train your Dragon!.', 'I did not have many expectations going into this with my daughter, Ive seen the main Shrek movies but noon of the other Puss in Boots spin-offs. I was shocked at how good a movie this was when the credits rolled!The story itself is functional, but all characters are given meaningful and relatable arcs. Between the melanchonic Puss reaching the end of his days as a great hero, his always positive dog sidekick and the 3 antagonistic parties trying to reach the magical macguffin there is a lot going on and none of it feels forced in.The two greatest assets the movie brings is its humor and the stunning action scenes. First of all, this movie has bite, it is back to the tone of the first Shrek movie with lots of jokes that are working on a children and adult level of understanding. While the story is easy to follow for kids, the themes explored are relatively mature and will keep adults engaged.Secondly, while Disney/Pixar movies lately fail to make action exiting with their polished CGI style, Puss in boots goes full Into the Spiderverse once a fight breaks out. Glorious 12 frames per second, hyper stylized with all the filters and gimmicks necessary to elevate the big set-pieces to something truly special and memorable. Especially Pusss duels against a mysterious bounty hunter are the highlights.While not entirely original, the Puss in Boots: The Last Wish combines the edgy humor of Shrek with the visual wonders of Into the Spiderverse and strings it along a relatively matured heroes journey coming to its end tale that is closer to Logan than any other animation I can think off. Oh and just in case (not that I personally care much about it) there is zero political agenda to be found here to be a distraction of the perception.')"

query_result <- dbSendQuery(connection, query)

movie_reviews_dta <- dbGetQuery(connection, "SELECT * FROM sample_db.movie_reviews")
glimpse(movie_reviews_dta)

query <- "INSERT INTO movie_reviews (movie, name, date, rating, title_review, reviews) VALUES ('Puss n Boots: The Last Wish', 'Avwillfan89', '21 January 2023', '8/10', '  A return to form indeed.', 'I was not at all interested in watching this film. As most of the animated movies from the major studios, especially from DreamWorks have been extremely dull and very samey. I cant think of a good one that Ive seen since How To Train Your Dragon 2.But then I read all of the brilliant reviews and decided to give this one a go. And to my surprise, it was definitely a welcome change.Puss gets an existential crises when Death (AKA the Big Bad Wolf) comes for his last life after Puss has frivolously wasted his 8 other ones. Its interesting how dark it gets in these scenes, with Puss, who has never been afraid of death, gets scared and has a wakeup call. And learns to value life and the lives of others a bit more.Although it doesnt go as far as I thought it would when it came to heavy themes and character development, it certainly reminded me of the good old days of DreamWorks animation. So I absolutely consider this film a step in the right direction for this studio.')"

query_result <- dbSendQuery(connection, query)

movie_reviews_dta <- dbGetQuery(connection, "SELECT * FROM sample_db.movie_reviews")
glimpse(movie_reviews_dta)


View(movie_reviews_dta)

dbDisconnect(connection)

write.csv(movie_reviews_dta, file = "movie reviews using sql.csv")


