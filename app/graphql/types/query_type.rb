module Types
  class QueryType < Types::BaseObject
    description "The query root of this schema"

    field :allPosts, [Types::PostType], null: false

    def all_posts
      Post.all
    end


    # First describe the field signature:
    field :post, PostType, null: true do
      description "Find a post by ID"
      argument :id, ID, required: true
    end

    def post(id:)
      Post.find(id)
    end
  end
end
