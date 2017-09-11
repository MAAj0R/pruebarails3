class CreateGenrecreates < ActiveRecord::Migration[5.0]
  def change
    create_table :genrecreates do |t|
      t.string :name

      t.timestamps
    end
  end
end
