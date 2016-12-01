class SouthwestHome
  include PageObject

  page_url "https://www.southwest.com/"

  text_field(:dep_date, :id => "air-date-departure")
  text_field(:arr_date, :id => "air-date-return")
  text_field(:departure_airport, :id => "air-city-departure")
  text_field(:arrival_airport, :id => "air-city-arrival")
  button(:searchButton, :id => "jb-booking-form-submit-button")

  def search
    self.searchButton
  end

end
