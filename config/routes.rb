RedmineApp::Application.routes.draw do
  resources :announcements do
    get "hide", to: "announcements#hide", on: :member
  end
end