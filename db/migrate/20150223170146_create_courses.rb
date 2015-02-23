class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.boolean :day_class
      t.boolean :night_class
    end
  end
end
