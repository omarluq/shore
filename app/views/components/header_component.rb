# frozen_string_literal: true

class HeaderComponent < ApplicationComponent
  def view_template
    header do
      div(class: "mx-auto max-w-screen-xl px-4 py-8 sm:px-6 sm:py-12 lg:px-8") do
        div(
          class:
            "flex flex-col items-start gap-4 md:flex-row md:items-center md:justify-between"
        ) do
          div do
            TypographyH1 do
              "NGE"
            end
          end
          div(class: "flex items-center gap-4") do
            whitespace
            a href: user_session_path do
              Button(variant: :secondary) { "Log In" }
            end
            whitespace
            render ThemeToggleComponent
          end
        end
      end
    end
  end
end
