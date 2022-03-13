import 'package:flutter_test/flutter_test.dart';
import 'package:query_parser/query_parser.dart';

void main() {
  test('Get URL path', () {
    print(QueryParser('google.com/pets').urlPath);
  });
  test('Get a map with recieved parameters', (){
    print(QueryParser('https://localhost:8443/api?request=loginPerson&email=noOne@domain.com&password=superSimple63').queryParameters);
  });
  test('Full library test',(){
    //Parse the query and save it into a variable
    QueryParser query = QueryParser('https://localhost:8443/api?request=loginPerson&email=noOne@domain.com&password=superSimple63');
    //Returns the URL path
    print('Request URL is ${query.urlPath}');
    print('With parameters:');
    //Returns a Map with all of the recieved parameters
    print(query.queryParameters);
  });
}