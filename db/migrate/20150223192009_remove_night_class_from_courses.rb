class RemoveNightClassFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :night_class, :boolean
  end
end
