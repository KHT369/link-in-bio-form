Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", { :controller => "items", :action => "backdoor" })

  post("/insert_item", { :controller => "items", :action => "index_save" })
end
