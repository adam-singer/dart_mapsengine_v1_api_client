part of mapsengine_v1_api;

/** Acquisition time represents acquired time of a raster. */
class AcquisitionTime {

  /** The end time if acquisition time is a range. The value is an RFC 3339 formatted date-time value (1970-01-01T00:00:00Z). */
  core.String end;

  /** The precision of acquisition time. Valid values include: 'year', 'month', 'day', 'hour', 'minute' and 'second'. */
  core.String precision;

  /** The acquisition time, or start time if acquisition time is a range. The value is an RFC 3339 formatted date-time value (1970-01-01T00:00:00Z). */
  core.String start;

  /** Create new AcquisitionTime from JSON data */
  AcquisitionTime.fromJson(core.Map json) {
    if (json.containsKey("end")) {
      end = json["end"];
    }
    if (json.containsKey("precision")) {
      precision = json["precision"];
    }
    if (json.containsKey("start")) {
      start = json["start"];
    }
  }

  /** Create JSON Object for AcquisitionTime */
  core.Map toJson() {
    var output = new core.Map();

    if (end != null) {
      output["end"] = end;
    }
    if (precision != null) {
      output["precision"] = precision;
    }
    if (start != null) {
      output["start"] = start;
    }

    return output;
  }

  /** Return String representation of AcquisitionTime */
  core.String toString() => JSON.encode(this.toJson());

}

/** A rectangular geographic bounds, expressed as [lower_left_x, lower_left_y, upper_right_x, upper_right_y]. */
class BboxBounds {

  /** Create new BboxBounds from JSON data */
  BboxBounds.fromJson(core.Map json) {
  }

  /** Create JSON Object for BboxBounds */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of BboxBounds */
  core.String toString() => JSON.encode(this.toJson());

}

class Datasource {

  /** The ID of a datasource. */
  core.String id;

  /** Create new Datasource from JSON data */
  Datasource.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for Datasource */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of Datasource */
  core.String toString() => JSON.encode(this.toJson());

}

/** A feature within a table. */
class Feature {

  /** The geometry member of this Feature. */
  GeoJsonGeometry geometry;

  /** Key/value pairs of this Feature. */
  GeoJsonProperties properties;

  /** Identifies this object as a feature. */
  core.String type;

