'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"manifest.json": "0867c3e13649ac4d06fe34b7b3ddce08",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"main.dart.js": "773dc23cfceafb94b83002b3c5a90bb7",
"version.json": "b969cf14319447458f3e4b73e1530ad5",
"assets/NOTICES": "2744929c681ccff469d7c5b0724c77ea",
"assets/fonts/MaterialIcons-Regular.otf": "34865f961fe3d89f542eef5f7cbd8ccb",
"assets/AssetManifest.json": "6f83b4bf73077ffb45e86aa5f6db4b79",
"assets/FontManifest.json": "5d154fb9d41a3427664e19c13711f66a",
"assets/AssetManifest.bin.json": "b9f2f97b60d8bf4c2c9b5929a0dbb8b4",
"assets/AssetManifest.bin": "3c7d27c13673e80a526ea6f239b764a9",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/packages/batt_ds/assets/fonts/Inter_24pt-Regular.ttf": "e48c1217adab2a0e44f8df400d33c325",
"assets/packages/batt_ds/assets/fonts/LicensePlate.ttf": "4f4bddb1873e2da16584a17929ed6eaf",
"assets/packages/batt_ds/assets/loader/state=15.png": "e28c2de2a8059809ea058618bbb0cda3",
"assets/packages/batt_ds/assets/loader/state=9.png": "a7402c48407832ae45ada817a593d186",
"assets/packages/batt_ds/assets/loader/state=10.png": "3f1e666c293b92096fbae951ac9dd278",
"assets/packages/batt_ds/assets/loader/state=12.png": "d1109ce76c938a1fd35b0da6d9aab3d3",
"assets/packages/batt_ds/assets/loader/state=20.png": "4f8884d4e73f3e60933f8a64196bc625",
"assets/packages/batt_ds/assets/loader/state=22.png": "a7203b31164b1c7b6c2df974742c15bc",
"assets/packages/batt_ds/assets/loader/state=5.png": "3ff9f0af03064a7c11f3cbec4491c70c",
"assets/packages/batt_ds/assets/loader/state=18.png": "1146d22c77df1709c952d74f10a81286",
"assets/packages/batt_ds/assets/loader/state=24.png": "91ec04baff0a6f1e952e8fe26da42b56",
"assets/packages/batt_ds/assets/loader/state=2.png": "63a9d6b3169ebdfeb98e726bc9132349",
"assets/packages/batt_ds/assets/loader/state=16.png": "6d0e9fe410bcd622f139a5745584a8da",
"assets/packages/batt_ds/assets/loader/state=11.png": "ef5ec365a0b60ec84fa36d8db8b2c8b6",
"assets/packages/batt_ds/assets/loader/state=14.png": "d1fb7db01027d97ab431090c08b6bb11",
"assets/packages/batt_ds/assets/loader/state=1.png": "b87ac4c37f2150ba1105813ba9b9f9e4",
"assets/packages/batt_ds/assets/loader/state=3.png": "c19cf5ae37db3ebf00f77c09ac945fb7",
"assets/packages/batt_ds/assets/loader/state=7.png": "faee55c133b07eb985d55f89e56bd604",
"assets/packages/batt_ds/assets/loader/state=19.png": "5704d7c06dfcebb31b0141c5ebcb2578",
"assets/packages/batt_ds/assets/loader/state=8.png": "4130eb5255ae5fc69810ff4970325e77",
"assets/packages/batt_ds/assets/loader/state=6.png": "b21b3dadb1899edb73ee29fda994736f",
"assets/packages/batt_ds/assets/loader/state=17.png": "7e1be7f59c8c75022b6da59c78e91d14",
"assets/packages/batt_ds/assets/loader/state=13.png": "c04d7ccedea6b2dba80ae455a4ae7725",
"assets/packages/batt_ds/assets/loader/state=4.png": "ef7ad28bcdee0659bc1bed5f2f3cc1b0",
"assets/packages/batt_ds/assets/loader/state=21.png": "dafab7fb342c7ca9b2f1f4f1183443b7",
"assets/packages/batt_ds/assets/loader/state=23.png": "b01d4f94ff9a760a5f79f7a04b941897",
"assets/packages/batt_ds/assets/icons/range.svg": "70ed0f748989c7ab27ff3eb875acf435",
"assets/packages/batt_ds/assets/icons/walk.svg": "8cd967cd732f4059920ace58c3984928",
"assets/packages/batt_ds/assets/icons/car.svg": "96193ea41980136d6eda21b870d167aa",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/storybook_toolkit/assets/README.md": "fbaed1ae60d80596d99545ef45d72803",
"flutter_bootstrap.js": "131499a8d14de8c954b2733e10371ef4",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "23dcf6eb93408b0fdd941cc89698a34c",
"/": "23dcf6eb93408b0fdd941cc89698a34c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
