module.exports =
	profile: (req,res)->
		Person.findOne 1, (err,person) ->
			console.log err or person
			res.view "person/profile", person:person
