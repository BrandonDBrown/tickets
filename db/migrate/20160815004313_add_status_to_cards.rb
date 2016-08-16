class AddStatusToCards < ActiveRecord::Migration
  def change
    add_column :cards, :status, :string
    add_column :cards, :archived, :boolean
  end
end
