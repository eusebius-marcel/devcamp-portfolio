module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @portfolio_owner_name = 'Eusebius Marcel'
    @page_title = "#{@portfolio_owner_name} | Portfolio Website"
    @seo_keywords = "#{@portfolio_owner_name} portfolio"
  end
end
