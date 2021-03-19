class CreateContatos < ActiveRecord::Migration[5.2]
  def change
    create_table :contatos do |t|
      t.string :descrisao
      t.integer :ramal
      t.integer :ddr
      t.integer :celular
      t.string :skype

      t.timestamps
    end
  end
end
