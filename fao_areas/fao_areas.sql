COPY (SELECT
  gid,
  f_code,
  f_level,
  ocean,
  f_area,
  f_subarea,
  f_division,
  f_subdivis,
  f_subunit,
  'FAO ' || f_code as sfp_identifier,
  name_en,
  name_es
FROM
  fao_areas)
TO '/tmp/fao_areas.csv' with CSV HEADER;
