class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.all_by_grade
    all.order(grade: "DESC")
  end

  def self.highest_grade
    all_by_grade.first
  end

end
