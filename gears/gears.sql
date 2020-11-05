COPY 
(with query_data as (
	select
		coalesce(gears.sfp_code, gears.isscfg) as isscfg,
		gears.standard_abbreviation,
		gears.name as gear_name,
		gear_groups.name as gear_group,
		gears.description
	from
		gears
	inner join
		gear_groups on gears.gear_group_id = gear_groups.id
		
	UNION
	
	select
		gear_groups.isscfg,
		gear_groups.standard_abbreviation,
		NULL as gear_name,
		gear_groups.name as gear_group,
		gear_groups.description
	from 
		gear_groups
) select * from query_data order by gear_group, isscfg) to '/tmp/gears.csv' with CSV HEADER;
