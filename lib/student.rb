class Student
  attr_reader :name, :age, :scores

    def initialize(info)
      @name = info[:name]
      @age = info[:age]
      @scores = []
    end

    def log_scores(score)
      @scores << score
    end

    def grade
      @scores.sum.to_f / @scores.count
    end
end
