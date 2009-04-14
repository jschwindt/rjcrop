# Jcropper paperclip processor
#
# This processor very slightly changes the default thumbnail processor in order to work properly with Jcrop
# the jQuery cropper plugin.
 
module Paperclip
  # Handles thumbnailing images that are uploaded.
  class Jcropper < Thumbnail
  
    def transformation_command
      scale, crop = @current_geometry.transformation_to(@target_geometry, crop?)
      trans = ''
      if crop_string?
        trans << " #{crop_string}"
        trans << " -resize \"#{scale}\""
      else
        trans << " -resize \"#{scale}\""
        trans << " -crop \"#{crop}\" +repage" if crop
      end
      trans
    end

    def crop_string
      @attachment.instance.crop_str
    end

    def crop_string?
      not crop_string.blank?
    end

  end
   
end