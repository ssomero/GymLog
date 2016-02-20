# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

e1 = Exercise.create name:"Ab roll", main_muscles:"Abdominal", bodypart:"Abs", force:"Pull", mechanics_type:"Compound"
e2 = Exercise.create name:"Bench press", main_muscles:"Some chest muscle", bodypart:"Chest", force:"Push",
                     mechanics_type:"Compound"
e3 = Exercise.create name:"Deadlift", main_muscles:"Hamstrings, lower back", bodypart:"Lower body", force:"Pull",
                     mechanics_type:"Compound"

w1 = Workout.create name:"PPL" exercise_id:e1.id
w2 = Workout.create name:"PHUL" exercise_id:e2.id
w3 = Workout.create name:"PHAT" exercise_id:e3.id