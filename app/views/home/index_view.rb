# frozen_string_literal: true

class Home::IndexView < ApplicationView
  include Phlex::Rails::Helpers::Provide

  def view_template
    provide(:title, "Home")
    whitespace
    render MainCtaComponent
  end
end
