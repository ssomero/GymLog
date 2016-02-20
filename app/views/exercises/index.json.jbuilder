json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :name, :main_muscles, :bodypart, :force, :mechanics_type
  json.url exercise_url(exercise, format: :json)
end
