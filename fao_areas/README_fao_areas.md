# Gear information

SFP uses the FAO areas availables from the official website (http://www.fao.org/fishery/area/search/en).

The shapefile data available here (http://www.fao.org/geonetwork/srv/en/main.home?uuid=ac02a460-da52-11dc-9d70-0017f293bd28 at the time of writing) can be loaded into postgis using:

```
createdb -U postgres -E utf-8 fao_areas
psql -U postgres fao_areas -c "create extension postgis"
shp2pgsql -s 4326 -W "latin1" /Users/merul/Downloads/FAO_AREAS/FAO_AREAS.shp | psql -U postgres fao_areas
```

The `fao_areas.csv` file summarises all the FAO Areas from the above sources. When sending data to SFP, please use the *sfp_identifier* field value.