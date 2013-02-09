# RobotLegs 2 clock example (with feathers-ui/starling)
========================

This simple example shows how you can use feathers-ui (Starling) and spark (flex) components in the same Application and use a single Robotlegs service to supply both frameworks.

When you click the spark Button on the left a Robotlegs command will be executed that starts a service. This service dispatches a Signal that is catched by two Mediators. One updates the Callout on the feathers-ui Button, the other one a flex/spark Label.

Just run the index.html in your browser to see it for yourself.
This example makes use of all parts from the MVCS software architecture. 
It is an extension for my simple Robotlegs V2-example you can find at:
https://github.com/brean/robotlegs2-clock-example

This Project is build with:
 RobotLegs Version 2.0.0b4 https://github.com/robotlegs/robotlegs-framework
 Starling 1.3 https://github.com/PrimaryFeather/Starling-Framework and
 the robotlegs2-starling-viewmap by Jamie Owen https://github.com/jamieowen/robotlegs2-starling-viewmap
It will be updated once Robotlegs 2 is final.

Feel free to contact me if you have any questions!
