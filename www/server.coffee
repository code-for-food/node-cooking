##
# Code by codeforfoods
##

express = require 'express'

app = new express()

app
	.use express.static __dirname + '/public'

	.get '/', (req, res)->

		res.sendFile __dirname + 'public/index.html'
	.listen(1337);
