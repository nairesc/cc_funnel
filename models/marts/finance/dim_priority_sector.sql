-- {{ config(materialized= 'table') }}


SELECT sector 
    , priority
    , COUNT(*) count_sector
FROM {{ ref('cc_funnel') }}
WHERE sector IS NOT NULL AND priority IS NOT NULL
GROUP BY 1,2
ORDER BY count_sector DESC