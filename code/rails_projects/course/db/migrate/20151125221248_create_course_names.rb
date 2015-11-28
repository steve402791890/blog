class CreateCourseNames < ActiveRecord::Migration
  def change
    create_table :course_names do |t|
      t.string :teacher_name
      t.string :title
      t.string :courser_name
      t.integer :hours
      t.integer :quntity

      t.timestamps null: false
    end
  end
end
