## Trello
[Best of Trello Board](https://trello.com/b/4GWyWSjn/best-of-best-of-lists)

##Heroku
[Wolfpack Api Heroku App](https://wolfpack-lists.herokuapp.com/)

#Using the API for the Best of's
---

##Get requests
#####Routes
/api/lists : Acess the top 5 lists by aggreagate vote
/api/list?page=2 : Acess next 5 lists by aggregate vote
/api/post/:id : Access the show page for the list at that ID number.

Lists can be replaced with votes, users, and items. Items, users, or votes show all, not the top 5.

###Sample
Api call : https://wolfpack-lists.herokuapp.com/api/lists/1

```{
  "id": 1,
  "image_ref": "#",
  "source_ref": "http://www.imdb.com/chart/top",
  "list_desc": "A user curated list of the top two-hundred and fifty movies in the databse",
  "list_title": "The Internet Movie Database top movies.",
  "user_id": 1,
  "created_at": "2016-04-10T20:22:43.102Z",
  "updated_at": "2016-04-10T20:22:43.102Z",
  "list_type": "Movies",
  "items": [
    {
      "id": 1,
      "one": "The Shawshank Redemption",
      "two": "The Godfather",
      "three": "The Godfather: Part II",
      "four": "The Dark Knight",
      "five": "Schindler's List",
      "six": "12 Angry Men",
      "seven": "Pulp Fiction",
      "eight": "The Lord of the Rings: The Return of the King",
      "nine": "The Good, the Bad and the Ugly",
      "ten": "Fight Club",
      "list_id": 1,
      "created_at": "2016-04-10T20:22:43.123Z",
      "updated_at": "2016-04-10T20:22:43.123Z"
    }
  ]
}
```
##Put requests
Api call : put api/posts/:id
Api call : put api/items/:id
Api call : put api/users/:id
Api call : put api/votes/:id

####Sample of params needed
#####Users

username : The desired username change
password : The desired password change

#####Votes

user_id : The user id associated eith the vote
list_id : The user id associated eith the vote
up_vote : If the vote was positive this should be 1, else 0
down_vote : If the vote was negative this should be 1, else 0

#####Items

Each item corresponds to an item on a top ten list.
item[one]
item[two]
item[three]
item[four]
item[five]
item[six]
item[seven]
item[eight]
item[nine]
item[ten]

#####Lists

list_title : The title of the list being submitted.
list_desc : A brief user submited summary of the list
image_ref : A url of the image the user wants to represent the list
source_ref : The source url of the list
list_type : What is the list ranking
user_id : The id of the user that submited the list

##Post requests

api/lists
api/votes
api/users
api/items

In order to use post to create a new object of each type all of the above params are required

##Delete

api/list/:id
api/votes/:id
api/users/:id
api/items/:id

Deletes the object at the given :id. Any votes or items will be deleted if the list associated with them is deleted.
