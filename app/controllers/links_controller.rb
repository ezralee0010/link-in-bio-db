class LinksController < ApplicationController
  def index
    @list_of_links = Link.all

    render({ :template => "links_templates/index" })
  end
end
