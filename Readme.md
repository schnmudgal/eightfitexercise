1. `ExercisesPlanner` is class which is responsible for creating the plans based on calories as per given data.
2. Any `ExercisesPlanner` object accepts 2 arguments: `exercises` and `time`.
    1. `exercises` is array list of `exercise` objects.
    2. `time` is max time available for the required plan.
    3. `exercise` object is like:
        ```ruby
        {
          id: '46650a84-1d96-4512-8314-ee72ad0fb76e',
          name: 'Squats',
          average_span: 20,
          average_calorie_consumption: 120
        }
        ```

Steps to run:

```ruby
  ExercisesPlanner.new(
    exercises: [
      exercise_object_1,
      exercise_object_2,
      .
      .
      exercise_object_n,
    ],
    time_available: 30
  ).plan_by_calories
```

Steps to run test cases/specs:
1. Use `bundle install` to install required Gem for rspec.
2. Use `rspec spec/exercises_planner_spec.rb` in terminal to run tests.
