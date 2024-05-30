require 'active_support/lazy_load_hooks'

ActiveSupport.on_load :active_record do
   ::ActiveRecord::Base.send :include, Jsonize
   ::ActiveRecord::Relation.send :include, Jsonize::Relation
   ::Enumerable.send :include, Jsonize::Collection
end
