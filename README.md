# PolymorphicSelect

This is a simple plugin to set a polymorphic association by a Select.
It works with hidden fields set by javascript on change of the select value.

## Example

To use the polymorphic select :

    polymorphic_select(:promotion, :product, [Book.all + Publication.all], :id, :title_with_class)

    form.polymorphic_select(:product, [Book.all + Publication.all], :id, :title_with_class, {:include_blank => true})


Copyright (c) 2011 Jean-Richard Lai, released under the MIT license
