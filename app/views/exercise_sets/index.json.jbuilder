json.array!(@exercise_sets) do |exercise_set|
  json.extract! exercise_set, :id, :exercise_id, :weight_kg, :repetition
  json.url exercise_set_url(exercise_set, format: :json)
end
