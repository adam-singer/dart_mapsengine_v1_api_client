part of mapsengine_v1_api;

class AssetsResource_ {

  final Client _client;

  final AssetsParentsResource_ parents;

  AssetsResource_(Client client) :
      _client = client,
      parents = new AssetsParentsResource_(client);

  /**
   * Return metadata for a particular asset.
   *
   * [id] - The ID of the asset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Resource> get(core.String id, {core.Map optParams}) {
    var url = "assets/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Resource.fromJson(data));
  }

  /**
   * Return all assets readable by the current user.
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or after this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or before this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or after this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or before this time.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response. To list all available projects with their IDs, send a Projects: list request. You can also find your project ID as the value of the DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [type] - An asset type restriction. If set, only resources of this type will be returned.
   *   Allowed values:
   *     layer - Return layers.
   *     map - Return maps.
   *     rasterCollection - Return raster collections.
   *     table - Return tables.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ResourcesListResponse> list({core.String bbox, core.String createdAfter, core.String createdBefore, core.String creatorEmail, core.int maxResults, core.String modifiedAfter, core.String modifiedBefore, core.String pageToken, core.String projectId, core.String type, core.Map optParams}) {
    var url = "assets";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bbox != null) queryParams["bbox"] = bbox;
    if (createdAfter != null) queryParams["createdAfter"] = createdAfter;
    if (createdBefore != null) queryParams["createdBefore"] = createdBefore;
    if (creatorEmail != null) queryParams["creatorEmail"] = creatorEmail;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (modifiedAfter != null) queryParams["modifiedAfter"] = modifiedAfter;
    if (modifiedBefore != null) queryParams["modifiedBefore"] = modifiedBefore;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId != null) queryParams["projectId"] = projectId;
    if (type != null && !["layer", "map", "rasterCollection", "table"].contains(type)) {
      paramErrors.add("Allowed values for type: layer, map, rasterCollection, table");
    }
    if (type != null) queryParams["type"] = type;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ResourcesListResponse.fromJson(data));
  }
}

class AssetsParentsResource_ {

  final Client _client;

  AssetsParentsResource_(Client client) :
      _client = client;

  /**
   * Return all parent ids of the specified asset.
   *
   * [id] - The ID of the asset whose parents will be listed.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ParentsListResponse> list(core.String id, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "assets/{id}/parents";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ParentsListResponse.fromJson(data));
  }
}

class LayersResource_ {

  final Client _client;

  final LayersParentsResource_ parents;

  LayersResource_(Client client) :
      _client = client,
      parents = new LayersParentsResource_(client);

  /**
   * Return metadata for a particular layer.
   *
   * [id] - The ID of the layer.
   *
   * [version]
   *   Allowed values:
   *     published - The published version.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Layer> get(core.String id, {core.String version, core.Map optParams}) {
    var url = "layers/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (version != null && !["published"].contains(version)) {
      paramErrors.add("Allowed values for version: published");
    }
    if (version != null) queryParams["version"] = version;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Layer.fromJson(data));
  }

  /**
   * Return all layers readable by the current user.
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or after this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or before this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or after this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or before this time.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response. To list all available projects with their IDs, send a Projects: list request. You can also find your project ID as the value of the DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LayersListResponse> list({core.String bbox, core.String createdAfter, core.String createdBefore, core.String creatorEmail, core.int maxResults, core.String modifiedAfter, core.String modifiedBefore, core.String pageToken, core.String projectId, core.Map optParams}) {
    var url = "layers";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bbox != null) queryParams["bbox"] = bbox;
    if (createdAfter != null) queryParams["createdAfter"] = createdAfter;
    if (createdBefore != null) queryParams["createdBefore"] = createdBefore;
    if (creatorEmail != null) queryParams["creatorEmail"] = creatorEmail;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (modifiedAfter != null) queryParams["modifiedAfter"] = modifiedAfter;
    if (modifiedBefore != null) queryParams["modifiedBefore"] = modifiedBefore;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId != null) queryParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LayersListResponse.fromJson(data));
  }
}

class LayersParentsResource_ {

  final Client _client;

  LayersParentsResource_(Client client) :
      _client = client;

  /**
   * Return all parent ids of the specified layer.
   *
   * [id] - The ID of the layer whose parents will be listed.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ParentsListResponse> list(core.String id, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "layers/{id}/parents";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ParentsListResponse.fromJson(data));
  }
}

class MapsResource_ {

  final Client _client;

  MapsResource_(Client client) :
      _client = client;

  /**
   * Return metadata for a particular map.
   *
   * [id] - The ID of the map.
   *
   * [version]
   *   Allowed values:
   *     published - The published version.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Map> get(core.String id, {core.String version, core.Map optParams}) {
    var url = "maps/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (version != null && !["published"].contains(version)) {
      paramErrors.add("Allowed values for version: published");
    }
    if (version != null) queryParams["version"] = version;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Map.fromJson(data));
  }

  /**
   * Return all maps readable by the current user.
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or after this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or before this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or after this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or before this time.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response. To list all available projects with their IDs, send a Projects: list request. You can also find your project ID as the value of the DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<MapsListResponse> list({core.String bbox, core.String createdAfter, core.String createdBefore, core.String creatorEmail, core.int maxResults, core.String modifiedAfter, core.String modifiedBefore, core.String pageToken, core.String projectId, core.Map optParams}) {
    var url = "maps";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bbox != null) queryParams["bbox"] = bbox;
    if (createdAfter != null) queryParams["createdAfter"] = createdAfter;
    if (createdBefore != null) queryParams["createdBefore"] = createdBefore;
    if (creatorEmail != null) queryParams["creatorEmail"] = creatorEmail;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (modifiedAfter != null) queryParams["modifiedAfter"] = modifiedAfter;
    if (modifiedBefore != null) queryParams["modifiedBefore"] = modifiedBefore;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId != null) queryParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new MapsListResponse.fromJson(data));
  }
}

class ProjectsResource_ {

  final Client _client;

  ProjectsResource_(Client client) :
      _client = client;

  /**
   * Return all projects readable by the current user.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ProjectsListResponse> list({core.Map optParams}) {
    var url = "projects";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ProjectsListResponse.fromJson(data));
  }
}

class RasterCollectionsResource_ {

  final Client _client;

  final RasterCollectionsParentsResource_ parents;
  final RasterCollectionsRastersResource_ rasters;

  RasterCollectionsResource_(Client client) :
      _client = client,
      parents = new RasterCollectionsParentsResource_(client),
      rasters = new RasterCollectionsRastersResource_(client);

  /**
   * Return metadata for a particular raster collection.
   *
   * [id] - The ID of the raster collection.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RasterCollection> get(core.String id, {core.Map optParams}) {
    var url = "rasterCollections/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RasterCollection.fromJson(data));
  }

  /**
   * Return all raster collections readable by the current user.
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or after this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or before this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or after this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or before this time.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response. To list all available projects with their IDs, send a Projects: list request. You can also find your project ID as the value of the DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RastercollectionsListResponse> list({core.String bbox, core.String createdAfter, core.String createdBefore, core.String creatorEmail, core.int maxResults, core.String modifiedAfter, core.String modifiedBefore, core.String pageToken, core.String projectId, core.Map optParams}) {
    var url = "rasterCollections";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bbox != null) queryParams["bbox"] = bbox;
    if (createdAfter != null) queryParams["createdAfter"] = createdAfter;
    if (createdBefore != null) queryParams["createdBefore"] = createdBefore;
    if (creatorEmail != null) queryParams["creatorEmail"] = creatorEmail;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (modifiedAfter != null) queryParams["modifiedAfter"] = modifiedAfter;
    if (modifiedBefore != null) queryParams["modifiedBefore"] = modifiedBefore;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId != null) queryParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RastercollectionsListResponse.fromJson(data));
  }
}

class RasterCollectionsParentsResource_ {

  final Client _client;

  RasterCollectionsParentsResource_(Client client) :
      _client = client;

  /**
   * Return all parent ids of the specified raster collection.
   *
   * [id] - The ID of the raster collection whose parents will be listed.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ParentsListResponse> list(core.String id, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "rasterCollections/{id}/parents";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ParentsListResponse.fromJson(data));
  }
}

class RasterCollectionsRastersResource_ {

  final Client _client;

  RasterCollectionsRastersResource_(Client client) :
      _client = client;

  /**
   * Return all rasters within a raster collection.
   *
   * [id] - The ID of the raster collection to which these rasters belong.
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or after this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or before this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or after this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or before this time.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RastersListResponse> list(core.String id, {core.String bbox, core.String createdAfter, core.String createdBefore, core.String creatorEmail, core.int maxResults, core.String modifiedAfter, core.String modifiedBefore, core.String pageToken, core.Map optParams}) {
    var url = "rasterCollections/{id}/rasters";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bbox != null) queryParams["bbox"] = bbox;
    if (createdAfter != null) queryParams["createdAfter"] = createdAfter;
    if (createdBefore != null) queryParams["createdBefore"] = createdBefore;
    if (creatorEmail != null) queryParams["creatorEmail"] = creatorEmail;
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (modifiedAfter != null) queryParams["modifiedAfter"] = modifiedAfter;
    if (modifiedBefore != null) queryParams["modifiedBefore"] = modifiedBefore;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RastersListResponse.fromJson(data));
  }
}

class RastersResource_ {

  final Client _client;

  final RastersFilesResource_ files;
  final RastersParentsResource_ parents;

  RastersResource_(Client client) :
      _client = client,
      files = new RastersFilesResource_(client),
      parents = new RastersParentsResource_(client);

  /**
   * Return metadata for a single raster.
   *
   * [id] - The ID of the raster.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Image> get(core.String id, {core.Map optParams}) {
    var url = "rasters/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Image.fromJson(data));
  }

  /**
   * Create a skeleton raster asset for upload.
   *
   * [request] - Image to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Image> upload(Image request, {core.Map optParams}) {
    var url = "rasters/upload";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Image.fromJson(data));
  }
}

class RastersFilesResource_ {

  final Client _client;

  RastersFilesResource_(Client client) :
      _client = client;

  /**
   * Upload a file to a raster asset.
   *
   * [id] - The ID of the raster asset.
   *
   * [filename] - The file name of this uploaded file.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> insert(core.String id, core.String filename, {core.String content, core.String contentType, core.Map optParams}) {
    var url = "rasters/{id}/files";
    var uploadUrl = "/upload/mapsengine/v1/rasters/{id}/files";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (filename == null) paramErrors.add("filename is required");
    if (filename != null) queryParams["filename"] = filename;
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    return response;
  }
}

class RastersParentsResource_ {

  final Client _client;

  RastersParentsResource_(Client client) :
      _client = client;

  /**
   * Return all parent ids of the specified rasters.
   *
   * [id] - The ID of the rasters whose parents will be listed.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ParentsListResponse> list(core.String id, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "rasters/{id}/parents";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ParentsListResponse.fromJson(data));
  }
}

class TablesResource_ {

  final Client _client;

  final TablesFeaturesResource_ features;
  final TablesFilesResource_ files;
  final TablesParentsResource_ parents;

  TablesResource_(Client client) :
      _client = client,
      features = new TablesFeaturesResource_(client),
      files = new TablesFilesResource_(client),
      parents = new TablesParentsResource_(client);

  /**
   * Create a table asset.
   *
   * [request] - Table to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Table> create(Table request, {core.Map optParams}) {
    var url = "tables";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Table.fromJson(data));
  }

  /**
   * Return metadata for a particular table, including the schema.
   *
   * [id] - The ID of the table.
   *
   * [version]
   *   Allowed values:
   *     published - The published version.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Table> get(core.String id, {core.String version, core.Map optParams}) {
    var url = "tables/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (version != null && !["published"].contains(version)) {
      paramErrors.add("Allowed values for version: published");
    }
    if (version != null) queryParams["version"] = version;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Table.fromJson(data));
  }

  /**
   * Return all tables readable by the current user.
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or after this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been created at or before this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or after this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z). Returned assets will have been modified at or before this time.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response. To list all available projects with their IDs, send a Projects: list request. You can also find your project ID as the value of the DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TablesListResponse> list({core.String bbox, core.String createdAfter, core.String createdBefore, core.String creatorEmail, core.int maxResults, core.String modifiedAfter, core.String modifiedBefore, core.String pageToken, core.String projectId, core.Map optParams}) {
    var url = "tables";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (bbox != null) queryParams["bbox"] = bbox;
    if (createdAfter != null) queryParams["createdAfter"] = createdAfter;
    if (createdBefore != null) queryParams["createdBefore"] = createdBefore;
    if (creatorEmail != null) queryParams["creatorEmail"] = creatorEmail;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (modifiedAfter != null) queryParams["modifiedAfter"] = modifiedAfter;
    if (modifiedBefore != null) queryParams["modifiedBefore"] = modifiedBefore;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId != null) queryParams["projectId"] = projectId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TablesListResponse.fromJson(data));
  }

  /**
   * Create a placeholder table asset to which table files can be uploaded.
Once the placeholder has been created, files are uploaded to the https://www.googleapis.com/upload/mapsengine/v1/tables/table_id/files endpoint.
See Table Upload in the Developer's Guide or Table.files: insert in the reference documentation for more information.
   *
   * [request] - Table to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Table> upload(Table request, {core.Map optParams}) {
    var url = "tables/upload";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Table.fromJson(data));
  }
}

class TablesFeaturesResource_ {

  final Client _client;

  TablesFeaturesResource_(Client client) :
      _client = client;

  /**
   * Delete all features matching the given IDs.
   *
   * [request] - FeaturesBatchDeleteRequest to send in this request
   *
   * [id] - The ID of the table that contains the features to be deleted.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> batchDelete(FeaturesBatchDeleteRequest request, core.String id, {core.Map optParams}) {
    var url = "tables/{id}/features/batchDelete";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Append the supplied features.
   *
   * [request] - FeaturesBatchInsertRequest to send in this request
   *
   * [id] - The ID of the table to append the features to.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> batchInsert(FeaturesBatchInsertRequest request, core.String id, {core.Map optParams}) {
    var url = "tables/{id}/features/batchInsert";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Patch the supplied features.
   *
   * [request] - FeaturesBatchPatchRequest to send in this request
   *
   * [id] - The ID of the table containing the features to be patched.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> batchPatch(FeaturesBatchPatchRequest request, core.String id, {core.Map optParams}) {
    var url = "tables/{id}/features/batchPatch";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Return a single feature, given its ID.
   *
   * [tableId] - The ID of the table.
   *
   * [id] - The ID of the feature to get.
   *
   * [select] - A SQL-like projection clause used to specify returned properties. If this parameter is not included, all properties are returned.
   *
   * [version] - The table version to access. See Accessing Public Data for information.
   *   Allowed values:
   *     published - The published version.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Feature> get(core.String tableId, core.String id, {core.String select, core.String version, core.Map optParams}) {
    var url = "tables/{tableId}/features/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (select != null) queryParams["select"] = select;
    if (tableId == null) paramErrors.add("tableId is required");
    if (tableId != null) urlParams["tableId"] = tableId;
    if (version != null && !["published"].contains(version)) {
      paramErrors.add("Allowed values for version: published");
    }
    if (version != null) queryParams["version"] = version;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Feature.fromJson(data));
  }

  /**
   * Return all features readable by the current user.
   *
   * [id] - The ID of the table to which these features belong.
   *
   * [include] - A comma separated list of optional data to include. Optional data available: schema.
   *
   * [intersects] - A geometry literal that specifies the spatial restriction of the query.
   *
   * [limit] - The total number of features to return from the query, irrespective of the number of pages.
   *
   * [maxResults] - The maximum number of items to include in the response, used for paging.
   *
   * [orderBy] - An SQL-like order by clause used to sort results. If this parameter is not included, the order of features is undefined.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [select] - A SQL-like projection clause used to specify returned properties. If this parameter is not included, all properties are returned.
   *
   * [version] - The table version to access. See Accessing Public Data for information.
   *   Allowed values:
   *     published - The published version.
   *
   * [where] - An SQL-like predicate used to filter results.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<FeaturesListResponse> list(core.String id, {core.String include, core.String intersects, core.int limit, core.int maxResults, core.String orderBy, core.String pageToken, core.String select, core.String version, core.String where, core.Map optParams}) {
    var url = "tables/{id}/features";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (include != null) queryParams["include"] = include;
    if (intersects != null) queryParams["intersects"] = intersects;
    if (limit != null) queryParams["limit"] = limit;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (select != null) queryParams["select"] = select;
    if (version != null && !["published"].contains(version)) {
      paramErrors.add("Allowed values for version: published");
    }
    if (version != null) queryParams["version"] = version;
    if (where != null) queryParams["where"] = where;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new FeaturesListResponse.fromJson(data));
  }
}

class TablesFilesResource_ {

  final Client _client;

  TablesFilesResource_(Client client) :
      _client = client;

  /**
   * Upload a file to a placeholder table asset. See Table Upload in the Developer's Guide for more information.
Supported file types are listed in the Supported data formats and limits article of the Google Maps Engine help center.
   *
   * [id] - The ID of the table asset.
   *
   * [filename] - The file name of this uploaded file.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> insert(core.String id, core.String filename, {core.String content, core.String contentType, core.Map optParams}) {
    var url = "tables/{id}/files";
    var uploadUrl = "/upload/mapsengine/v1/tables/{id}/files";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (filename == null) paramErrors.add("filename is required");
    if (filename != null) queryParams["filename"] = filename;
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    return response;
  }
}

class TablesParentsResource_ {

  final Client _client;

  TablesParentsResource_(Client client) :
      _client = client;

  /**
   * Return all parent ids of the specified table.
   *
   * [id] - The ID of the table whose parents will be listed.
   *
   * [maxResults] - The maximum number of items to include in a single response page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ParentsListResponse> list(core.String id, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "tables/{id}/parents";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ParentsListResponse.fromJson(data));
  }
}

