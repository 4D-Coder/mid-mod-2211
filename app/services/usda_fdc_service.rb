class UsdaFdcService

  def food_search(param)
    response = conn.get do |req|
      req.url("/foods/search")
      req.params(param)
    end
    require 'pry'; binding.pry
    JSON.parse(response.body, symbolize_names: true)
    
  end

  
  def conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1" ) do |f|
      f.params['X-Api-Key'] = ENV['usda_api_key']
    end
  end
end