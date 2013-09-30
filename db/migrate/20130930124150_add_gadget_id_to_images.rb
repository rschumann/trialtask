class AddGadgetIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :gadget_id, :integer
  end
end
