class HeroPowerSerializer < ActiveModel::Serializer
  attributes :id, :name, :super_name, :powers

  belongs_to :hero
  belongs_to :power

end
