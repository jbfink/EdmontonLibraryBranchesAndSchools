Edmonton Library Branches and Schools
=====================================

This project is my contribution to [HackYeg's OpenData Hackathon](http://hackyeg.com/). I was interested in exploring Leaflet.js, so I grabbed the following dataset from the City of Edmonton's [Open Data Catalogue](https://data.edmonton.ca/): [Public Libraries](https://data.edmonton.ca/Facilities-and-Structures/Public-Libraries/jn25-zspi), [Edmonton Public Schools](https://data.edmonton.ca/Education/Edmonton-Public-Schools-2013-2014-/ehbr-emhe) and [Edmonton Catholic Schools](https://data.edmonton.ca/Education/Edmonton-Catholic-Schools-2013-2014-/f6w2-hzex)

After creating data models for Branches, and Schools, I imported the data using Rake tasks. Then I created a single controller to access all the model data, and set up a view to call the leaflet.js library, construct a map of Edmonton and plot library branches and schools. 

Running out of steam. If I continue with this, some things to do are: skinning, better icons, layers (so you can filter out libraries or school types). 
