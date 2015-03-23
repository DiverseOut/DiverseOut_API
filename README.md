#DiverseOut Server
#### DiverseOut Server

** App in progress, coming soon!  **

DiverseOut encourages the release of tech companies' diversity data. After much pressure, tech giants have recently released their diversity data, but what about smaller startups that make up much of the industry? DiverseOut aggregates and displays diversity data for all types of tech companies. Companies can create private surveys for their employees, with varying levels of data abstraction to protect employees privacy. Because the tech industry's most pressing problems aren't technical.

##### Database Schema:
![schema](schema.png)

##### Local setup instructions:
- Download and install the [Shotgun](https://github.com/rtomayko/shotgun) gem.
- Use shotgun to open the 'config.ru' file. This will run the server on port 9393.
- Open your browser and navigate to 'localhost:9393'.
- Follow the instructions [here](https://github.com/philril/DiverseOut_Client) to also run the DiverseOut Client locally.

##### DiverseOut Server is built using the following technologies:
- Ruby on Rails
- Rails API gem
- Rspec, Factory Girl, and Capybara testing frameworks