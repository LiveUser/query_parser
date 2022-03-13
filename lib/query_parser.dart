library query_parser;
import 'dart:convert';

//URL parser below
class QueryParser{
  String urlPath;
  Map<String,String> queryParameters = {};
  QueryParser(String url){
    //Parse the URL and return the path after the domain
    //Remove the :// to prevent it from beign the first / index
    this.urlPath = url.replaceFirst('://', '');
    //Set as the path everything from the first / to the start of the query string (?) or its length
    this.urlPath = this.urlPath.substring(this.urlPath.indexOf('/'),this.urlPath.indexOf('?') != -1? this.urlPath.indexOf('?'): this.urlPath.length);
    //Parse the queryString as a map
    if(url.indexOf('?') != -1){
      String query = url.substring(url.indexOf("?") + 1);
      List<String> allQueries = query.split('&');
      allQueries.forEach((q) {
        List<String> values = q.split('=');
        String parameterName = utf8.decode(values[0].codeUnits);
        String value = values.length == 2?utf8.decode(values[1].codeUnits):'';
        print('$parameterName:$value');
        queryParameters.addAll({
          parameterName: value,
        });
      });
    }
  }
  
}
