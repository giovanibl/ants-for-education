class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.integer :ieducar_code
      t.string :name

      t.timestamps
    end
  end
end
