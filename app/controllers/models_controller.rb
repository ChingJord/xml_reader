class ModelsController < ApplicationController

  def show
  	@alldata = xmlreader('works.xml')
  	@model = []
    @alldata.map{|i|
      i.xpath("exif/model").map{|j|
        if j.content === params[:id]
 		      url = i.xpath("urls/url[@type='small']").map{|x| x.content}
          @model.push(url)
          @make = i.xpath("exif/make").map{|x| x.content}.uniq.first
        end
      }
    }
  end

end
