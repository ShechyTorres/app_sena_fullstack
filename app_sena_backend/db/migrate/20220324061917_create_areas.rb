class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas do |t|
      t.string :image_area
      t.string :title_area

      t.timestamps
    end
  end
end
