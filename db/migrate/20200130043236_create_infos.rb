class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.string :name
      t.string :password
      t.text :address

      t.timestamps
    end
  end
end
