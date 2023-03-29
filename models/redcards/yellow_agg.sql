select * 
from {{ metrics.calculate(
    metric('count_by_team'),
    grain='all_time',
    dimensions=['TEAMNAME']
) }}