class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :office
      t.string :joined_date
      t.string :dietary_requirement
      t.boolean :mystery_lunch, default: false
    end
  end
end
