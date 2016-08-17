ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Users" do
          para "#{User.where("created_at > ?", 7.days.ago).count} new users in last 7 days"
          para "#{User.count} users total"
        end
      end

      column do
        panel "Scrapers" do
          para "#{Scraper.where("created_at > ?", 7.days.ago).count} new scrapers in last 7 days"
          para "#{Scraper.count} scrapers total"
        end
      end
    end

    div class: "blank_slate_container", id: "dashboard_default_message" do
      para do
        if SiteSetting.read_only_mode
          button_to "Switch off site-wide read-only mode", toggle_read_only_mode_admin_site_settings_path
        else
          button_to "Go into site-wide read-only mode", toggle_read_only_mode_admin_site_settings_path
        end
      end
      para do
        form action: update_maximum_concurrent_scrapers_admin_site_settings_path, method: :post do
          div do
            label 'Maximum concurrent scrapers'
            input name: 'maximum_concurrent_scrapers', value: SiteSetting.maximum_concurrent_scrapers
          end
          div class: "buttons" do
            input type: 'submit', value: 'Update'
          end
        end
      end
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
