require "redmine_site_announcements"

Redmine::Plugin.register :redmine_site_announcements do
  name "Redmine Site Announcements Plugin"
  author "Greg Thornton"
  description "Site-wide announcements for Redmine"
  version "0.0.1"
  url "http://github.com/xdissent/redmine_site_announcements"
  author_url "http://xdissent.com"
  requires_redmine :version_or_higher => "2.2.3"

  # Add announcements link to admin menu.
  menu :admin_menu, :announcements, 
    { :controller => "announcements", :action => "index"}, 
    :caption => "Announcements"
end