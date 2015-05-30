From http://community.tableau.com/docs/DOC-1390

By Daniel Leventhal


Example Calculation:
 
// create two calculations that round the lat/long based on a parameter
 
LatBucket: ROUND(POWER(10, [LatLonLoD]) * [Lat])

LonBucket: ROUND(POWER(10, [LatLonLoD]) * [Lon])
 
Assumes a parameter called LatLonLoD.

Comments:

Put the fields LatBucket and LongBucket on the level of detail.

Put the original lat/long fields on the row/column shelves. The pills should default to Avg Lat/Long, which is just what we want, as it will show the average location of the items in the bin.

Show the parameter controls for LatLonLoD

On public: http://public.tableausoftware.com/views/DynamicSpatialBinning/Dash?%3Aembed=y
