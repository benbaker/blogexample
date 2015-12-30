module.exports=
	all: (req,res) ->
		Comment.find().exec (err, comments) ->
			res.view "comment/comments", comments:comments
