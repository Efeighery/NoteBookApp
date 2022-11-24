class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  has_many :archives
  has_many :notes
end
