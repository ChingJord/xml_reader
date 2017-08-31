class MakesController < ApplicationController

  def show
  	@alldata = xmlreader('works.xml')
  	@make = []
  	@models = []
    @alldata.map{|i|
      i.xpath("exif/make").map{|j|
        if j.content === params[:id]
 		      url = i.xpath("urls/url[@type='small']").map{|x| x.content}
          @make.push(url)
          mod = i.xpath("exif/model").map{|x| x.content}.uniq
          @models.push(mod)
        end
      }
    }
  end

end

