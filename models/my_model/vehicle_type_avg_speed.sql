WITH vehicle_type_avg_speed AS (
  Select tr.type, tr.avg_speed, vt.speed 
  from {{source("DataEngineer","trajectory_info")}} as vt 
  join {{source("DataEngineer","vehicle_track")}} as tr
  on vt.track_id = tr.track_id
),

final as (
    select * from vehicle_type_avg_speed
)
select * from final