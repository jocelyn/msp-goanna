indexing
	description: "Servlet which responds to a ping"
	author: "Neal Lester"
	date: "$Date$"
	revision: "$Revision$"

class
	GOA_PING_SERVLET

inherit

	GOA_APPLICATION_SERVLET
		redefine
			do_get
		end
	GOA_NON_DATABASE_ACCESS_TRANSACTION_MANAGEMENT

feature

	name: STRING is "ping.htm"

	do_get (request: GOA_HTTP_SERVLET_REQUEST; response: GOA_HTTP_SERVLET_RESPONSE) is
		do
			response.set_content_type ("text/html")
			response.set_status (sc_ok)
			response.send ("OK")
		end



end