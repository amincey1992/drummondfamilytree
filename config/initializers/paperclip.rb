require "paperclip/railtie"
Paperclip::Railtie.insert

Paperclip::Attachment.default_options[:styles]          = lambda { |attachment| 
  attachment.content_type.index("image/") == 0 ? {original: {convert_options: "-auto-orient"}} : {}
}