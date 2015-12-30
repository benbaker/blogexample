module.exports=
	attributes:
		author: model: "person", required:true, defaultsTo:1
		title: "string"
		body: "string"
		comments: collection: "comment", via:"post_id"