module EarningsHelper

	def sortable_earnings(column, title = nil)
	  title ||= column.titleize
  	  css_class = column == sort_column_earnings ? "current #{sort_direction}" : nil
  	  direction = column == sort_column_earnings && sort_direction_earnings == "asc" ? "desc" : "asc"
  	  link_to title, params.merge(:sort_earnings => column, :direction_earnings => direction, :page_earnings => nil), {:class => css_class}
	end

end
