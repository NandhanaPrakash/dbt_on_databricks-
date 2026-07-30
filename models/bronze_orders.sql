select * from 
/* could do below too but since sources is defined in landing_sources.yml ill ref that
dbt_project_catalog.landing.products */
{{source('landing', 'orders')}}
/* meaning inside landing  sources , orders table */