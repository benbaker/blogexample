module.exports=
	attributes:
		author: model: "person", required:true
		title: "string"
		body: "string"
		comments: collection: "comment", via:"post_id"