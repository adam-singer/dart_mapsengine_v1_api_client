# google_mapsengine_v1_api

### Description

Auto-generated client library for accessing the mapsengine v1 API.

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Maps Engine API - mapsengine v1

The Google Maps Engine API allows developers to store and query geospatial vector and raster data.

Official API documentation: https://developers.google.com/maps-engine/

Adding dependency to pubspec.yaml

```
  dependencies:
    google_mapsengine_v1_api: '>=0.4.0'
```

For web applications:

```
  import "package:google_mapsengine_v1_api/mapsengine_v1_api_browser.dart" as mapsengineclient;
```

For console application:

```
  import "package:google_mapsengine_v1_api/mapsengine_v1_api_console.dart" as mapsengineclient;
```

Working without authentication the following constructor can be called:

```
  var mapsengine = new mapsengineclient.Mapsengine();
```

To use authentication create a new `GoogleOAuth2` object and pass it to the constructor:


```
  GoogleOAuth2 auth = new GoogleOAuth2(CLIENT_ID, SCOPES);
  var mapsengine = new mapsengineclient.Mapsengine(auth);
```

### Licenses

```
Copyright (c) 2013-2014 Gerwin Sturm & Adam Singer

Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a 
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

------------------------
Based on http://code.google.com/p/google-api-dart-client

Copyright 2012 Google Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

```
