class CreateMyModel1s < ActiveRecord::Migration[6.0]
  def change
    create_table :my_model1s do |t|
      t.integer "info_id"
      t.text "address"
      t.timestamps
    end
  end
end
