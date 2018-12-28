class CreatePantheons < ActiveRecord::Migration[5.2]
  def change
    create_table :pantheons do |t|
      t.string :name

      t.timestamps
    end
  end
end
