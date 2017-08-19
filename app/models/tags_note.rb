class TagsNote < ApplicationRecord
  belongs_to :tag
  belongs_to :note

  validates_uniqueness_of :tag, scope: :note #unica,só existe uma relação Tag-note
  validates_presence_of :tag, :note#é obrigatório ter tag e note
end
