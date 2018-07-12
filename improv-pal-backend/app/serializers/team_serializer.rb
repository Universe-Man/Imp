class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :users, :practices
end
