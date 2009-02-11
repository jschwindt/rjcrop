# Jcropper paperclip processor
#
# This processor very slightly changes the default thumbnail processor in order to work properly with Jcrop
# the jQuery cropper plugin.
 
module Paperclip
  # Handles thumbnailing images that are uploaded.
  class Jcropper < Thumbnail
  
    # Returns the command ImageMagick's +convert+ needs to transform the image
    # into the thumbnail.
    def transformation_command
      scale, crop = @current_geometry.transformation_to(@target_geometry, crop?)
      trans = ''
      trans << " #{convert_options}" if convert_options?
      trans << " -resize \"#{scale}\""
      trans << " -crop \"#{crop}\" +repage" if crop
      trans
    end
  end
end