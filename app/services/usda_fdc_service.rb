class UsdaFdcService

  def food_search(param)
    get_url("/foods/search?query=#{param}")
  end

  
  def conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1" ) do |f|
      f.params['X-Api-Key'] = ENV['usda_api_key']
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end