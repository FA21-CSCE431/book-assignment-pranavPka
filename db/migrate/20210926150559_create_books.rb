class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :Author
      t.numeric :Price
      t.date :date

      t.timestamps
    end
  end
end
