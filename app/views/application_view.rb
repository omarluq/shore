# frozen_string_literal: true

class ApplicationView < Phlex::HTML
  include Phlex::Rails::Helpers
  include PhlexUI
  # The ApplicationView is an abstract class for all your views.

  # By default, it inherits from `ApplicationComponent`, but you
  # can change that to `Phlex::HTML` if you want to keep views and
  # components independent.
  #
  def vite_stylesheet_tag(...)
    unsafe_raw(
      helpers.vite_stylesheet_tag(...)
    )
  end

  def vite_image_tag(...)
    unsafe_raw(
      helpers.vite_image_tag(...)
    )
  end

  def vite_client_tag(...)
    unsafe_raw(
      helpers.vite_client_tag(...)
    )
  end

  def vite_javascript_tag(...)
    unsafe_raw(
      helpers.vite_javascript_tag(...)
    )
  end
end
