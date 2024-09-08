# frozen_string_literal: true

class ApplicationLayout < ApplicationView
  include Phlex::Rails::Layout
  include Phlex::Rails::Helpers::ContentFor

  def view_template(&block)
    doctype
    html(lang: "en") do
      head do
        title { content_for?(:title) ? yield(:title) : "nge" }
        meta name: "viewport", content: "width=device-width,initial-scale=1"
        meta name: "apple-mobile-web-app-title", content: "Shore"
        csp_meta_tag
        csrf_meta_tags
        plain vite_client_tag
        plain vite_javascript_tag "application"
        plain vite_stylesheet_tag "application", data: {"turbo-track": "reload"}
      end
      body do
        render HeaderComponent
        main(&block)
      end
    end
  end
end
