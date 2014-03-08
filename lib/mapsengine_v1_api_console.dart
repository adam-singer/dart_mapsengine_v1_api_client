library mapsengine_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_mapsengine_v1_api/src/console_client.dart';

import "package:google_mapsengine_v1_api/mapsengine_v1_api_client.dart";

/** The Google Maps Engine API allows developers to store and query geospatial vector and raster data. */
class Mapsengine extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage your Google Maps Engine data */
  static const String MAPSENGINE_SCOPE = "https://www.googleapis.com/auth/mapsengine";

  /** OAuth Scope2: View your Google Maps Engine data */
  static const String MAPSENGINE_READONLY_SCOPE = "https://www.googleapis.com/auth/mapsengine.readonly";

  final oauth2.OAuth2Console auth;

  Mapsengine([oauth2.OAuth2Console this.auth]);
}
