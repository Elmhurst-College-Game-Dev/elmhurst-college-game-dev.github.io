require 'mustache' 

class Webpage < Mustache
  def main_content    # the main content in the page.
    content_file = File.open(ARGV[0])
	content_file.read(80000);
  end

  def page_title
	"My site"
  end
end

puts Webpage.render($stdin.read)
