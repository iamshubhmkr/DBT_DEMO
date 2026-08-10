with CTE as (
select 

TO_TIMESTAMP(STARTED_AT) as STARTED_AT,
DATE( TO_TIMESTAMP(STARTED_AT) ) DATE_STARTED_AT ,
HOUR( TO_TIMESTAMP(STARTED_AT) ) HOUR_STARTED_AT ,

{{day_type('STARTED_AT') }} as  DAY_TYPE,

{{get_season('STARTED_AT') }} as STATION_OF_YEAR


FROM 
{{ source('demo' , 'bike') }}
)

select * from CTE