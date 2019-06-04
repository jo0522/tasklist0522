class CreateTasklist1s < ActiveRecord::Migration[5.2]
  def change
    create_table :tasklist1s do |t|
      t.string :content

      t.timestamps
    end
  end
end
