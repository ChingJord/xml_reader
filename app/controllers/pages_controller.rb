class PagesController < ApplicationController

  def index
  	@alldata = xmlreader('works.xml')
    @makes = @alldata.xpath("exif/make").map{|i| i.content}.uniq
  	@thumbnails = @alldata.xpath("urls/url[@type='small']")
  end

end
