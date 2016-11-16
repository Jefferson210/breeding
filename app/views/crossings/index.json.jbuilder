json.array!(@crossings) do |crossing|
  json.extract! crossing, :id, :codeCrossing, :numCrossing, :year, :week, :effective, :percentageEffective, :dateHarvest, :numSeed, :father, :fatherPicture, :mother, :motherPicture
  json.url crossing_url(crossing, format: :json)
end
