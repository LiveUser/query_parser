# query_parser

Parse URL to obtain both the URL path as a String and the QueryString as a Map. All it takes is the URL as a positional argument.

## <span style="color:red;">

## Notice:</span>

No need to use this library if you are building a dart server. dart:io already provides a method for parsing query string encoded parameters.

~~~dart
import 'dart:io';
HttpServer server = await HttpServer.bind(
    InternetAddress.anyIPv6,
	8080,
);
await for (HttpRequest request in server) {
    //This parses the query parameters as a Map in dart
    Map<String,String> requestParameters = request.uri.queryParameters;
}
~~~

For more info go to [Write HTTP clients & servers | Dart.](https://dart.dev/tutorials/server/httpserver)

# Get started

Initialize the Query parser object with a URL as String parameter. After that you can invoke its methods. It automatically parses the encoded URL strings so that you don't have to on the Parameters Map.

~~~dar
QueryParser query = QueryParser(url);
~~~

## Example:

~~~dart
//Parse the query and save it into a variable
QueryParser query = QueryParser('https://localhost:8443/api?request=loginPerson&email=noOne@domain.com&password=superSimple63');
//Returns the URL path
print('Request URL is ${query.urlPath}');
print('With parameters:');
//Returns a Map with all of the recieved parameters
print(query.queryParameters);
~~~

Hecho en 🇵🇷 por Radamés J. Valentín Reyes.