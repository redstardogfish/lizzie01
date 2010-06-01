class CreateTestimonials < ActiveRecord::Migration
  def self.up
    create_table :testimonials do |t|
      t.string :from
      t.text :text
      t.string :contact

      t.timestamps
    end
  end

  def self.down
    drop_table :testimonials
  end
end