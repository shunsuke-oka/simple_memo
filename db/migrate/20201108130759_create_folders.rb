class CreateFolders < ActiveRecord::Migration[6.0]
  def change
    create_table :folders do |t|
      t.string :title,           null: false
      t.references :user,        foreign_key: true
      t.timestamps
    end
  end
end
