Naturesoft::GlobalnaturesoftCom::Engine.routes.draw do
    root to: "home#index"
end

Naturesoft::Articles::Engine.routes.draw do
    get "article/:id" => "articles#detail", as: :detail_articles
    get "category/:id/newest-article" => "categories#newest_article", as: :newest_article_categories
end

Naturesoft::Projects::Engine.routes.draw do
    get "portfolio/:category_id" => "projects#list", as: :list
    get "portfolio/detail/:id" => "projects#detail", as: :projects_detail
end

Naturesoft::Contacts::Engine.routes.draw do
    get "contact-us" => "contacts#contact", as: :contacts
    post "contact-us" => "contacts#contact"
    get "contact-us/success" => "contacts#success", as: :success
end