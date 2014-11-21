json.array!(@autores) do |autor|
  json.extract! autor, :id, :sales_org, :vendor, :first_name, :last_name, :email, :telephone, :tax_number, :tax_type, :status, :idsap, :ext_email, :ext_heredero, :ext_telefono, :ext_envia_reporte_liq, :ext_envia_reporte_stock, :ext_email_alternativo
  json.url autor_url(autor, format: :json)
end
