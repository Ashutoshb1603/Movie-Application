class CreateProductionCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :production_companies do |t|
      t.text :company_name
      t.timestamps
    end
  end
end
