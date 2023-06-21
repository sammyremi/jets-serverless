class CreateDocks < ActiveRecord::Migration[6.1]
  def change
    create_table :docks do |t|
      t.string :title

      t.timestamps
    end
  end
end
