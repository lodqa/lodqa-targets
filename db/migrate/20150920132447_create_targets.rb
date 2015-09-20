class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :name
      t.text :description
      t.references :user
      t.string :parser_url
      t.string :endpoint_url
      t.string :graph_url
      t.string :dictionary_url
      t.integer :max_hop
      t.text :ignore_predicates
      t.text :sortal_predicates
      t.text :sample_queries

      t.timestamps
    end
    add_index :targets, :user_id
  end
end
