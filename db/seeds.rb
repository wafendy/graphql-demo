# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.delete_all
Post.delete_all

c1 = Comment.create(message: 'Comment 1')
c2 = Comment.create(message: 'Comment 2')
c3 = Comment.create(message: 'Comment 3')
c4 = Comment.create(message: 'Comment 4')
c5 = Comment.create(message: 'Comment 5')
c6 = Comment.create(message: 'Comment 6')
c7 = Comment.create(message: 'Comment 7')
c8 = Comment.create(message: 'Comment 8')
c9 = Comment.create(message: 'Comment 9')
c10 = Comment.create(message: 'Comment 10')

p1 = Post.create(
  title: 'Post #1',
  truncated_preview: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  comments: [c1, c3, c5],
  rating: 1
)

p2 = Post.create(
  title: 'Post #2',
  truncated_preview: 'Sed a efficitur nulla. Nulla id dapibus arcu.',
  comments: [c2, c4, c6, c8, c10],
  rating: 2
)

p3 = Post.create(
  title: 'Post #3',
  truncated_preview: 'Proin porttitor turpis id nisi cursus, a accumsan purus molestie.',
  comments: [c7, c9],
  rating: 3
)

p4 = Post.create(
  title: 'Post #3',
  truncated_preview: 'Vestibulum faucibus a orci vitae aliquet.',
  comments: [],
  rating: 3
)
