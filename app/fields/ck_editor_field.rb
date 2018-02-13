require "administrate/field/base"

class CkEditorField < Administrate::Field::Base
  class Engine < ::Rails::Engine
    Administrate::Engine.add_javascript "ckeditor/init"
    Administrate::Engine.add_javascript "ckeditor/dirty_workaround"
  end

  include ActionView::Helpers::SanitizeHelper
  include ActionView::Helpers::OutputSafetyHelper  
  
  def to_s
    data
  end
end
