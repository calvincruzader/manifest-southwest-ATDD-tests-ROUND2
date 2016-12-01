When(/^I search for a flight using the default dates$/) do
  visit_page SouthwestHome
  on_page SouthwestHome do |page|
    @departure_date = page.dep_date
    @arrival_date = page.arr_date
    page.departure_airport = "CMH"
    page.arrival_airport = "LGA"
    page.search
  end
end

Then(/^the dates I searched for are highlighted in the search results$/) do
  on_page SouthwestSearchResults do |page|
    byebug
    highlighted_departure_date = page.highlighted_departure_date
    highlighted_arrival_date = page.highlighted_arrival_date

    expect(highlighted_departure_date).to eq @departure_date
    expect(highlighted_arrival_date).to eq @arrival_date
  end
  #Find the highlighted dates
  #Compare/assert/search/check them with saved default dates
end

Then(/^I can't choose a departure date from the past$/) do
  pending # Write code here that turns the phrase above into concrete actions
  #Grab all departure dates in the past
  #Check they are all disabled in some way
end
