with change_column_dtype as(
    SELECT 
        track_id, 
        lat::double precision, 
        lon::double precision, 
        speed::double precision, 
        lon_acc::double precision, 
        lat_acc::double precision,
        TO_CHAR(TO_TIMESTAMP(time * 86400), 'HH24:MI:SS') AS timestamp
    FROM {{source("DataEngineer","trajectory_info")}}
),
final as (
    select * from change_column_dtype
)
select * from final