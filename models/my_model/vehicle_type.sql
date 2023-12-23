WITH vehicle_type AS (
  Select tr.type, tr.traveled_d, vt.speed, vt.lat, vt.lon 
  from {{source("DataEngineer","trajectory_info")}} as vt 
  join {{source("DataEngineer","vehicle_track")}} as tr
  on vt.track_id = tr.track_id
),

final as (
    select * from vehicle_type
)
select * from final
