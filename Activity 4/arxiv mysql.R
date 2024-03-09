library(dplyr,dbplyr)
library(RMariaDB) 


connection <- dbConnect(RMariaDB::MariaDB(), 
                        dsn="MySQL-connection",
                        Server = "localhost",
                        dbname = "sample_db", 
                        user = "root", 
                        ) 

dbListTables(connection)

dbListFields(connection,"authors")

dbListFields(connection,"posts")

posts_dta <- dbGetQuery(connection, "SELECT * FROM sample_db.posts")
posts_dta

posts_data <- dbGetQuery(connection, "SELECT title,description FROM sample_db.posts")
posts_data[c(1:2),]

SqlQuery <- "
  SELECT title,description 
  FROM sample_db.posts
  "

as_tibble(dbGetQuery(connection,SqlQuery))

save(posts_data, file = "Arxiv MYSQL.RData")






