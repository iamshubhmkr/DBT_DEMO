WITH BIKE as (

select
distinct
RIDE_ID as station_id,
START_LNG as station_name,
START_LAT as station_lat,
START_LAT as start_station_lng

from {{ source('demo','bike') }}


)

select
*
from BIKE