class CreateYeets < ActiveRecord::Migration[5.2]
  def change
    create_table :yeets do |t|
      t.string :potato

      t.timestamps
    end
  end
end
