Rails.application.routes.draw do

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  get("/", { :controller => "items", :action => "index" })
  
end

#rails generate model link url:string url_description:string image:string image_description:string
