class CreateStatBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stat_blocks do |t|
      t.references :user, foreign_key: true
      t.string :display_name
      t.string :job_title
      t.string :job_description
      t.date :hired
      t.date :graduated
      t.boolean :in_deadpool

      t.timestamps
    end
  end
end
