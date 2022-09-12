require_relative 'spec_helper'

describe '/city' do
  it "should " do
    visit '/city'
    page.title.must_equal 'WeatherData'
    # ...
  end
end
