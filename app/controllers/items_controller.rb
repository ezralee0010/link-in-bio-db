class ItemsController < ApplicationController
  def index
    @list_of_links = Item.all

    render({ :template => "items_templates/index" })
  end
end
