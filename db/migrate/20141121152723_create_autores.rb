class CreateAutores < ActiveRecord::Migration
  def change
    create_table :autores do |t|
      t.string :sales_org
      t.string :vendor
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :telephone
      t.string :tax_number
      t.string :tax_type
      t.string :status
      t.string :idsap
      t.string :ext_email
      t.string :ext_heredero
      t.string :ext_telefono
      t.integer :ext_envia_reporte_liq
      t.integer :ext_envia_reporte_stock
      t.string :ext_email_alternativo

      t.timestamps
    end
  end
end
