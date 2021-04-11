<h2>Testing</h2>
I have included two RSPEC tests of the create method to check that it responds properly. However, I will also outline a few more methods to manually test the application (the same way I was doing throughout development process).

-----

<u>Testing the create function, the ASCII art and the weapon-stats feature.</u>

    -To test the 'create' method, type 'create' in the menu. 
    -It will prompt you for a weapon name, and this can be anything that can normally fit inside a string value. For the purposes of this text, enter "sword".
    -Next it will ask you for the sword grip you would like, and you are given three grip options - straight, curved, wicked. Enter "test", and it should raise an error and reprompt you for a valid grip. If you enter, say, 'curved', the program will move on to the next step, choosing the guard.
    -This step will function the same as the previous one, you are given three options and must choose one to move on. If you enter an invalid answer, it will once again prompt you for a valid one. For this example, enter "forward".
    -The final step of the creation process asks you for the type of blade you would like your sword to have. Once again you are given three options, and must pick a valid one. Choose "narrow" for this example.
    -The program should print an image of your completed sword, and the accompanying stats. Check that it has printed the appropriate weapon-part choices you have made, and that the stats are greater than 0. 

---
<u>Testing if the delete function removes entries </u>

    -From the menu, input "delete". If you have any weapons saved, it should print a list of your weapons. If not, it will tell you that you have no swords and return to the menu. 
    -For the purposes of this example I will assume you have saved the sword from the previous test case. So you will enter "delete" from the menu. 
    -Then, it will prompt you for a weapon name, enter "test" as that was the sword name we chose. 
    -The program will attempt to print the remaining swords in the sword rack, but since you only had one sword it will instead print "Sword rack is empty".

<u>Testing if the delete function can properly select swords out of multiple different ones.</u>

    -Create a sword as in the previous tests, with the sword name being "test".
    -Create another sword with the name "test 2"
    -Create a third sword with the name "test 3"
    -From the menu, enter "delete"
    -Enter "test 2", the program should properly remove test 2, and print the remaining swords "test" and "test 3"
    -Delete the remaining swords in any order you wish.
