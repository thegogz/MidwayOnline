class CreateSkillinstances < ActiveRecord::Migration
  def change
    create_table :skillinstances do |t|
      t.integer :cp_spent
      t.boolean :active
      t.integer :rank

      t.timestamps
    end
  end
end
