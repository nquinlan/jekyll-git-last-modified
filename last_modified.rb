module LastModified
  class Generator < Jekyll::Generator
    def generate(site)
		@site = site
		puts "generating last modified dates"
		@site.pages.each do |page, index|
			page_source = source(page)
			last_modified = `git log -1 --format="%ad" -- "#{page_source}"`
			page.data["last_modified"] = last_modified
			# @site.pages[index].data["last_modified"] = last_modified
		end
    end

	def source(page)
		@site.source + "/" + page.path
	end
  end
end
