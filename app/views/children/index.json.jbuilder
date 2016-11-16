json.array!(@children) do |child|
  json.extract! child, :id, :crossing_id, :numIndividuals, :color_id, :headSize, :numFlowering, :numPetals, :form
  json.url child_url(child, format: :json)
end
