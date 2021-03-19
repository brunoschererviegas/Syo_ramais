class CreateSetors < ActiveRecord::Migration[5.2]
  def change
    create_table :setors do |t|
      t.string :descrisao

      t.timestamps
    end
  end
end
