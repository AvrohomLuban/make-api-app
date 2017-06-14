class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :buzzword
      t.string :bs

      t.timestamps
    end
  end
end
