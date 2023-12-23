with vehicle_track_info as(
    select * from {{source("DataEngineer","vehicle_track")}}
),
final as (
    select * from vehicle_track_info
)

select * from final