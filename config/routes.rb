Naturesoft::GlobalnaturesoftCom::Engine.routes.draw do
    root to: "home#index"
end

if Naturesoft::Core.available?("articles")
  Naturesoft::Articles::Engine.routes.draw do
    get "article/:id" => "articles#detail", as: :detail_articles
    get "category/:id/newest-article" => "categories#newest_article", as: :newest_article_categories
  end
end
if Naturesoft::Core.available?("projects")
  Naturesoft::Projects::Engine.routes.draw do
    get "portfolio/:category_id" => "projects#list", as: :list
    get "portfolio/detail/:id" => "projects#detail", as: :projects_detail
  end
end

if Naturesoft::Core.available?("contacts")
  Naturesoft::Contacts::Engine.routes.draw do
    get "contact-us" => "contacts#contact"
    post "contact.html" => "contacts#send_message", as: :contacts
    get "contact/success.html" => "contacts#success", as: :success
  end
end