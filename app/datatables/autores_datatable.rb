class AutoresDatatable
  delegate :params,  :link_to, :number_to_currency, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Autor.count,
      iTotalDisplayRecords: autores.total_entries,
      aaData: data
    }
  end

private

  def data
    autores.map do |autor|
      [
        autor.sales_org,
        autor.vendor,
        autor.first_name,
        autor.last_name,
        autor.email,
        autor.telephone,
        autor.tax_number,
        autor.tax_type,
        autor.status,
        autor.idsap,
        autor.ext_email,
        autor.ext_heredero,
        autor.ext_telefono,
      ]
    end
  end

  def autores
    @autores ||= fetch_autores
  end

  def fetch_autores
    autores = Autor.order("#{sort_column} #{sort_direction}")
    autores = autores.page(page).per_page(per_page)
    if params[:sSearch].present?
      autores = autores.where("sales_org like :search or vendor like :search", search: "%#{params[:sSearch]}%")
    end
    autores
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[vendor vendor]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end