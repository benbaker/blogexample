module.exports =
	attributes:
		email:"string"
		name: type: "string", required:true
		role: "string"
		posts: collection: "post", via: "author"
