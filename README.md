# PyThor_TestAnim

A simple script for developers to test animations

you can view all the animations at https://rdr2.mooshe.tv/animations/

to test an animation simply type in chat: /testAnim [animation dict] [animtion name]

for example: /testAnim mech_pickup@plant@tobacco mech_pickup@plant@tobacco base

to stop a test type again in chat: /stopTest

you can change the commands in the config.

animation flags:

used to declare the player control while emoting.

0	Play the animation once, stops when completed.

1	Loop the animation indefinitely.

2	Allow the animation to be interrupted by moving or other actions.

3	Loop the animation, but it can be interrupted by other actions.

4	Prevent movement during the animation.

8	Allow movement during the animation.

16	Freeze the player completely during the animation (no movement or actions allowed).

32	Allow the animation to continue playing while moving.

48	Combination of 16 (freeze player) and 32 (continue while moving).

64	Force the animation to restart if it is already playing.

128	Prevent any interruptions to the animation (e.g., by other actions or events).

256	Play the animation on a loop but allow interruptions.


installation: 
download the repo and extract the folder to your resource folder
add 'ensure PyThor_TestAnim' in you server.cfg
