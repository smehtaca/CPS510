# CPS510
This repository contains code for CPS 510 Database Systems at Ryerson University.
My course project was to create an application that kept track of Inventory of a fictional Movie and Music Store.
This was first completed using a bash script that sent CRUD commands to the sqlplus program which is used to interface with the Oracle 11g database.Then a GUI was built using Oracle's 11g Driver for Java. 

The UI folder contains the GUI portion of this project. The Shell script folder contains the shell scripts and the commands sent to the sqlplus program. The WebUI was my attempt to create the GUI using the Spark Java to create a REST API which my front-end could communicate with. This attempt did not go as planned due to issues with the Spark API. So I ended up created the entire UI in Java instead.
