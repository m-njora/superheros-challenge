class PowerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  def powers
    object.powers.pluck(:name, :description).map { |name, description| { name: name, description: description } }
  end

end
