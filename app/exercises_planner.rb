class ExercisesPlanner
  attr_accessor :exercises, :time
  attr_reader :total_calorie_consumption

  def initialize(options = {})
    @exercises = options[:exercises]
    @time = options[:time] || 0
    @total_calorie_consumption = 0
  end

  def plan_by_calories
    time_used, final_exercises = 0, []

    sorted_exercises(available_exercises).each do |exercise|
      break if time_used == time # No space for exercises anymore

      if time_used + exercise[:average_span] <= time
        final_exercises << exercise
        time_used += exercise[:average_span]
        @total_calorie_consumption += exercise[:average_calorie_consumption]
      end
    end

    [total_calorie_consumption, final_exercises]
  end

  private

  def available_exercises
    exercises.select { |exercise|
      exercise[:average_span] <= time
    }
  end

  def sorted_exercises(exercises_list, sort_direction = :desc)
    sort_multiplier = sort_direction == :desc ? -1 : 1

    # Sort by "average_calorie_consumption" in "desc" order
    #   if "average_calorie_consumption" is same, next is sort by "average_span"
    #   in "inc" order to have maximum efficiency for a plan
    exercises_list.sort_by { |exercise|
      [
        sort_multiplier * exercise[:average_calorie_consumption],
        sort_multiplier * sort_multiplier * exercise[:average_span]
      ]
    }
  end
end
