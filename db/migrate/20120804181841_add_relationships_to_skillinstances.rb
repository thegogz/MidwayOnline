class AddRelationshipsToSkillinstances < ActiveRecord::Migration
  def change
    add_column :skillinstances, :skill_id, :integer
		add_index :skillinstances, :skill_id
    add_column :skillinstances, :character_id, :integer
		add_index :skillinstances, :character_id
  end
end
