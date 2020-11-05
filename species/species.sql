COPY 
(with query_data as (
	SELECT
		fao_name,
		common_names,
		fda_name,
		taxocode,
		coalesce(NULLIF(code_3a,''), ('FS-' || id)) as code_3a,
		"order",
		family,
		genus,
		specific_descriptor
	from
		species
) select * from query_data order by coalesce(fao_name, split_part(common_names, ',',1))) to '/tmp/species.csv' with CSV HEADER;
