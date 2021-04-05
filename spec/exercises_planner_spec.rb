require './app/exercises_planner'
require 'exercises_data'

describe ExercisesPlanner do
  describe 'when no given exercise are within available time span' do
    let(:subject) {
      ExercisesPlanner.new(
        exercises: SetWithVeryLongTimeSpan,
        time: 30
      )
    }

    it 'returns plan with no exercise' do
      expect(subject.plan_by_calories).to match_array([0, []])
    end
  end

  describe 'when there are exercises available within given time span' do
    let(:subject) {
      ExercisesPlanner.new(
        exercises: SetWithNormalExercises,
        time: 30
      )
    }

    it 'returns plan with no exercise' do
      expect(subject.plan_by_calories).to match_array([155, [ Squats, JumpingJacks ]])
    end
  end

  describe 'when all given exercises can be used for given time span' do
    let(:subject) {
      ExercisesPlanner.new(
        exercises: SetWithNormalExercises,
        time: 300
      )
    }

    it 'returns plan with no exercise' do
      expect(subject.plan_by_calories).to match_array([190, [ Squats, JumpingJacks, ArmCurls, Plank ]])
    end
  end
end
