require './lib/services/open_ai_service'
require './lib/services/prompt_ai_service'


class TravelAiService
  def with_dates(start_date, end_date)
    @start_date = start_date
    @end_date = end_date
    self
  end

  def city_origin(city)
    @origin = city
    self
  end

  def destination(destination)
    @destination = destination
    self
  end

  def plan_travel
    travel_itinerary
  end

  private 

  def travel_itinerary
    prompt = Prompt.destination_itinerary(@destination, @start_date, @end_date)
    OpenAiService.new.call(prompt)
  end
end