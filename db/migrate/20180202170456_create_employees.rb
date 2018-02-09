class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
    	t.integer :id_card
    	t.string :name
    	t.string :username
    	t.string :email
    end
  end
end
