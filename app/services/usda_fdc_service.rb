class UsdaFdcService

  def food_search(param)
    response = conn.get do |req|
      req.url("/fdc/v1/foods/search?query=#{param}")
    end
    
    JSON.parse(response.body, symbolize_names: true)
    
  end

  
  def conn
    Faraday.new(url: "https://api.nal.usda.gov" ) do |f|
      f.headers['X-Api-Key'] = ENV['usda_api_key']
    end
  end
end