import "dart:html";
import "package:google_mapsengine_v1_api/mapsengine_v1_api_browser.dart";
import "package:google_mapsengine_v1_api/mapsengine_v1_api_client.dart";

void main() {
  // use your own API Key from the API Console here
  var client = new Mapsengine();
  client.key = "AIzaSyDVN4LSJHweg41nszqn6kV_-eOodf5o8Z8";
  var container = querySelector("#text");
  var tables = [
    "12421761926155747447-06672618218968397709",
    "12421761926155747447-14043129889721455791"
  ];

  tables.forEach((id) {
    client.tables.features.list(id, version: "published")
      .then((FeaturesListResponse data) {
        container.appendHtml("${data.features.length} features loaded from table $id.<br>");
        data.features.forEach((Feature feature) {
          container.appendHtml("${feature.toString()}<br>");
        });
        container.appendHtml("<br>");
      })
      .catchError((e) {
        container.appendHtml("Error fetching data from table $id: $e<br><br>");
        return true;
      });
  });
}
