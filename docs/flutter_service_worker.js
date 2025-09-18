'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "cd27f81cb3bfc11cb3abb83807ef4546",
"assets/AssetManifest.bin.json": "3f96ff723df91357f533a95a00681e59",
"assets/AssetManifest.json": "be4ee0bb86ae5caac82e613c25b8551a",
"assets/assets/cv.pdf": "052b84d0f836efa16a4b6e1a352c73f9",
"assets/assets/images/azkar_elganaa/1.jpg": "f13832e2c161b34f6ff9354495f9e564",
"assets/assets/images/azkar_elganaa/10.jpg": "0c1db72b189f13fa2705d0fe800ef172",
"assets/assets/images/azkar_elganaa/11.jpg": "0b69b524b88adb58ea0b7411136fdb8d",
"assets/assets/images/azkar_elganaa/12.jpg": "4bd8bdc619d65d1e59581a0a00f6259f",
"assets/assets/images/azkar_elganaa/13.jpg": "2adcd010aa18f33515bef03f4abb7f8b",
"assets/assets/images/azkar_elganaa/14.jpg": "d1a9b3f0c9fd5baf91844931b1a332ef",
"assets/assets/images/azkar_elganaa/15.jpg": "90d03ce8c0a240089109a9066df38029",
"assets/assets/images/azkar_elganaa/2.jpg": "0b92fad3defb8605cd8c0e32ac1fd030",
"assets/assets/images/azkar_elganaa/3.jpg": "eee7109d247874c0f44b50f3fd8bafa9",
"assets/assets/images/azkar_elganaa/4.jpg": "a42048afafc3d68dbd8a6bc5c82091a5",
"assets/assets/images/azkar_elganaa/5.jpg": "a6cb51e9624d0999a7f8dca289b810cf",
"assets/assets/images/azkar_elganaa/6.jpg": "4fcaaf1841dcc03eb0629577fb1e69f3",
"assets/assets/images/azkar_elganaa/7.jpg": "6f40e687738463011f25ed292bcfc0ad",
"assets/assets/images/azkar_elganaa/8.jpg": "ba037c3ac7cf3ade476f5c1f9d584b33",
"assets/assets/images/azkar_elganaa/9.jpg": "d8ce3a334a15b7eed7f1478937361d39",
"assets/assets/images/barber_shop/1.jpg": "2be0ea79ee6ec6967982fc90dbf2d809",
"assets/assets/images/barber_shop/10.jpg": "2b41ff05e6a1da22e59d1bd37abab28e",
"assets/assets/images/barber_shop/11.jpg": "402a142078b77c01eddcebb370d4dfe6",
"assets/assets/images/barber_shop/12.jpg": "d43b61207323fc163b686e2e09eddab4",
"assets/assets/images/barber_shop/2.jpg": "83e6f8013cd6f6caf00b59ec7eca1af9",
"assets/assets/images/barber_shop/3.jpg": "98673152c66289824ebd7633ab9da6ce",
"assets/assets/images/barber_shop/4.jpg": "6c4eeee405a5802dfe7cf14faef01175",
"assets/assets/images/barber_shop/5.jpg": "a06248d057255c2014d07d2ad8c2c40d",
"assets/assets/images/barber_shop/6.jpg": "15cee47e0733b73845089166e832c4fc",
"assets/assets/images/barber_shop/7.jpg": "c2fb890580fa892afacda83708cdcad0",
"assets/assets/images/barber_shop/8.jpg": "f51ad49c5eaa06adc7de272bbfbb1308",
"assets/assets/images/barber_shop/9.jpg": "309a8b496677822d5dc4a499dc98f164",
"assets/assets/images/laborex/1.png": "ac0c5e631e03f080d85f6cb83776a0b5",
"assets/assets/images/laborex/2.png": "cea72dd1d8d6478f3aa93ff667ed0da4",
"assets/assets/images/laborex/3.png": "071e8b5b9fc934bcd425c92d7356fe2e",
"assets/assets/images/laborex/4.png": "ce2b2935ed9777560ee86cac7fc3b544",
"assets/assets/images/laborex/5.png": "f88421b6742bd9177196191840fbc857",
"assets/assets/images/laborex/6.png": "b55da81d1b9c1da9ca631510dc030d6f",
"assets/assets/images/laborex/7.png": "09cbc7a9105b1af508954ed21b2ce12f",
"assets/assets/images/laborex/8.png": "e6073f38eb6fcd17da12ff6319f4e8a2",
"assets/assets/images/laborex/9.png": "7166bbe40ed9c351c2cf70699bb34452",
"assets/assets/images/profile.jpg": "1c7e6948efcaed01cb6a6a859e5cf576",
"assets/assets/images/sed/1.jpg": "a447824d6d93c12a723b14f5e67990dc",
"assets/assets/images/sed/10.jpg": "4b1b2df07ea8b54b478cda15f0dfdb64",
"assets/assets/images/sed/11.jpg": "3816a5e734d05a8368bbf26ee7db67f3",
"assets/assets/images/sed/2.jpg": "ec8c0254d1aa80d6b0537dc2e524c234",
"assets/assets/images/sed/3.jpg": "b66b1e0fda6c72c177db1916e608df08",
"assets/assets/images/sed/4.jpg": "ef8ec56b1d079957fddac0ce9924f76c",
"assets/assets/images/sed/5.jpg": "bc32e7b4937d86542940d92a7a780325",
"assets/assets/images/sed/6.jpg": "534cdf87c04fab733d8df1e8dd23b6da",
"assets/assets/images/sed/7.jpg": "1942e39ea604bfa2bb0d889afc97e1fb",
"assets/assets/images/sed/8.jpg": "1024a718ceb278c150dd7dcc52c7779d",
"assets/assets/images/sed/9.jpg": "b542573377f507c6113e47ae48e918b1",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "51754e699b4bf2b7727c4ee9622154a5",
"assets/NOTICES": "2ac60219022c3c3e7ab1b1152f92974e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "8d04ff36f0aef96649c29bd18de61257",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "262525e2081311609d1fdab966c82bfc",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "5b1fc7b2bc9754bfa175e9fc3de9bea8",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "2e4a899371187f53d187c96af58012f8",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "b3a089ab9fe29e08ea852386308c661d",
"/": "b3a089ab9fe29e08ea852386308c661d",
"main.dart.js": "ef5541ab0fa4d2f0c870d9195202ea69",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "009c9e65172e010890f7f65fde438006"};
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
