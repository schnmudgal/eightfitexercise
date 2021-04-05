require 'securerandom'

# Exercises
Squats = {
  id: SecureRandom.uuid,
  name: 'Squats',
  average_span: 20,
  average_calorie_consumption: 120
}

ArmCurls = {
  id: SecureRandom.uuid,
  name: 'Arm Curls',
  average_span: 10,
  average_calorie_consumption: 25
}

Plank = {
  id: SecureRandom.uuid,
  name: 'Plank',
  average_span: 2,
  average_calorie_consumption: 10
}

JumpingJacks = {
  id: SecureRandom.uuid,
  name: 'Jumping Jacks',
  average_span: 10,
  average_calorie_consumption: 35
}

# Exercises Sets
SetWithVeryLongTimeSpan = [
  {
    id: SecureRandom.uuid,
    name: 'SetWithVeryLongTimeSpan',
    average_span: 9999999999,
    average_calorie_consumption: 120
  }
]

SetWithNormalExercises = [
  Squats,
  ArmCurls,
  Plank,
  JumpingJacks
]
