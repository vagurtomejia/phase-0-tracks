Release 0: View HTTP Requests
=============================
###What are some common HTTP status codes?
Some common status codes ([source](https://www.smartlabsoftware.com/ref/http-status-codes.htm)):
200 OK
300 Multiple Choices
301 Moved Permanently
302 Found
304 Not Modified
307 Temporary Redirect
400 Bad Request
401 Unauthorized
403 Forbidden
404 Not Found
410 Gone
500 Internal Server Error
501 Not Implemented
503 Service Unavailable
550 Permission denied


###What is the difference between a GET request and a POST request? When might each be used?
GET - Requests data from a specified resource, can be cached and bookmarked, remains in the browser history and have length restrictions.
POST - Submits data to be processed to a specified resource, cannot be cached and bookmarked, do not remains in the browser history and have not length restrictions. 

GET request should be used only to retrieve data, and never when dealing with sensitive data because data sent is part of the URL. For sensitive data, POST is safer than GET because the parameters are not stored in browser history or in web server logs and data is not displayed in the URL.


###Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
An HTTP cookie is a small piece of data (usually small text files sent from a website and stored in the user's machine while the user is browsing. 
Cookies are used to remember stateful information, to record the user's browsing activity, or to remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, passwords, etc.
A web server specifies a cookie to be stored by sending an **HTTP header** called Set-Cookie. The format of the Set-Cookie header is a string as follows (parts in square brackets are optional):

    Set-Cookie: <em>value</em>[; expires=<em>date</em>][; domain=<em>domain</em>][; path=<em>path</em>][; secure]
 
The first part of the header, the value, is typically a string in the format name=value.
If there is a cookie set, then the browser sends the following in its request header:
 
    Cookie:name=value
  