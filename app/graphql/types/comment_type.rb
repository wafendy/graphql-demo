class Types::CommentType < Types::BaseObject
  field :id, ID, null: false
  field :message, String, null: false
  field :post, Types::PostType, null: false
end
