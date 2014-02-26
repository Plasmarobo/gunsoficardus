class ImagesController < ApplicationController
  #Type = icons, portraits, 
  def new
  	if params[:image]
      filename = File.join("public", "images",  params[:type], params[:image].original_filename)
      if(!File.exists?(filename))
  		  File.open(filename, "wb") { |f| f.write(params[:image].read) }	
  		  Image.create(name: params[:image].original_filename, itype: params[:type])
  		  redirect_to controller: :images, action: :list
        puts "redirecting\n"
      else
        render :new, locals: {select_mode: false, error: "File #{params[:image].original_filename} exitst, rename file and try again"}
      end
  	else
  		render :new
  	end

  end

  def list
    puts "hit list\n"
    if(params[:target] == nil)
      target = "none"
    else
      target = params[:target]
    end
      
    if(params[:mode] == "select")
      select = true
    else
      select = false
    end
    if(params[:type] != nil)
      puts "type hit\n"
      images = Image.where("itype = ?", params[:type])
    else
      puts "all hit\n"
      images = Image.find(:all)
    end
    if(images != nil)
  	 render :list, locals: {select_mode: select, images: images, target: target} 
    else
     redirect_to controller: :images, action: :new
    end
  end

  def delete
  end

  def edit
  end

end
