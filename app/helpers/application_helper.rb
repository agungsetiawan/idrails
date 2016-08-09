module ApplicationHelper
  def markdown(text)
    Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(prettify: true), fenced_code_blocks: true).render(text).html_safe
  end
end
