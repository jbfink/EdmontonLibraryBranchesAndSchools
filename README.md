INSTALLATION
===============

1. Clone this repository.
2. Run rake db:migrate
3. Run rake import_public_libraries, rake import_public_schools, rake import_catholic_schools
4. Run rails s
5. /branches will show you the leaflet.js map
6. /branch/1 will show you the html representation of a library branch
7. /branch/1.json will show you the json-ld representation. 

Edmonton Library Branches and Schools
=====================================

This project is my contribution to [HackYeg's OpenData Hackathon](http://hackyeg.com/). I was interested in exploring Leaflet.js, so I grabbed the following dataset from the City of Edmonton's [Open Data Catalogue](https://data.edmonton.ca/): [Public Libraries](https://data.edmonton.ca/Facilities-and-Structures/Public-Libraries/jn25-zspi), [Edmonton Public Schools](https://data.edmonton.ca/Education/Edmonton-Public-Schools-2013-2014-/ehbr-emhe) and [Edmonton Catholic Schools](https://data.edmonton.ca/Education/Edmonton-Catholic-Schools-2013-2014-/f6w2-hzex)

After creating data models for Branches, and Schools, I imported the data using Rake tasks. Then I created a single controller to access all the model data, and set up a view to call the leaflet.js library, construct a map of Edmonton and plot library branches and schools. 

It turns out that I could just have loaded the JSON data straight into D3, and that would work fine. 

====================================================================================================

Update for DHSI:

I'm taking the Linked Data/RDF class at the 2014 Digital Humanities Summer Institute. After playing around a little bit with some linked data representations (ntriples, turtle, json-ld), I decided to build json-ld support into this project. The idea is that, similar to the DPLA's implementation, when the URL for a library branch (e.g. /branch/1) will return html, and requesting json (e.g. /branch/1.json) will return json-ld.

Here's the algorithm.

1. Download CSV data from the City of Edmonton Open Data site. 
2. Create a Rails model for the data and read the CSV data into the database.
3. Create a controller, routes, and views for the HTML representation. 
---------- This is where the HackYEG project ended ------------------------

To add JSON-LD support, 
4. Add "respond_to json" in your controller.
5. Add the PragmaticContext gem to your Rails project.
6. In your model, contextualize your object fields.
7. Change your "respond to json" line to work on @object.jsonld instead of @object.

=====================================================================================================
