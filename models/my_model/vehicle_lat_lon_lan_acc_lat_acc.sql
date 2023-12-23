WITH vehicle_type_long_lat_detail AS (
  Select tr.type, vt.lon, vt.lat,vt.lat_acc,vt.lon_acc 
  from {{source("DataEngineer","trajectory_info")}} as vt 
  join {{source("DataEngineer","vehicle_track")}} as tr
  on vt.track_id = tr.track_id
),

final as (
    select * from vehicle_type_long_lat_detail
)
select * from final