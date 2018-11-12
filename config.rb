set :css_dir, "assets/stylesheets"
set :images_dir, "assets/images"

activate :aria_current
activate :autoprefixer
activate :inline_svg

activate :blog do |blog|
  blog.generate_day_pages = false
  blog.generate_month_pages = false
  blog.generate_year_pages = false
  blog.layout = "article"
  blog.permalink = "{title}/index.html"
  blog.prefix = "blog"
  blog.sources = "{title}/index.html"
  blog.tag_template = "blog/tag.html"
  blog.taglink = "tags/{tag}/index.html"
end

page "/*.json", layout: false
page "/*.txt", layout: false
page "/*.xml", layout: false

configure :production do
  activate :gzip
  activate :minify_css
  activate :minify_html
  activate :minify_javascript
end
