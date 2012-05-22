module ExpensesHelper
	def sortable_expenses(column, title = nil)
	  title ||= column.titleize
  	  css_class = column == sort_column_expenses ? "current #{sort_direction}" : nil
  	  direction = column == sort_column_expenses && sort_direction_expenses == "asc" ? "desc" : "asc"
  	  link_to title, params.merge(:sort_expenses => column, :direction_expenses => direction, :page_expenses => nil), {:class => css_class}
	end
end
