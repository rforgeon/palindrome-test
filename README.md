# README

## Instructions

### Install

`cd palindrome-api`

`bundle install`

`rails s`

### API Endpoints


#### Post

Enter a word or sentence to determine if it is a palindrome.

```
curl -X POST -H "Content-Type: application/json" 
			 -d '{
			 		"body": "Is it I? It is I!"
			 	  }' "http://localhost:3000/palindromes/test"
```

#### Get

Recieve the last 10 palindromes entered.

```
curl -X GET -H "Content-Type: application/json" "http://localhost:3000/palindromes/recent"
```