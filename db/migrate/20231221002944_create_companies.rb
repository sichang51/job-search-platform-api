class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :co_name
      t.string :co_logo
      t.string :co_location
      t.string :co_description

      t.timestamps
    end
  end
end
