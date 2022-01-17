class CreateHollers < ActiveRecord::Migration[7.0]
  def change
    create_table :hollers do |t|
      t.string :title
      t.string :subtitle
      t.text :message

      t.timestamps
    end
  end
end
