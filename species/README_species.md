# Species information

SFP uses the FAO Species (https://github.com/openfigis/RefData/tree/gh-pages/species) as the primary source of data, but WoRMS (http://www.marinespecies.org) is also used to determine information on species that are not available in the FishStatJ (http://www.fao.org/fishery/statistics/software/fishstatj/en) dataset. 

The `species.csv` file summarises all *species* that SFP currently uses. Any given fishery record will be associated with only ONE of these records.

Note, not all records have a `taxocode` or `fao 3 alpha` code, and for those records an internal identifier of the form `FS-XX` is provided instead.