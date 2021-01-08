Asteroids (Part 2)
==================
Now that we have a functioning space ship, we'll add some asteroids to our game. To do that, we'll write an asteroid class that `extends Floater`.

Suggested steps to writing an Asteroid class
-----------------------------------
1. Create a new `Asteroid.pde` file in your `AsteroidsGame` folder. One way to do this is in Processing is to open the AsteroidGame sketch you created in Part 1. Make sure that when you do this you have the most current sketch for AsteroidGame. Then, create a new tab called `Asteroid` using mixed case exactly as shown. This will create a new `Asteroid.pde` file along with the previosly created AsteroidGame.pde in your sketch folder.
2. You can now write an `Asteroid` class that `extends Floater` in your Asteroid.pde file. You will need to
write the following members and label them appropriately (`public` or `private`?):
   - a member variable to hold the speed of rotation for each asteroid
   - a constructor to initialize all 10 variables (the speed of rotation plus the 9 inherited variables from `Floater`)
   - a `move()` method that also `turn`s (rotates) each Asteroid at its own speed
   - "getter" (accessor) functions for `myCenterX` and `myCenterY`
2. On line 14 of `index.html` add `Asteroid.pde` to the list of files in `data-processing-sources`. The canvas tag should now look like `<canvas id="AsteroidsGame" data-processing-sources="Asteroid.pde AsteroidsGame.pde Floater.pde Spaceship.pde Stars.pde">
				</canvas>`. Now choose *File | Save*.
4. Now add just a single asteroid to your program. Start by just calling the Asteroid's `show()` function. Make sure you can see it and are happy with its shape before going to the next step.
5. Now add the code that moves and rotates the Asteroid   

Adding an `ArrayList`
-------------------
An array probably isn't the best way to keep track of a bunch of asteroids. Arrays have a fixed size. You can't easily add or remove asteroids from an array as they are destroyed or created. A better choice might be an `ArrayList`. The `ArrayList` class has a number of useful member methods:
- `boolean add(Object x)`
- `void add(int index, Object element)`
- `Object get(int index)`
- `Object remove(int index)`
- `Object set(int index, Object x)`
- `int size()`

Suggested steps to adding an `ArrayList` of Asteroids and finishing the project
-----------------------------------

6. Create an `ArrayList` of type `Asteroid`. You may find the [ArrayList slide presentation](https://docs.google.com/presentation/d/1cnaJQR97NmguD3ZGeLL-Rum8TVj_qA0wHxEyVr37K9s/edit?usp=sharing) helpful.
7. Now we'll modify the program so that when our space ship strikes an asteroid, the asteroid is removed from the `ArrayList`. Everytime an asteroid moves find the distance between that asteroid and the ship. Use processing's [`dist()`](https://processing.org/reference/dist_.html) function to find the distance between that asteroid and the ship. If the distance is less than 20 (or whatever value is appropriate for your game) remove the asteroid from the ArrayList. Otherwise, move and rotate the asteroid normally
8. Upload all updated files to Github using the same process you have used previosly (drag and drop or edit in Github directly)
9. Submit the same URL for your AsteroidsGame that you submitted for the previous assignment to new Google Classroom assignment for Asteroids Part 2.


 