  /** Create new Feature from JSON data */
  Feature.fromJson(core.Map json) {
    if (json.containsKey("geometry")) {
      geometry = new GeoJsonGeometry.fromJson(json["geometry"]);
    }
    if (json.containsKey("properties")) {
      properties = new GeoJsonProperties.fromJson(json["properties"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Feature */
  core.Map toJson() {
    var output = new core.Map();

    if (geometry != null) {
      output["geometry"] = geometry.toJson();
    }
    if (properties != null) {
      output["properties"] = properties.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Feature */
  core.String toString() => JSON.encode(this.toJson());

}

/** The request sent to features.BatchDelete. */
class FeaturesBatchDeleteRequest {

  core.List<core.String> feature_ids;

  core.List<core.String> gx_ids;

  /** Create new FeaturesBatchDeleteRequest from JSON data */
  FeaturesBatchDeleteRequest.fromJson(core.Map json) {
    if (json.containsKey("feature_ids")) {
      feature_ids = json["feature_ids"].toList();
    }
    if (json.containsKey("gx_ids")) {
      gx_ids = json["gx_ids"].toList();
    }
  }

  /** Create JSON Object for FeaturesBatchDeleteRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (feature_ids != null) {
      output["feature_ids"] = feature_ids.toList();
    }
    if (gx_ids != null) {
      output["gx_ids"] = gx_ids.toList();
    }

    return output;
  }

  /** Return String representation of FeaturesBatchDeleteRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The request sent to features.Insert. */
class FeaturesBatchInsertRequest {

  core.List<Feature> features;

  /** Create new FeaturesBatchInsertRequest from JSON data */
  FeaturesBatchInsertRequest.fromJson(core.Map json) {
    if (json.containsKey("features")) {
      features = json["features"].map((featuresItem) => new Feature.fromJson(featuresItem)).toList();
    }
  }

  /** Create JSON Object for FeaturesBatchInsertRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (features != null) {
      output["features"] = features.map((featuresItem) => featuresItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of FeaturesBatchInsertRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The request sent to features.BatchPatch. */
class FeaturesBatchPatchRequest {

  core.List<Feature> features;

  /** Create new FeaturesBatchPatchRequest from JSON data */
  FeaturesBatchPatchRequest.fromJson(core.Map json) {
    if (json.containsKey("features")) {
      features = json["features"].map((featuresItem) => new Feature.fromJson(featuresItem)).toList();
    }
  }

  /** Create JSON Object for FeaturesBatchPatchRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (features != null) {
      output["features"] = features.map((featuresItem) => featuresItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of FeaturesBatchPatchRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to features.List. */
class FeaturesListResponse {

  /** An indicator of the maximum rate at which queries may be made, if all queries were as expensive as this query. */
  core.num allowedQueriesPerSecond;

  /** Resources returned. */
  core.List<Feature> features;

  /** Next page token. */
  core.String nextPageToken;

  /** The feature schema. */
  Schema schema;

  core.String type;

  /** Create new FeaturesListResponse from JSON data */
  FeaturesListResponse.fromJson(core.Map json) {
    if (json.containsKey("allowedQueriesPerSecond")) {
      allowedQueriesPerSecond = json["allowedQueriesPerSecond"];
    }
    if (json.containsKey("features")) {
      features = json["features"].map((featuresItem) => new Feature.fromJson(featuresItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("schema")) {
      schema = new Schema.fromJson(json["schema"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for FeaturesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (allowedQueriesPerSecond != null) {
      output["allowedQueriesPerSecond"] = allowedQueriesPerSecond;
    }
    if (features != null) {
      output["features"] = features.map((featuresItem) => featuresItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (schema != null) {
      output["schema"] = schema.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of FeaturesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A single File, which is a component of an Asset. */
class File {

  /** The name of the file. */
  core.String filename;

  /** The size of the file in bytes. */
  core.int size;

  /** The upload status of the file. */
  core.String uploadStatus;

  /** Create new File from JSON data */
  File.fromJson(core.Map json) {
    if (json.containsKey("filename")) {
      filename = json["filename"];
    }
    if (json.containsKey("size")) {
      size = (json["size"] is core.String) ? core.int.parse(json["size"]) : json["size"];
    }
    if (json.containsKey("uploadStatus")) {
      uploadStatus = json["uploadStatus"];
    }
  }

  /** Create JSON Object for File */
  core.Map toJson() {
    var output = new core.Map();

    if (filename != null) {
      output["filename"] = filename;
    }
    if (size != null) {
      output["size"] = size;
    }
    if (uploadStatus != null) {
      output["uploadStatus"] = uploadStatus;
    }

    return output;
  }

  /** Return String representation of File */
  core.String toString() => JSON.encode(this.toJson());

}

/** A geometry object */
class GeoJsonGeometry {

  /** Create new GeoJsonGeometry from JSON data */
  GeoJsonGeometry.fromJson(core.Map json) {
  }

  /** Create JSON Object for GeoJsonGeometry */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of GeoJsonGeometry */
  core.String toString() => JSON.encode(this.toJson());

}

/** Geometry Collection */
class GeoJsonGeometryCollection {

  /** The geometry objects that are contained within this geometry collection. */
  core.List<GeoJsonGeometry> geometries;

  /** Identifies this object as a geometry collection. */
  core.String type;

  /** Create new GeoJsonGeometryCollection from JSON data */
  GeoJsonGeometryCollection.fromJson(core.Map json) {
    if (json.containsKey("geometries")) {
      geometries = json["geometries"].map((geometriesItem) => new GeoJsonGeometry.fromJson(geometriesItem)).toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GeoJsonGeometryCollection */
  core.Map toJson() {
    var output = new core.Map();

    if (geometries != null) {
      output["geometries"] = geometries.map((geometriesItem) => geometriesItem.toJson()).toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GeoJsonGeometryCollection */
  core.String toString() => JSON.encode(this.toJson());

}

/** Line String */
class GeoJsonLineString {

  /** The coordinates of this line string as an array of two or more positions. */
  LineString coordinates;

  /** Identifies this object as a line string. */
  core.String type;

  /** Create new GeoJsonLineString from JSON data */
  GeoJsonLineString.fromJson(core.Map json) {
    if (json.containsKey("coordinates")) {
      coordinates = new LineString.fromJson(json["coordinates"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GeoJsonLineString */
  core.Map toJson() {
    var output = new core.Map();

    if (coordinates != null) {
      output["coordinates"] = coordinates.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GeoJsonLineString */
  core.String toString() => JSON.encode(this.toJson());

}

/** Multi Line String */
class GeoJsonMultiLineString {

  /** The coordinates of this multi-line string as an array of line string coordinate arrays. */
  core.List<LineString> coordinates;

  /** Identifies this object as a multi-line string. */
  core.String type;

  /** Create new GeoJsonMultiLineString from JSON data */
  GeoJsonMultiLineString.fromJson(core.Map json) {
    if (json.containsKey("coordinates")) {
      coordinates = json["coordinates"].map((coordinatesItem) => new LineString.fromJson(coordinatesItem)).toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GeoJsonMultiLineString */
  core.Map toJson() {
    var output = new core.Map();

    if (coordinates != null) {
      output["coordinates"] = coordinates.map((coordinatesItem) => coordinatesItem.toJson()).toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GeoJsonMultiLineString */
  core.String toString() => JSON.encode(this.toJson());

}

class GeoJsonMultiPoint {

  /** The coordinates of this multi-point as an array of positions. */
  core.List<Point> coordinates;

  /** Identifies this object as a multi-point. */
  core.String type;

  /** Create new GeoJsonMultiPoint from JSON data */
  GeoJsonMultiPoint.fromJson(core.Map json) {
    if (json.containsKey("coordinates")) {
      coordinates = json["coordinates"].map((coordinatesItem) => new Point.fromJson(coordinatesItem)).toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GeoJsonMultiPoint */
  core.Map toJson() {
    var output = new core.Map();

    if (coordinates != null) {
      output["coordinates"] = coordinates.map((coordinatesItem) => coordinatesItem.toJson()).toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GeoJsonMultiPoint */
  core.String toString() => JSON.encode(this.toJson());

}

/** Multi Polygon */
class GeoJsonMultiPolygon {

  /** The coordinates of this multi-polygon as an array of polygon coordinate arrays. */
  core.List<Polygon> coordinates;

  /** Identifies this object as a multi-polygon. */
  core.String type;

  /** Create new GeoJsonMultiPolygon from JSON data */
  GeoJsonMultiPolygon.fromJson(core.Map json) {
    if (json.containsKey("coordinates")) {
      coordinates = json["coordinates"].map((coordinatesItem) => new Polygon.fromJson(coordinatesItem)).toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GeoJsonMultiPolygon */
  core.Map toJson() {
    var output = new core.Map();

    if (coordinates != null) {
      output["coordinates"] = coordinates.map((coordinatesItem) => coordinatesItem.toJson()).toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GeoJsonMultiPolygon */
  core.String toString() => JSON.encode(this.toJson());

}

class GeoJsonPoint {

  /** The coordinates of this point as a position in [longitude, latitude] or [longitude, latitude, altitude] form. */
  Point coordinates;

  /** Identifies this object as a point. */
  core.String type;

  /** Create new GeoJsonPoint from JSON data */
  GeoJsonPoint.fromJson(core.Map json) {
    if (json.containsKey("coordinates")) {
      coordinates = new Point.fromJson(json["coordinates"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GeoJsonPoint */
  core.Map toJson() {
    var output = new core.Map();

    if (coordinates != null) {
      output["coordinates"] = coordinates.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GeoJsonPoint */
  core.String toString() => JSON.encode(this.toJson());

}

/** Polygon */
class GeoJsonPolygon {

  /** The coordinates of this polygon as an array of linear ring coordinate arrays. A linear ring is a closed line string with 4 or more positions. The first and last positions are equivalent. For polygons with multiple rings, the first must be the exterior ring and any others must be interior rings or holes. */
  Polygon coordinates;

  /** Identifies this object as a polygon. */
  core.String type;

  /** Create new GeoJsonPolygon from JSON data */
  GeoJsonPolygon.fromJson(core.Map json) {
    if (json.containsKey("coordinates")) {
      coordinates = new Polygon.fromJson(json["coordinates"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for GeoJsonPolygon */
  core.Map toJson() {
    var output = new core.Map();

    if (coordinates != null) {
      output["coordinates"] = coordinates.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of GeoJsonPolygon */
  core.String toString() => JSON.encode(this.toJson());

}

/** The properties associated with a feature. */
class GeoJsonProperties {

  /** Create new GeoJsonProperties from JSON data */
  GeoJsonProperties.fromJson(core.Map json) {
  }

  /** Create JSON Object for GeoJsonProperties */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of GeoJsonProperties */
  core.String toString() => JSON.encode(this.toJson());

}

/** A geo-referenced raster. */
class Image {

  /** The acquisition time of this Raster. */
  AcquisitionTime acquisitionTime;

  /** The name of the attribution to be used for this Raster. */
  core.String attribution;

  /** An array of four numbers (west, south, east, north) which define the rectangular bounding box which contains all of the data in this Raster. The numbers represent latitudes and longitudes in decimal degrees. */
  BboxBounds bbox;

  /** The creation time of this raster. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String creationTime;

  /** The description of this Raster, supplied by the author. */
  core.String description;

  /** The Map Editors access list to share this Raster with. */
  core.String draftAccessList;

  /** The files associated with this Raster. */
  core.List<File> files;

  /** A globally unique ID, used to refer to this Raster. */
  core.String id;

  /** The last modified time of this raster. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String lastModifiedTime;

  /** The mask processing type of this Raster. Valid values include "autoMask", "alphaChannelMask", "noMask", "imageMask". */
  core.String maskType;

  /** The name of this Raster, supplied by the author. */
  core.String name;

  /** The processing status of this Raster. The raster processing status values can be:

'notReady': The raster is not ready to be processed - some files have not been uploaded.
'ready': The raster is queued for processing.
'processing': The raster is currently processing.
'complete': Processing has completed successfully.
'failed': Processing failed to complete. */
  core.String processingStatus;

  /** The ID of the project that this Raster is in. */
  core.String projectId;

  /** The type of this Raster. Always "image" today. */
  core.String rasterType;

  /** Tags of this Raster. */
  core.List<core.String> tags;

  /** Create new Image from JSON data */
  Image.fromJson(core.Map json) {
    if (json.containsKey("acquisitionTime")) {
      acquisitionTime = new AcquisitionTime.fromJson(json["acquisitionTime"]);
    }
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("bbox")) {
      bbox = new BboxBounds.fromJson(json["bbox"]);
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("draftAccessList")) {
      draftAccessList = json["draftAccessList"];
    }
    if (json.containsKey("files")) {
      files = json["files"].map((filesItem) => new File.fromJson(filesItem)).toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("maskType")) {
      maskType = json["maskType"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("processingStatus")) {
      processingStatus = json["processingStatus"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("rasterType")) {
      rasterType = json["rasterType"];
    }
    if (json.containsKey("tags")) {
      tags = json["tags"].toList();
    }
  }

  /** Create JSON Object for Image */
  core.Map toJson() {
    var output = new core.Map();

    if (acquisitionTime != null) {
      output["acquisitionTime"] = acquisitionTime.toJson();
    }
    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (bbox != null) {
      output["bbox"] = bbox.toJson();
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (draftAccessList != null) {
      output["draftAccessList"] = draftAccessList;
    }
    if (files != null) {
      output["files"] = files.map((filesItem) => filesItem.toJson()).toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (maskType != null) {
      output["maskType"] = maskType;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (processingStatus != null) {
      output["processingStatus"] = processingStatus;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (rasterType != null) {
      output["rasterType"] = rasterType;
    }
    if (tags != null) {
      output["tags"] = tags.toList();
    }

    return output;
  }

  /** Return String representation of Image */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Layer combines multiple datasources, with styling information, for presentation on a map. */
class Layer {

  /** An array of four numbers (west, south, east, north) which define the rectangular bounding box which contains all of the data in this Layer. The numbers represent latitudes and longitudes in decimal degrees. */
  BboxBounds bbox;

  /** The creation time of this layer. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String creationTime;

  /** The type of the datasources used to build this Layer. One of either "table" or "image". */
  core.String datasourceType;

  /** An array of datasources used to build this Layer. If datasourceType is "image", then each element in this array is a reference to an Image or RasterCollection. If datasourceType is "table" then each element in this array is a reference to a Vector Table. */
  core.List<Datasource> datasources;

  /** The description of this Layer, supplied by the author. */
  core.String description;

  /** A globally unique ID, used to refer to this Layer. */
  core.String id;

  /** The last modified time of this layer. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String lastModifiedTime;

  /** The name of this Layer, supplied by the author. */
  core.String name;

  /** The ID of the project that this Layer is in. */
  core.String projectId;

  /** Tags of this Layer. */
  core.List<core.String> tags;

  /** Create new Layer from JSON data */
  Layer.fromJson(core.Map json) {
    if (json.containsKey("bbox")) {
      bbox = new BboxBounds.fromJson(json["bbox"]);
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("datasourceType")) {
      datasourceType = json["datasourceType"];
    }
    if (json.containsKey("datasources")) {
      datasources = json["datasources"].map((datasourcesItem) => new Datasource.fromJson(datasourcesItem)).toList();
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("tags")) {
      tags = json["tags"].toList();
    }
  }

  /** Create JSON Object for Layer */
  core.Map toJson() {
    var output = new core.Map();

    if (bbox != null) {
      output["bbox"] = bbox.toJson();
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (datasourceType != null) {
      output["datasourceType"] = datasourceType;
    }
    if (datasources != null) {
      output["datasources"] = datasources.map((datasourcesItem) => datasourcesItem.toJson()).toList();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (tags != null) {
      output["tags"] = tags.toList();
    }

    return output;
  }

  /** Return String representation of Layer */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to layers.List. */
class LayersListResponse {

  /** Resources returned. */
  core.List<Layer> layers;

  /** Next page token. */
  core.String nextPageToken;

  /** Create new LayersListResponse from JSON data */
  LayersListResponse.fromJson(core.Map json) {
    if (json.containsKey("layers")) {
      layers = json["layers"].map((layersItem) => new Layer.fromJson(layersItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for LayersListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (layers != null) {
      output["layers"] = layers.map((layersItem) => layersItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of LayersListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A coordinate array representing a line string. */
class LineString {

  /** Create new LineString from JSON data */
  LineString.fromJson(core.Map json) {
  }

  /** Create JSON Object for LineString */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of LineString */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Map is a collection of Layers, optionally contained within folders. */
class Map {

  /** An array of four numbers (west, south, east, north) which define the rectangular bounding box which contains all of the data in this Map. The numbers represent latitude and longitude in decimal degrees. */
  BboxBounds bbox;

  /** The contents of this Map. */
  core.List<MapItem> contents;

  /** The creation time of this map. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String creationTime;

  /** An array of four numbers (west, south, east, north) which defines the rectangular bounding box of the default viewport. The numbers represent latitude and longitude in decimal degrees. */
  BboxBounds defaultViewport;

  /** The description of this Map, supplied by the author. */
  core.String description;

  /** A globally unique ID, used to refer to this Map. */
  core.String id;

  /** The last modified time of this map. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String lastModifiedTime;

  /** The name of this Map, supplied by the author. */
  core.String name;

  /** The ID of the project that this Map is in. */
  core.String projectId;

  /** Tags of this Map. */
  core.List<core.String> tags;

  /** An array containing the available versions of this Map. Currently may only contain "published". */
  core.List<core.String> versions;

  /** Create new Map from JSON data */
  Map.fromJson(core.Map json) {
    if (json.containsKey("bbox")) {
      bbox = new BboxBounds.fromJson(json["bbox"]);
    }
    if (json.containsKey("contents")) {
      contents = json["contents"].map((contentsItem) => new MapItem.fromJson(contentsItem)).toList();
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("defaultViewport")) {
      defaultViewport = new BboxBounds.fromJson(json["defaultViewport"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("tags")) {
      tags = json["tags"].toList();
    }
    if (json.containsKey("versions")) {
      versions = json["versions"].toList();
    }
  }

  /** Create JSON Object for Map */
  core.Map toJson() {
    var output = new core.Map();

    if (bbox != null) {
      output["bbox"] = bbox.toJson();
    }
    if (contents != null) {
      output["contents"] = contents.map((contentsItem) => contentsItem.toJson()).toList();
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (defaultViewport != null) {
      output["defaultViewport"] = defaultViewport.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (tags != null) {
      output["tags"] = tags.toList();
    }
    if (versions != null) {
      output["versions"] = versions.toList();
    }

    return output;
  }

  /** Return String representation of Map */
  core.String toString() => JSON.encode(this.toJson());

}

class MapFolder {

  /** The contents of this Folder. */
  core.List<MapItem> contents;

  /** A user defined alias for this Folder, specific to this Map. */
  core.String key;

  /** The name of this Folder. */
  core.String name;

  /** Identifies this object as a Folder. (( constant "folder" )) */
  core.String type;

  /** The visibility setting of this Folder. One of "defaultOn" or "defaultOff". */
  core.String visibility;

  /** Create new MapFolder from JSON data */
  MapFolder.fromJson(core.Map json) {
    if (json.containsKey("contents")) {
      contents = json["contents"].map((contentsItem) => new MapItem.fromJson(contentsItem)).toList();
    }
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("visibility")) {
      visibility = json["visibility"];
    }
  }

  /** Create JSON Object for MapFolder */
  core.Map toJson() {
    var output = new core.Map();

    if (contents != null) {
      output["contents"] = contents.map((contentsItem) => contentsItem.toJson()).toList();
    }
    if (key != null) {
      output["key"] = key;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (visibility != null) {
      output["visibility"] = visibility;
    }

    return output;
  }

  /** Return String representation of MapFolder */
  core.String toString() => JSON.encode(this.toJson());

}

/** A map item. */
class MapItem {

  /** Create new MapItem from JSON data */
  MapItem.fromJson(core.Map json) {
  }

  /** Create JSON Object for MapItem */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of MapItem */
  core.String toString() => JSON.encode(this.toJson());

}

class MapKmlLink {

  /** The URL to the KML file represented by this KmlLink. */
  core.String kmlUrl;

  /** The name of this KmlLink. */
  core.String name;

  /** Identifies this object as a KmlLink. (( constant "kmlLink" )) */
  core.String type;

  /** The visibility setting of this KmlLink. One of "defaultOn" or "defaultOff". */
  core.String visibility;

  /** Create new MapKmlLink from JSON data */
  MapKmlLink.fromJson(core.Map json) {
    if (json.containsKey("kmlUrl")) {
      kmlUrl = json["kmlUrl"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("visibility")) {
      visibility = json["visibility"];
    }
  }

  /** Create JSON Object for MapKmlLink */
  core.Map toJson() {
    var output = new core.Map();

    if (kmlUrl != null) {
      output["kmlUrl"] = kmlUrl;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (visibility != null) {
      output["visibility"] = visibility;
    }

    return output;
  }

  /** Return String representation of MapKmlLink */
  core.String toString() => JSON.encode(this.toJson());

}

class MapLayer {

  /** The ID of this Layer. This ID can be used to request more details about this Layer. */
  core.String id;

  /** A user defined alias for this Layer, specific to this Map. */
  core.String key;

  /** The name of this Layer. */
  core.String name;

  /** Identifies this object as a Layer. (( constant "layer" )) */
  core.String type;

  /** The visibility setting of this Layer. One of "defaultOn" or "defaultOff". */
  core.String visibility;

  /** Create new MapLayer from JSON data */
  MapLayer.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("visibility")) {
      visibility = json["visibility"];
    }
  }

  /** Create JSON Object for MapLayer */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (key != null) {
      output["key"] = key;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (visibility != null) {
      output["visibility"] = visibility;
    }

    return output;
  }

  /** Return String representation of MapLayer */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to maps.List. */
class MapsListResponse {

  /** Resources returned. */
  core.List<Map> maps;

  /** Next page token. */
  core.String nextPageToken;

  /** Create new MapsListResponse from JSON data */
  MapsListResponse.fromJson(core.Map json) {
    if (json.containsKey("maps")) {
      maps = json["maps"].map((mapsItem) => new Map.fromJson(mapsItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for MapsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (maps != null) {
      output["maps"] = maps.map((mapsItem) => mapsItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of MapsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A list of the parents of an asset. */
class Parent {

  /** The ID of this parent. */
  core.String id;

  /** Create new Parent from JSON data */
  Parent.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for Parent */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of Parent */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to parents.List. */
class ParentsListResponse {

  /** Next page token. */
  core.String nextPageToken;

  /** Resources returned. */
  core.List<Parent> parents;

  /** Create new ParentsListResponse from JSON data */
  ParentsListResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("parents")) {
      parents = json["parents"].map((parentsItem) => new Parent.fromJson(parentsItem)).toList();
    }
  }

  /** Create JSON Object for ParentsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (parents != null) {
      output["parents"] = parents.map((parentsItem) => parentsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ParentsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A coordinate array representing a point. */
class Point {

  /** Create new Point from JSON data */
  Point.fromJson(core.Map json) {
  }

  /** Create JSON Object for Point */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of Point */
  core.String toString() => JSON.encode(this.toJson());

}

/** A coordinate array representing a polygon. */
class Polygon {

  /** Create new Polygon from JSON data */
  Polygon.fromJson(core.Map json) {
  }

  /** Create JSON Object for Polygon */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of Polygon */
  core.String toString() => JSON.encode(this.toJson());

}

/** A project groups a collection of resources. */
class Project {

  /** An ID used to refer to this project. */
  core.String id;

  /** A user provided name for this project. */
  core.String name;

  /** Create new Project from JSON data */
  Project.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for Project */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of Project */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to projects.List. */
class ProjectsListResponse {

  /** Projects returned. */
  core.List<Project> projects;

  /** Create new ProjectsListResponse from JSON data */
  ProjectsListResponse.fromJson(core.Map json) {
    if (json.containsKey("projects")) {
      projects = json["projects"].map((projectsItem) => new Project.fromJson(projectsItem)).toList();
    }
  }

  /** Create JSON Object for ProjectsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (projects != null) {
      output["projects"] = projects.map((projectsItem) => projectsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ProjectsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A raster resource. */
class Raster {

  /** An array of four numbers (west, south, east, north) which define the rectangular bounding box which contains all of the data in this Raster. The numbers represent latitudes and longitudes in decimal degrees. */
  BboxBounds bbox;

  /** The creation time of this raster. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String creationTime;

  /** The description of this Raster, supplied by the author. */
  core.String description;

  /** A globally unique ID, used to refer to this Raster. */
  core.String id;

  /** The last modified time of this raster. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String lastModifiedTime;

  /** The name of this Raster, supplied by the author. */
  core.String name;

  /** The ID of the project that this Raster is in. */
  core.String projectId;

  /** The type of this Raster. Always "image" today. */
  core.String rasterType;

  /** Tags of this Raster. */
  core.List<core.String> tags;

  /** Create new Raster from JSON data */
  Raster.fromJson(core.Map json) {
    if (json.containsKey("bbox")) {
      bbox = new BboxBounds.fromJson(json["bbox"]);
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("rasterType")) {
      rasterType = json["rasterType"];
    }
    if (json.containsKey("tags")) {
      tags = json["tags"].toList();
    }
  }

  /** Create JSON Object for Raster */
  core.Map toJson() {
    var output = new core.Map();

    if (bbox != null) {
      output["bbox"] = bbox.toJson();
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (rasterType != null) {
      output["rasterType"] = rasterType;
    }
    if (tags != null) {
      output["tags"] = tags.toList();
    }

    return output;
  }

  /** Return String representation of Raster */
  core.String toString() => JSON.encode(this.toJson());

}

/** A raster collection groups multiple Raster resources for inclusion in a Layer. */
class RasterCollection {

  /** An array of four numbers (west, south, east, north) which define the rectangular bounding box which contains all of the data in this RasterCollection. The numbers represent latitudes and longitudes in decimal degrees. */
  BboxBounds bbox;

  /** The creation time of this rasterCollection. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String creationTime;

  /** The description of this RasterCollection, supplied by the author. */
  core.String description;

  /** A globally unique ID, used to refer to this RasterCollection. */
  core.String id;

  /** The last modified time of this rasterCollection. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String lastModifiedTime;

  /** True if this RasterCollection is a mosaic. */
  core.bool mosaic;

  /** The name of this RasterCollection, supplied by the author. */
  core.String name;

  /** The ID of the project that this RasterCollection is in. */
  core.String projectId;

  /** The type of rasters contained within this RasterCollection. Always "image" today. */
  core.String rasterType;

  /** Tags of this RasterCollection. */
  core.List<core.String> tags;

  /** Create new RasterCollection from JSON data */
  RasterCollection.fromJson(core.Map json) {
    if (json.containsKey("bbox")) {
      bbox = new BboxBounds.fromJson(json["bbox"]);
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("mosaic")) {
      mosaic = json["mosaic"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("rasterType")) {
      rasterType = json["rasterType"];
    }
    if (json.containsKey("tags")) {
      tags = json["tags"].toList();
    }
  }

  /** Create JSON Object for RasterCollection */
  core.Map toJson() {
    var output = new core.Map();

    if (bbox != null) {
      output["bbox"] = bbox.toJson();
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (mosaic != null) {
      output["mosaic"] = mosaic;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (rasterType != null) {
      output["rasterType"] = rasterType;
    }
    if (tags != null) {
      output["tags"] = tags.toList();
    }

    return output;
  }

  /** Return String representation of RasterCollection */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to raster_collections.List. */
class RastercollectionsListResponse {

  /** Next page token. */
  core.String nextPageToken;

  /** Resources returned. */
  core.List<RasterCollection> rasterCollections;

  /** Create new RastercollectionsListResponse from JSON data */
  RastercollectionsListResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("rasterCollections")) {
      rasterCollections = json["rasterCollections"].map((rasterCollectionsItem) => new RasterCollection.fromJson(rasterCollectionsItem)).toList();
    }
  }

  /** Create JSON Object for RastercollectionsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (rasterCollections != null) {
      output["rasterCollections"] = rasterCollections.map((rasterCollectionsItem) => rasterCollectionsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of RastercollectionsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to rasterCollections.rasters.List. */
class RastersListResponse {

  /** Next page token. */
  core.String nextPageToken;

  /** Resources returned. */
  core.List<Raster> rasters;

  /** Create new RastersListResponse from JSON data */
  RastersListResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("rasters")) {
      rasters = json["rasters"].map((rastersItem) => new Raster.fromJson(rastersItem)).toList();
    }
  }

  /** Create JSON Object for RastersListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (rasters != null) {
      output["rasters"] = rasters.map((rastersItem) => rastersItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of RastersListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** An asset is an abstract representation of any first class object in Maps Engine. */
class Resource {

  /** An array of four numbers (west, south, east, north) which define the rectangular bounding box which contains all of the data in this Asset. The numbers represent latitude and longitude in decimal degrees. */
  BboxBounds bbox;

  /** The creation time of this asset. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String creationTime;

  /** The description of this Asset, supplied by the author. */
  core.String description;

  /** A globally unique ID, used to refer to this Asset. */
  core.String id;

  /** The last modified time of this asset. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String lastModifiedTime;

  /** The name of this Asset, supplied by the author. */
  core.String name;

  /** The ID of the project that this Asset is in. */
  core.String projectId;

  /** The path of the more specific version of this asset. */
  core.String resource;

  /** Tags of this Asset. */
  core.List<core.String> tags;

  /** The type of this Asset. One of "raster", "rasterCollection", "table", "map" or "layer". */
  core.String type;

  /** Create new Resource from JSON data */
  Resource.fromJson(core.Map json) {
    if (json.containsKey("bbox")) {
      bbox = new BboxBounds.fromJson(json["bbox"]);
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("resource")) {
      resource = json["resource"];
    }
    if (json.containsKey("tags")) {
      tags = json["tags"].toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Resource */
  core.Map toJson() {
    var output = new core.Map();

    if (bbox != null) {
      output["bbox"] = bbox.toJson();
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (resource != null) {
      output["resource"] = resource;
    }
    if (tags != null) {
      output["tags"] = tags.toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Resource */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to resources.List. */
class ResourcesListResponse {

  /** Assets returned. */
  core.List<Resource> assets;

  /** Next page token. */
  core.String nextPageToken;

  /** Create new ResourcesListResponse from JSON data */
  ResourcesListResponse.fromJson(core.Map json) {
    if (json.containsKey("assets")) {
      assets = json["assets"].map((assetsItem) => new Resource.fromJson(assetsItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for ResourcesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (assets != null) {
      output["assets"] = assets.map((assetsItem) => assetsItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of ResourcesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A schema indicating the properties which may be associated with features within a Table, and the types of those properties. */
class Schema {

  /** The columns of this Table. */
  core.List<SchemaColumns> columns;

  /** The name of the column that ends up in the geometry field of a Feature. */
  core.String primaryGeometry;

  /** The name of the column that contains the unique identifier of a Feature. */
  core.String primaryKey;

  /** Create new Schema from JSON data */
  Schema.fromJson(core.Map json) {
    if (json.containsKey("columns")) {
      columns = json["columns"].map((columnsItem) => new SchemaColumns.fromJson(columnsItem)).toList();
    }
    if (json.containsKey("primaryGeometry")) {
      primaryGeometry = json["primaryGeometry"];
    }
    if (json.containsKey("primaryKey")) {
      primaryKey = json["primaryKey"];
    }
  }

  /** Create JSON Object for Schema */
  core.Map toJson() {
    var output = new core.Map();

    if (columns != null) {
      output["columns"] = columns.map((columnsItem) => columnsItem.toJson()).toList();
    }
    if (primaryGeometry != null) {
      output["primaryGeometry"] = primaryGeometry;
    }
    if (primaryKey != null) {
      output["primaryKey"] = primaryKey;
    }

    return output;
  }

  /** Return String representation of Schema */
  core.String toString() => JSON.encode(this.toJson());

}

class SchemaColumns {

  /** The name of this column. */
  core.String name;

  /** The type of the data stored in this column. One of "integer", "double", "boolean", "string", "mixedGeometry", "points", "lineStrings" or "polygons". */
  core.String type;

  /** Create new SchemaColumns from JSON data */
  SchemaColumns.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for SchemaColumns */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of SchemaColumns */
  core.String toString() => JSON.encode(this.toJson());

}

/** A collection of geographic features, and associated metadata. */
class Table {

  /** An array of four numbers (west, south, east, north) which define the rectangular bounding box which contains all of the data in this table. */
  BboxBounds bbox;

  /** The creation time of this table. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String creationTime;

  /** The description of this table, supplied by the author. */
  core.String description;

  /** The name of an access list of the Map Editor type. The user on whose behalf the request is being sent must be an editor on that access list. Read About access lists in the Google Maps Engine help center for more information. */
  core.String draftAccessList;

  /** The files associated with this table. */
  core.List<File> files;

  /** A globally unique ID, used to refer to this table. */
  core.String id;

  /** The last modified time of this table. The value is an RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). */
  core.String lastModifiedTime;

  /** The name of this table, supplied by the author. */
  core.String name;

  /** The processing status of this table. */
  core.String processingStatus;

  /** The ID of the project to which the table belongs. */
  core.String projectId;

  /** The access list to whom view permissions are granted. The value must be the name of a Maps Engine access list of the Map Viewer type, and the user must be a viewer on that list. Read About access lists in the Google Maps Engine help center for more information. */
  core.String publishedAccessList;

  /** The schema for this table. */
  Schema schema;

  /** Encoding of the uploaded files. Valid values include UTF-8, CP1251, ISO 8859-1, and Shift_JIS. */
  core.String sourceEncoding;

  /** An array of text strings, with each string representing a tag. More information about tags can be found in the Tagging data article of the Maps Engine help center. */
  core.List<core.String> tags;

  /** Create new Table from JSON data */
  Table.fromJson(core.Map json) {
    if (json.containsKey("bbox")) {
      bbox = new BboxBounds.fromJson(json["bbox"]);
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("draftAccessList")) {
      draftAccessList = json["draftAccessList"];
    }
    if (json.containsKey("files")) {
      files = json["files"].map((filesItem) => new File.fromJson(filesItem)).toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("processingStatus")) {
      processingStatus = json["processingStatus"];
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("publishedAccessList")) {
      publishedAccessList = json["publishedAccessList"];
    }
    if (json.containsKey("schema")) {
      schema = new Schema.fromJson(json["schema"]);
    }
    if (json.containsKey("sourceEncoding")) {
      sourceEncoding = json["sourceEncoding"];
    }
    if (json.containsKey("tags")) {
      tags = json["tags"].toList();
    }
  }

  /** Create JSON Object for Table */
  core.Map toJson() {
    var output = new core.Map();

    if (bbox != null) {
      output["bbox"] = bbox.toJson();
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (draftAccessList != null) {
      output["draftAccessList"] = draftAccessList;
    }
    if (files != null) {
      output["files"] = files.map((filesItem) => filesItem.toJson()).toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (processingStatus != null) {
      output["processingStatus"] = processingStatus;
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (publishedAccessList != null) {
      output["publishedAccessList"] = publishedAccessList;
    }
    if (schema != null) {
      output["schema"] = schema.toJson();
    }
    if (sourceEncoding != null) {
      output["sourceEncoding"] = sourceEncoding;
    }
    if (tags != null) {
      output["tags"] = tags.toList();
    }

    return output;
  }

  /** Return String representation of Table */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response returned by a call to tables.List. */
class TablesListResponse {

  /** Next page token. */
  core.String nextPageToken;

  /** Resources returned. */
  core.List<Table> tables;

  /** Create new TablesListResponse from JSON data */
  TablesListResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("tables")) {
      tables = json["tables"].map((tablesItem) => new Table.fromJson(tablesItem)).toList();
    }
  }

  /** Create JSON Object for TablesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (tables != null) {
      output["tables"] = tables.map((tablesItem) => tablesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TablesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
