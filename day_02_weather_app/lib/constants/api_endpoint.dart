class ApiEndPoint{

  static String baseUrl='https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/';

  static String trailingUrl = '?unitGroup=metric&key=7JWQMV9WC5JJBUQF22L83ERCB&contentType=json';

 String getApiUrl(String location){

  return ApiEndPoint.baseUrl + location + ApiEndPoint.trailingUrl;
 }
}