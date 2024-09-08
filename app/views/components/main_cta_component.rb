# frozen_string_literal: true

class MainCtaComponent < ApplicationComponent
  def view_template
    section do
      div(class: "mx-auto max-w-screen-2xl px-4 py-8 sm:px-6 lg:px-8") do
        div(class: "grid grid-cols-1 gap-4 md:grid-cols-2") do
          div(class: "bg-primary dark:bg-secondary h-fit p-8 md:p-12 lg:px-16 lg:py-24") do
            div(class: "mx-auto max-w-xl text-center") do
              TypographyH2 { " Where startups grow" }
              whitespace
              div class: "mt-4" do
                TypographyLarge { " Accelerating invention in the middle east" }
                whitespace
                div class: "flex flex-col gap-2 mt-4" do
                  TypographySmall { "Find and onboard talent" }
                  TypographySmall { "Build your protifolio" }
                  TypographySmall { "Attract Investor" }
                end
              end
              div(class: "mt-4 md:mt-8") do
                whitespace
                a href: new_user_registration_path do
                  Button(variant: :outline, size: :xl) { " Get Started Today " }
                end
              end
            end
          end
          div(class: "grid grid-cols-2 gap-4 md:grid-cols-1 lg:grid-cols-2") do
            whitespace
            img(
              alt: "",
              src:
                "https://images.unsplash.com/photo-1621274790572-7c32596bc67f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=654&q=80",
              class: "h-40 w-full object-cover sm:h-56 md:h-full"
            )
            whitespace
            img(
              alt: "",
              src:
                "https://images.unsplash.com/photo-1567168544813-cc03465b4fa8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
              class: "h-40 w-full object-cover sm:h-56 md:h-full"
            )
          end
        end
      end
    end
  end
end
