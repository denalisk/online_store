# Online Store

#### By _**Alexandra Holcombe, Sam Kirsch, Shruti Priya, & Nicole Sanders**_

## Description
This website will host a multitude of kitchen gadgets. Users can create a profile and log into their account. Users can see products, search by name, sort by price or ratings, and purchase one or more items. Administrative users can add new products and restock current products.

## Setup/Installation Requirements

#### Create Databases
* In `SQLCMD`:  
        ` > CREATE DATABASE online_store;`   
        `> GO`  
        `> USE DATABASE online_store;`  
        `> GO`  
        `> CREATE TABLE pictures_products (id INT IDENTITY(1,1), product_id INT, picture_id INT);`  
        `> GO`  
        `> CREATE TABLE pictures (id INT IDENTITY(1,1), picture_key VARCHAR(255));`  
        `> GO`  
        `> CREATE TABLE categories (id INT IDENTITY(1,1), name VARCHAR(255));`  
        `> GO`  
        `> CREATE TABLE products_categories (id INT IDENTITY(1,1), product_id INT, category_id INT);`  
        `> GO`  
        `> CREATE TABLE products (id INT IDENTITY(1,1), name VARCHAR(255), count INT, rating INT, price INT, description VARCHAR(255));`  
        `> GO`  
        `> CREATE TABLE activity_history (id INT IDENTITY(1,1), user_id INT, product_id INT, time_stamp DATETIME, activity VARCHAR(255), notes VARCHAR(1000));`  
        `> GO`  
        `> CREATE TABLE users (id INT IDENTITY(1,1), first_name VARCHAR(255), last_name VARCHAR(255), user_name VARCHAR(255), password VARCHAR(255), admin_privileges` BIT);  
        `> GO`  
        `> CREATE TABLE profiles (id INT IDENTITY(1,1), user_id INT, street VARCHAR(255), city VARCHAR(255), state VARCHAR(255), zip_code INT, phone_number VARCHAR(255));`  
        `> GO`  
        `> CREATE TABLE cart_products (id INT IDENTITY(1,1), user_id INT, product_id INT, quantity INT);`  
        `> GO`  
        `> CREATE TABLE reviews (id INT IDENTITY(1,1), user_id INT, product_id INT, rating INT, review_text VARCHAR(5000));`  
        `> GO`  
        `> CREATE TABLE reviews_pictures (id INT IDENTITY(1,1), picture_id INT, review_id INT);`  
        `> GO`  

* Requires DNU, DNX, MSSQL, and Mono
* Clone to local machine
* Use command "dnu restore" in command prompt/shell
* Use command "dnx kestrel" to start server
* Navigate to http://localhost:5004 in web browser of choice

## Specifications

### User Class

* Delete All

* Get All users

* Equals Override

* Save a user

* Find a user

* Delete individual user

* Edit individual user password

* Edit user first name

* Edit user last name

* Purchase a product

* View activity log

* User reviews a product

* Get all reviews by a user

* Add profile to user


### Product

* Delete All products

* Get All products

* Equals Override

* Save a product

* Find a product

* Delete individual product

* Add category to a product

* Remove category from a product

* Get categories in a specific product

* Get count

* Update count method

* Update price

* Purchase an item (call update method)

* Restock an item (call update method)

* Sort by price

* Sort by rating

* Search by product name

* Search by product rating

* Get users who have purchased that item

* Get all reviews for a product


### category

* Delete All categories

* Get All categories

* Equals Override

* Save a category

* Find a category

* Delete individual category

* Get products in a specific category

* Search by category name


### Cart

* Checkout cart

* Get all items in a cart

* Save item to cart

* Delete item from cart

* Get total purchase price


### reviews

* Save a review

* Delete a reviews

* Find a reviews


### Profile

* Get all profiles

* Save profile

* Update profile

* Delete individual profile

* Delete all profiles

* Find a profile

## Support and contact details

Please contact Allie Holcombe at alexandra.holcombe@gmail.com, Nicole Sanders at nsanders9022@gmail.com, Sam Kirsch at samdkirsch3@gmail.com, or Shruti Priya at shrutipriya1808@gmail.com with any questions, concerns, or suggestions.


## Technologies
https://gist.github.com/barnettjw/56b04f5a9393e094db22 Rating stars


### License

*This project is licensed under the MIT license.*

Copyright (c) 2017 **_Alexandra Holcombe & Sam Kirsch & Nicole Sanders & Shruti Priya_**
