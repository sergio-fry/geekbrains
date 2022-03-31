class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def hey
    :there
  end
end
