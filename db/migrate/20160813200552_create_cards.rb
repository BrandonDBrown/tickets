class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :link_to_ticket
      t.string :ticket_title
      t.boolean :migration
      t.boolean :rake_task
      t.string :other_prod_concern
      t.string :string
      t.boolean :regression_concern
      t.string :regression_textbox
      t.string :ticket_notes

      t.timestamps null: false
    end
  end
end
