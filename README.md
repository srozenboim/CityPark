# CityPark
A web app that allows users to rent privately-owned parking spots.

## User stories:
* A user can log in with their email and password
* A user can search for parking spots near them using an address or a zip code
* A user can view their results in a list
* A user should see each of their results on a map
* A user should see how far the result is from their desired location
* A user can post a new parking spot
* A user can contact the user who posted a parking spot by e*mail
* A user can edit or delete the posting if it was their own
* A user can manage their current postings from their profile page

## Screen Shots:
![Home page](/citypark-home_page.png)
![Posting Page](/citypark-posting_page.png)

## Installation
First, run: 

```
bundle install
```

Then, set up your database:

```
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

Finally, run the web app locally:

```
bundle exec shotgun
```
