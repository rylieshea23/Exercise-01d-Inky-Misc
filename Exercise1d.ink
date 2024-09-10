/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> Forest 

== Forest== 
you are wondering the forest when you notice a yellow flower.
It is {advance_time () }

+ [pick the yellow flower] -> Forest2
-> DONE

== Forest2 ==
You jump back a bit and realise you are in the forest. You realise time had passed for way longer than you thought... how could that be?
It is {advance_time () }
* {time == 2} [pick the YELLOW flower]-> Purple
+ [pick the yellow flower] -> Forest
* {time == 5} [Seriously pick up the yellow flower] -> YELLOW 
You hear a scary noise 
* {time == 10} [pick THE yellow flower player]-> HELP
* {time == 15} [PICK THE YELLOW FLOWER NOW]-> ending
== Purple ==
You picked up the yellow flower, correct player? -> Forest2

=== YELLOW ===
Player.... you need to pick the yellow flower to end this -> Forest2

=== HELP ===
player you have to save yourself... pick the yellow flower.-> Forest2
=== ending ===
you never found yourself out of the timeloop player. You never picked the yellow flower-> END


== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 15:
            ~ time = 0
    }    
    /*
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    */
    
        
    ~ return time
    
    
    
