module.exports =
	new: (req,res)->
		res.view "post/new"
	edit: (req,res)->
		Post.findOne req.query.id
			.populateAll()
			.exec (err,post) ->
				res.view "post/new", post:post
	all: (req,res)->
		Post.find req.query, (err,posts) ->
			res.view "post/posts", posts:posts
	view: (req,res)->
		Post.findOne req.query.id
			.populate('comments')
			.exec (err,post) ->
				res.view "post/view", post:post
