# README

## Instructions

### Install

`cd palindrome-api`

`bundle install`

`rails s`

### API Endpoints


#### Post

Enter a word or sentence to determine if it is a palindrome.

`http://localhost:3000/palindromes/test`

data:
```
{
  "body": "Is it I? It is I!"
}
```			 	  

#### Get

Recieve the last 10 palindromes entered.

`http://localhost:3000/palindromes/recent`