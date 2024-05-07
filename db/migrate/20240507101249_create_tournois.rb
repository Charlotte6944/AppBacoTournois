class CreateTournois < ActiveRecord::Migration[6.1]
  def change
    create_table :tournois do |t|

      t.string :nom, :null => false
      t.date :date_debut, :null => false
      t.date :date_fin, :null => false

      t.timestamps
    end
  end
end
