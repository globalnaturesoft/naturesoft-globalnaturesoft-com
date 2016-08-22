Naturesoft::GlobalnaturesoftCom::Engine.routes.draw do
    root to: "home#index"
end

Naturesoft::Articles::Engine.routes.draw do
    # Frontend
    get "articles/:category/:id/:title.html" => "articles#detail", as: :detail_articles
    get ":parent_title/:id/:title.html" => "categories#newest_article", as: :newest_article_categories
end