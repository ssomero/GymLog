json.array!(@workouts) do |workout|
  json.extract! workout, :id, :date, :notes
  json.url workout_url(workout, format: :json)
end
