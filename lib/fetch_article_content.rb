require 'httparty'

class FetchArticleContent
  attr_reader :url, :url_content
  def initialize(url)
    @url = url
    @url_content = fetch_content
  end


  private

  def fetch_content
    response = HTTParty.get(self.url)

    response.body
  end
end

class ParseEmailLinks
  attr_reader :email_links

  def initialize(email_html_body)
    parsed = Nokogiri::HTML(email_html_body)
    @email_links = parsed.xpath('//a').collect do |link|
      next unless link['href'] =~ /http/
      el = EmailLink.new
      el.title = link.text
      el.url = link['href']
      #el.article_content = FetchArticleContent.new(link['href'])
      el
    end.compact
  end

  def save_parsed_links
    self.email_links.each { |el| el.save }
  end
end
