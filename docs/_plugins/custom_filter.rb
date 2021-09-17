module Jekyll::CustomFilter

	def root_category_for_page(page, categories)
		return "This is a test"
		categories.each do | label, category |
			if page_in_category(page, category)
				return category
			end
		end
	end

	def page_in_category(page, category)
		if category.pages
			for page in category.pages
				if page.url == page
					return true
				end
			end
		end
		if category.categories
			for subcategory in category.categories
				if page_in_category(page, subcategory)
					return true
				end
			end
		end
		return false
	end
end

Liquid::Template.register_filter(Jekyll::CustomFilter)