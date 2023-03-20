class CreateServiceProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :service_providers do |t|
      t.integer :services
      t.boolean :is_activate

      t.timestamps
    end
  end
end
