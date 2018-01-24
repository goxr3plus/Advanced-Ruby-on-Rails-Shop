class AddProductPriceToLineItem < ActiveRecord::Migration[5.1]
  def self.up
    add_column :line_items, :price, :decimal, precision: 8, scale: 2

    say_with_time 'Updating prices...' do
      LineItem.all.each do |lineitem|
        lineitem.update_attribute :price, lineitem.product.price
      end
    end
  end

  def self.down
    remove_column :line_items, :price
  end
end
