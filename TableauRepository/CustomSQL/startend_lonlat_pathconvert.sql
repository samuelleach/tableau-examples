# Custom SQL for enabling to show path between two longitude and latitudes which are in the same row.

# PATH ORDER will need to be placed in the Path shelf for a geographic line chart.

# Based on http://vizwiz.blogspot.co.uk/2012/08/tableau-tip-create-hub-spoke-diagrams.html


SELECT
  `segment`.`id` AS `id`,
   1 AS `PATH ORDER`,
  `segment`.`start_lon` AS `Lon`,
  `segment`.`start_lat` AS `Lat`
FROM `segment`

UNION ALL

SELECT
  `segment`.`id` AS `id`,
   2 AS `PATH ORDER`,
  `segment`.`end_lon` AS `Lon`,
  `segment`.`end_lat` AS `Lat`
FROM `segment`
