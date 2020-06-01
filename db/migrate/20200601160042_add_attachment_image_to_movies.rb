# frozen_string_literal: true

class AddAttachmentImageToMovies < ActiveRecord::Migration[6.0]
  def self.up
    change_table :movies do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :movies, :image
  end
end