# Reaching Through Objects

## Scenarios - Introduction
By now, you've learned that objects can represent real-life things. Objects can have properties & behaviors that can both use and affect other objects. Chaining together multiple objects is commonplace in object-oriented design, but the implementation can be tricky. Use the exercises in this repo to explore the relationships between objects, and practice building solutions for real-life applications, while using best practices like test-driven development when creating OOP-based programs.

## Scenario 0: Card Games
Create `Card` and `Deck` objects to represent a deck of playing cards! Then, use the same objects to create a deck of **flash cards**, with a `Question` class. Example:
```
  #<Question:0x000 @category=:geography @question_text="What is the capital of Alaska?" @answer="Juneau" @points=5>
```
-------
## Scenario 1: Cookie Jar
Who stole the cookies from the cookie jar? More importantly, whose responsibility is it to oversee the cookie jar in the first place?? Using classes for `Cookie`, `Jar`, and `Person`, write a TDD solution that encompasses this functionality.

## Scenario 2: Farmburgh
Let's say you own a farm. On your farm are a few different crops, across many multiple fields. Each crop grows a plant with specific properties, like the best season to grow, if it needs watered, or if its soil has been fertilized. Your job as the farmer is to plant, grow, harvest, and overall manage the farm. Write a TDD solution that encompasses the above functionality, using separate classes for `Plant`, `Field`, `Crop`, and `Farm`.

## Scenario 3: Sportsball League
It's time to make it into the big leagues, and to make a big league. Your company is starting a Sportsball League, and as the resident developer it's your job to make sure they do it right. Using classes for `Player`, `Roster`, `Team`, and `League`, write a solution that uses TDD to solve this problem.

## Scenario 4: Hotel it on the Mountain
You own a line luxurious ski resorts and hotels. You need to be able to keep track of every aspect of the booking process at each hotel, including the ability for guests to make a reservation for a specific date range, as well as which rooms are available at each hotel.
Using classes for `Hotel`, `Reservation`, `Room`, and `Guest`, write a TDD solution that encompasses this functionality.

## Scenario 5: Shopping Cart
Your local grocery chain has lots of products, lots of shopping carts, and lots of stores. You've been hired to keep track of each product & shopping cart in each store, and make sure the carts don't get overfilled. Using classes for `Product`, `ShoppingCart`, `Guest`, and `Store`, write a solution using TDD that encompasses this functionality.

- Each `ShoppingCart` has a `capacity` of no more than 30 items.
- Each `Product` has a name, unit price, and quantity.
- Each `Store` has a place to store its `ShoppingCart`s and `Product`s.
- Each `Store` should only allow up to 5 `Guest`s at a time (it's _very_ premium).
