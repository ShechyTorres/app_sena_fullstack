class CreateProgramas < ActiveRecord::Migration[7.0]
  def change
    create_table :programas do |t|
      t.string :title_program
      t.references :area, null: false, foreign_key: true

      t.timestamps
    end
  end
end
