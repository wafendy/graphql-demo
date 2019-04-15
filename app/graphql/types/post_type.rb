module Types
  class PostType < Types::BaseObject
    description 'A blog post'
    field :id, ID, null: false
    field :title, String, null: false

    field :truncated_preview, String, null: false

    field :rating, Integer, null: true

    field :comments, [Types::CommentType], null: true,
      description: "This post's comments, or null if this post has comments disabled"

    field :commentsCount, Integer, null: true

    def comments_count
      object.comments.size
    end
  end
end
