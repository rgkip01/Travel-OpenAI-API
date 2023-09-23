require './lib/services/travel_ai_service'

p TravelAiService
  .new
  .with_dates('15/12/2023', '02/01/2023')
  .city_origin('Sta Isabel - SP')
  .destination('New York')
  
  # TODO: create acount in OpenAI API
  # .plan_travel 