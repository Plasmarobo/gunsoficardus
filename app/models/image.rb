class Image < ActiveRecord::Base
  attr_accessible :name, :itype, :id

  def lookup_id(path)
  	parts = path.split('/')
  	img = Image.which("name='#{parts[-1]}',itype='#{parts[-2]}'")
  	return img.id
  end
end
