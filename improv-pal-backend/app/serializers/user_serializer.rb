class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :gender, :email, :password, :img_src, :teams
end

# class UserSerializer < ActiveModel::Serializer
#   attributes :name, :teams
# end
