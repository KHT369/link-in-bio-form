class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def backdoor

    render({ :template => "item_templates/backdoor"})
  end

  def index_save
    @query = params.fetch("query_link_url")
    @query_name = params.fetch("query_link_description")
    @image = params.fetch("query_thumbnail_url")
    
    x = Item.new
    x.link_url = @query
    x.link_description = @query_name
    x.thumbnail_url = @image
    x.save

    #render({ :template => "item_templates/list" })

    redirect_to("/")
  end
end
