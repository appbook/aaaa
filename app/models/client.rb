class Client < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name   :string
    number :float
    timestamps
  end
  attr_accessible :projects, :name, :number

  
  has_many :projects

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
    true
  end

  def update_permitted?
    acting_user.administrator?
    true
  end

  def destroy_permitted?
    acting_user.administrator?
    true
  end

  def view_permitted?(field)
    true
  end

end
