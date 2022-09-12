class WeatherData
  hash_branch('city') do |r|
    r.get do
      view 'index'
    end
  end
end
