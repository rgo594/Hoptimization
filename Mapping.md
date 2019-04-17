
#CLI interface of app
Welcome our User into our app
App might say “Please Enter name”
→ When user enters name it will check against database for name
→ if user does not exist it will create a User Class for user
→ if user does exist it will say “Welcome Back #name!!! “ and have profile choices

After user enters name for NEW USER ….. App will say “Welcome #name What is your favorite beer?”
→ when user enters name for their favorite beer , we will run a search string query on the API to return the top 5 beers matching user input
→ user will have to choose from 1 - 5 for their favorite beer which will then be saved to their table
→ after the user beer is saved we need to cross reference the beer ID to return :
	1. Calories and ingredients of the beer
	2. Type of Beer
3. Region of beer
4. Beers you should try
5. Alcohol Content  
	6. Search for a Beer
7. Search for a Users profile and their favorite Beer
	8. Exit

  Models
Beers → Beer.User ← Users

Beers model :
	Calories
	Type of beer
	Region of Beer
	Alcohol Content

User :
	Name
	Favorite beer
	Beers you should try

Beer.user:
	User: id
	Beer : id
