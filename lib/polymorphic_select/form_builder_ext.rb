# Polymorpic Select
# 
# Usage :
# polymorphic_select(:promotion, :product, [Book.all + Publication.all], :id, :title_with_class)
# form.polymorphic_select(:product, [Book.all + Publication.all], :id, :title_with_class, {:include_blank => true})
module ActionView
  module Helpers
    module FormOptionsHelper
      def polymorphic_select(object, field, collection, value_method, text_method, options = {}, html_options = {})
        option_tags = options_for_select( collection.map {|item| [item.send(text_method), "#{item.class}-#{item.send(value_method)}"]},
                                          "#{object.send("#{field}_type")}-#{object.send("#{field}_id")}")
        klass             = object.class.name.underscore
        onchange = "$('##{klass}_#{field}_type').val($(this).val().split('-')[0]);"+
        "$('##{klass}_#{field}_id').val($(this).val().split('-')[1]);"
        
        hidden_field(klass, "#{field}_type") + hidden_field(klass, "#{field}_id") +
        select_tag("#{klass}_polymorphic_#{field}", option_tags, html_options.merge(:onchange => onchange))
      end
    end
    
    class FormBuilder
      def polymorphic_select(method, collection, value_method, text_method, options = {}, html_options = {})
        @template.polymorphic_select(@object, method, collection, value_method, text_method, options.merge(:object => @object), html_options)
      end
    end
  end
end