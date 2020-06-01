# frozen_string_literal: true

class Movie < ApplicationRecord
  belongs_to :user
  has_attached_file :image, styles: { medium: '400x600#' }
  validates_attachment_content_type :image, content_type: %r{\Aimage/.*\Z}
end
