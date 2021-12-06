---
title: GetProspect API v1.0
language_tabs:
  - shell: Curl
  - javascript: JavaScript
  - python: Python
  - php: PHP
  - go: GO
toc_footers: []
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

<!-- Generator: Widdershins v4.0.1 -->

<h1 id="getprospect-api">GetProspect API v1.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

GetProspect API reference v1

Base URLs:

# Authentication

* API Key (apiKey)
    - Parameter Name: **apiKey**, in: header. 

<h1 id="getprospect-api-lists">Lists</h1>

## Get all lists

<a id="opIdListController_getAllLists"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/contacts/lists \
  -H 'apiKey: API_KEY'

```

```javascript

const headers = {
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/lists',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'apiKey': 'API_KEY'
}

r = requests.get('/api/v1/contacts/lists', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/api/v1/contacts/lists', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/api/v1/contacts/lists", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/contacts/lists`

Get all contacts lists

<h3 id="get-all-lists-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Create new list

<a id="opIdListController_createList"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/contacts/lists \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "name": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/lists',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.post('/api/v1/contacts/lists', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/api/v1/contacts/lists', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/api/v1/contacts/lists", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/contacts/lists`

Add new contact list

> Body parameter

```json
{
  "name": "string"
}
```

<h3 id="create-new-list-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreateListDto](#schemacreatelistdto)|true|none|

<h3 id="create-new-list-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Update lists deleted status

<a id="opIdListController_updateListsStatuses"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1/contacts/lists \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "listsIds": [
    "string"
  ],
  "updateContactsStatus": true,
  "operationType": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/lists',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.patch('/api/v1/contacts/lists', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','/api/v1/contacts/lists', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "/api/v1/contacts/lists", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /api/v1/contacts/lists`

Update multiple lists

> Body parameter

```json
{
  "listsIds": [
    "string"
  ],
  "updateContactsStatus": true,
  "operationType": "string"
}
```

<h3 id="update-lists-deleted-status-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[UpdateListStatusDto](#schemaupdateliststatusdto)|true|none|

<h3 id="update-lists-deleted-status-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Permanently delete lists

<a id="opIdListController_deleteLists"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1/contacts/lists \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '[
  "string"
]';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/lists',
{
  method: 'DELETE',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.delete('/api/v1/contacts/lists', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','/api/v1/contacts/lists', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "/api/v1/contacts/lists", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /api/v1/contacts/lists`

Permanently delete multiple lists

> Body parameter

```json
[
  "string"
]
```

<h3 id="permanently-delete-lists-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|array[string]|true|none|

<h3 id="permanently-delete-lists-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Get count

<a id="opIdListController_getListsCount"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/contacts/lists/lists-sizes \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/lists/lists-sizes',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.post('/api/v1/contacts/lists/lists-sizes', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/api/v1/contacts/lists/lists-sizes', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/api/v1/contacts/lists/lists-sizes", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/contacts/lists/lists-sizes`

Get lists count dy list id

> Body parameter

```json
{}
```

<h3 id="get-count-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SearchListsCountDto](#schemasearchlistscountdto)|true|none|

<h3 id="get-count-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Update list

<a id="opIdListController_updateList"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1/contacts/lists/{listId} \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "name": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/lists/{listId}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.patch('/api/v1/contacts/lists/{listId}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','/api/v1/contacts/lists/{listId}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "/api/v1/contacts/lists/{listId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /api/v1/contacts/lists/{listId}`

Update list by id

> Body parameter

```json
{
  "name": "string"
}
```

<h3 id="update-list-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|listId|path|string|true|List id|
|body|body|[UpdateListDto](#schemaupdatelistdto)|true|none|

<h3 id="update-list-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Add contacts to list

<a id="opIdListController_addContactsToList"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/contacts/lists/{list}/add \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "contactsIds": [
    "string"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/lists/{list}/add',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.post('/api/v1/contacts/lists/{list}/add', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/api/v1/contacts/lists/{list}/add', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/api/v1/contacts/lists/{list}/add", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/contacts/lists/{list}/add`

Save new contacts to list

> Body parameter

```json
{
  "contactsIds": [
    "string"
  ]
}
```

<h3 id="add-contacts-to-list-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|list|path|string|true|List id|
|body|body|[AddContactsDto](#schemaaddcontactsdto)|true|none|

<h3 id="add-contacts-to-list-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Search contacts related to list

<a id="opIdListController_getListContacts"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/contacts/lists/{list}/contacts/search \
  -H 'apiKey: API_KEY'

```

```javascript

const headers = {
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/lists/{list}/contacts/search',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'apiKey': 'API_KEY'
}

r = requests.get('/api/v1/contacts/lists/{list}/contacts/search', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/api/v1/contacts/lists/{list}/contacts/search', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/api/v1/contacts/lists/{list}/contacts/search", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/contacts/lists/{list}/contacts/search`

Search contacts by filter related to list

<h3 id="search-contacts-related-to-list-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|list|path|string|true|list id|
|order|query|string|false|Should be ASC or DESC|
|sort|query|string|false|Sort field|
|pageNumber|query|number|false|Page number|
|pageSize|query|number|false|Page size|

<h3 id="search-contacts-related-to-list-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Get list tree

<a id="opIdListController_getListsTree"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/contacts/lists/tree \
  -H 'apiKey: API_KEY'

```

```javascript

const headers = {
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/lists/tree',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'apiKey': 'API_KEY'
}

r = requests.get('/api/v1/contacts/lists/tree', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/api/v1/contacts/lists/tree', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/api/v1/contacts/lists/tree", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/contacts/lists/tree`

Get all lists tree

<h3 id="get-list-tree-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Get paginated lists results

<a id="opIdListController_getPaginatedLists"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/contacts/lists/paginated \
  -H 'apiKey: API_KEY'

```

```javascript

const headers = {
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/lists/paginated',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'apiKey': 'API_KEY'
}

r = requests.get('/api/v1/contacts/lists/paginated', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/api/v1/contacts/lists/paginated', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/api/v1/contacts/lists/paginated", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/contacts/lists/paginated`

Get paginated lists results

<h3 id="get-paginated-lists-results-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|order|query|string|false|Should be ASC or DESC|
|sort|query|string|false|Sort field|
|pageNumber|query|number|false|Page number|
|pageSize|query|number|false|Page size|

<h3 id="get-paginated-lists-results-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Search lists

<a id="opIdListController_search"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/contacts/lists/search \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "withParentFolder": true
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/lists/search',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.post('/api/v1/contacts/lists/search', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/api/v1/contacts/lists/search', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/api/v1/contacts/lists/search", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/contacts/lists/search`

Search lists by search type

> Body parameter

```json
{
  "withParentFolder": true
}
```

<h3 id="search-lists-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|order|query|string|false|Should be ASC or DESC|
|sort|query|string|false|Sort field|
|pageNumber|query|number|false|Page number|
|pageSize|query|number|false|Page size|
|body|body|[SearchListsDto](#schemasearchlistsdto)|true|none|

<h3 id="search-lists-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

<h1 id="getprospect-api-contacts">Contacts</h1>

## Create contact

<a id="opIdContactController_create"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/contacts/contact \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "properties": [
    {
      "property": "string",
      "value": {}
    }
  ],
  "listRelations": [
    "string"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/contact',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.post('/api/v1/contacts/contact', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/api/v1/contacts/contact', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/api/v1/contacts/contact", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/contacts/contact`

Create new contact

> Body parameter

```json
{
  "properties": [
    {
      "property": "string",
      "value": {}
    }
  ],
  "listRelations": [
    "string"
  ]
}
```

<h3 id="create-contact-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreateContactDto](#schemacreatecontactdto)|true|none|

<h3 id="create-contact-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Get single contact

<a id="opIdContactController_getContact"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/contacts/contact/{contactId} \
  -H 'apiKey: API_KEY'

```

```javascript

const headers = {
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/contact/{contactId}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'apiKey': 'API_KEY'
}

r = requests.get('/api/v1/contacts/contact/{contactId}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/api/v1/contacts/contact/{contactId}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/api/v1/contacts/contact/{contactId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/contacts/contact/{contactId}`

Get contact by id

<h3 id="get-single-contact-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|contactId|path|string|true|Contact id|

<h3 id="get-single-contact-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Update contact

<a id="opIdContactController_update"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1/contacts/contact/{contactId} \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "properties": [
    {
      "property": "string",
      "value": {}
    }
  ],
  "listRelations": [
    "string"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/contact/{contactId}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.patch('/api/v1/contacts/contact/{contactId}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','/api/v1/contacts/contact/{contactId}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "/api/v1/contacts/contact/{contactId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /api/v1/contacts/contact/{contactId}`

Update contact by id

> Body parameter

```json
{
  "properties": [
    {
      "property": "string",
      "value": {}
    }
  ],
  "listRelations": [
    "string"
  ]
}
```

<h3 id="update-contact-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|contactId|path|string|true|Contact id|
|body|body|[CreateContactDto](#schemacreatecontactdto)|true|none|

<h3 id="update-contact-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Delete contact

<a id="opIdContactController_delete"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1/contacts/contact/{contactId} \
  -H 'apiKey: API_KEY'

```

```javascript

const headers = {
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/contact/{contactId}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'apiKey': 'API_KEY'
}

r = requests.delete('/api/v1/contacts/contact/{contactId}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','/api/v1/contacts/contact/{contactId}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "/api/v1/contacts/contact/{contactId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /api/v1/contacts/contact/{contactId}`

Delete contact by id

<h3 id="delete-contact-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|contactId|path|string|true|Contact id|

<h3 id="delete-contact-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Search contacts

<a id="opIdContactController_searchCount"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/contacts/contact/search/count \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "filters": [
    {
      "operator": "string",
      "property": "string",
      "value": "string",
      "included": {
        "operator": "string",
        "value": {}
      }
    }
  ],
  "search": {
    "value": "string",
    "properties": [
      "string"
    ]
  },
  "includeRelations": true
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/contact/search/count',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.post('/api/v1/contacts/contact/search/count', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/api/v1/contacts/contact/search/count', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/api/v1/contacts/contact/search/count", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/contacts/contact/search/count`

Search contacts by filter

> Body parameter

```json
{
  "filters": [
    {
      "operator": "string",
      "property": "string",
      "value": "string",
      "included": {
        "operator": "string",
        "value": {}
      }
    }
  ],
  "search": {
    "value": "string",
    "properties": [
      "string"
    ]
  },
  "includeRelations": true
}
```

<h3 id="search-contacts-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|order|query|string|false|Should be ASC or DESC|
|sort|query|string|false|Sort field|
|pageNumber|query|number|false|Page number|
|pageSize|query|number|false|Page size|
|body|body|[SearchContactsDto](#schemasearchcontactsdto)|true|none|

<h3 id="search-contacts-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Add companies to contact

<a id="opIdContactController_addCompaniesToContact"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/contacts/contact/{contactId}/companies?contactId=string \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "companies": [
    {
      "companyId": "string",
      "email": "string",
      "status": "string",
      "position": "string"
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/contact/{contactId}/companies?contactId=string',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.post('/api/v1/contacts/contact/{contactId}/companies', params={
  'contactId': 'string'
}, headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/api/v1/contacts/contact/{contactId}/companies', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/api/v1/contacts/contact/{contactId}/companies", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/contacts/contact/{contactId}/companies`

Create a new contact-company relations

> Body parameter

```json
{
  "companies": [
    {
      "companyId": "string",
      "email": "string",
      "status": "string",
      "position": "string"
    }
  ]
}
```

<h3 id="add-companies-to-contact-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|contactId|query|string|true|Contact id|
|body|body|[AddCompaniesRelationsDto](#schemaaddcompaniesrelationsdto)|true|none|

<h3 id="add-companies-to-contact-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

<h1 id="getprospect-api-folders">Folders</h1>

## Create list folder

<a id="opIdFolderController_create"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/contacts/folders \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "name": "string",
  "parent": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/folders',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.post('/api/v1/contacts/folders', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/api/v1/contacts/folders', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/api/v1/contacts/folders", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/contacts/folders`

Add new folder

> Body parameter

```json
{
  "name": "string",
  "parent": "string"
}
```

<h3 id="create-list-folder-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreateFolderDto](#schemacreatefolderdto)|true|none|

<h3 id="create-list-folder-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Delete folders

<a id="opIdFolderController_delete"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1/contacts/folders \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "folderIds": [
    "string"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/folders',
{
  method: 'DELETE',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.delete('/api/v1/contacts/folders', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','/api/v1/contacts/folders', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "/api/v1/contacts/folders", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /api/v1/contacts/folders`

Delete multiple folders

> Body parameter

```json
{
  "folderIds": [
    "string"
  ]
}
```

<h3 id="delete-folders-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[DeleteFolderDto](#schemadeletefolderdto)|true|none|

<h3 id="delete-folders-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Update folder

<a id="opIdFolderController_updateFolder"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1/contacts/folders/{folderId} \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "name": "string",
  "parent": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/folders/{folderId}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.patch('/api/v1/contacts/folders/{folderId}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','/api/v1/contacts/folders/{folderId}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "/api/v1/contacts/folders/{folderId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /api/v1/contacts/folders/{folderId}`

Update folder by id

> Body parameter

```json
{
  "name": "string",
  "parent": "string"
}
```

<h3 id="update-folder-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|folderId|path|string|true|Folder id|
|body|body|[UpdateFolderDto](#schemaupdatefolderdto)|true|none|

<h3 id="update-folder-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Get folders tree

<a id="opIdFolderController_getFoldersTree"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/contacts/folders/tree \
  -H 'apiKey: API_KEY'

```

```javascript

const headers = {
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/folders/tree',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'apiKey': 'API_KEY'
}

r = requests.get('/api/v1/contacts/folders/tree', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/api/v1/contacts/folders/tree', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/api/v1/contacts/folders/tree", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/contacts/folders/tree`

Get folders tree

<h3 id="get-folders-tree-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Move lists to folder

<a id="opIdFolderController_addList"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/contacts/folders/{folderId}/lists \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "listsIds": [
    "string"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/folders/{folderId}/lists',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.post('/api/v1/contacts/folders/{folderId}/lists', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/api/v1/contacts/folders/{folderId}/lists', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/api/v1/contacts/folders/{folderId}/lists", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/contacts/folders/{folderId}/lists`

Move lists to folder

> Body parameter

```json
{
  "listsIds": [
    "string"
  ]
}
```

<h3 id="move-lists-to-folder-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|folderId|path|string|true|Folder id|
|body|body|[AddListsDto](#schemaaddlistsdto)|true|none|

<h3 id="move-lists-to-folder-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Get folder lists

<a id="opIdFolderController_getFolderLists"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/contacts/folders/{folderId}/lists \
  -H 'apiKey: API_KEY'

```

```javascript

const headers = {
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/folders/{folderId}/lists',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'apiKey': 'API_KEY'
}

r = requests.get('/api/v1/contacts/folders/{folderId}/lists', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/api/v1/contacts/folders/{folderId}/lists', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/api/v1/contacts/folders/{folderId}/lists", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/contacts/folders/{folderId}/lists`

Retrive all lists related to folder

<h3 id="get-folder-lists-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|folderId|path|string|true|Folder id|

<h3 id="get-folder-lists-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Remove lists from folder

<a id="opIdFolderController_removeListsFromFolder"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1/contacts/folders/{folderId}/lists \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "listsIds": [
    "string"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/folders/{folderId}/lists',
{
  method: 'DELETE',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.delete('/api/v1/contacts/folders/{folderId}/lists', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','/api/v1/contacts/folders/{folderId}/lists', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "/api/v1/contacts/folders/{folderId}/lists", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /api/v1/contacts/folders/{folderId}/lists`

Remove lists from folder

> Body parameter

```json
{
  "listsIds": [
    "string"
  ]
}
```

<h3 id="remove-lists-from-folder-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|folderId|path|string|true|Folder id|
|body|body|[AddListsDto](#schemaaddlistsdto)|true|none|

<h3 id="remove-lists-from-folder-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Move lists with folders to folder

<a id="opIdFolderController_addListsWithFolders"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/contacts/folders/{folderId}/all \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/folders/{folderId}/all',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.post('/api/v1/contacts/folders/{folderId}/all', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/api/v1/contacts/folders/{folderId}/all', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/api/v1/contacts/folders/{folderId}/all", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/contacts/folders/{folderId}/all`

Move lists with folders to folder

> Body parameter

```json
{}
```

<h3 id="move-lists-with-folders-to-folder-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|folderId|path|string|true|Folder id|
|body|body|[AddListsWithFoldersDto](#schemaaddlistswithfoldersdto)|true|none|

<h3 id="move-lists-with-folders-to-folder-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Get folders lists

<a id="opIdFolderController_getFoldersLists"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/contacts/folders/lists \
  -H 'apiKey: API_KEY'

```

```javascript

const headers = {
  'apiKey':'API_KEY'
};

fetch('/api/v1/contacts/folders/lists',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'apiKey': 'API_KEY'
}

r = requests.get('/api/v1/contacts/folders/lists', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/api/v1/contacts/folders/lists', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/api/v1/contacts/folders/lists", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/contacts/folders/lists`

Get folders lists

<h3 id="get-folders-lists-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

<h1 id="getprospect-api-companies">Companies</h1>

## Get all companies

<a id="opIdCompanyController_findAll"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/companies/company \
  -H 'apiKey: API_KEY'

```

```javascript

const headers = {
  'apiKey':'API_KEY'
};

fetch('/api/v1/companies/company',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'apiKey': 'API_KEY'
}

r = requests.get('/api/v1/companies/company', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/api/v1/companies/company', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/api/v1/companies/company", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/companies/company`

Return all companies for the current user

<h3 id="get-all-companies-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|order|query|string|false|Should be ASC or DESC|
|sort|query|string|false|Sort field|
|pageNumber|query|number|false|Page number|
|pageSize|query|number|false|Page size|

<h3 id="get-all-companies-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Create company

<a id="opIdCompanyController_create"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1/companies/company \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "properties": {
    "property": "string",
    "value": {}
  }
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/companies/company',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.post('/api/v1/companies/company', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/api/v1/companies/company', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/api/v1/companies/company", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/companies/company`

Create a new company

> Body parameter

```json
{
  "properties": {
    "property": "string",
    "value": {}
  }
}
```

<h3 id="create-company-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreateCompanyDto](#schemacreatecompanydto)|true|none|

<h3 id="create-company-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Search companies

<a id="opIdCompanyController_findCompanyWithName"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/companies/company/search/name \
  -H 'apiKey: API_KEY'

```

```javascript

const headers = {
  'apiKey':'API_KEY'
};

fetch('/api/v1/companies/company/search/name',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'apiKey': 'API_KEY'
}

r = requests.get('/api/v1/companies/company/search/name', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/api/v1/companies/company/search/name', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/api/v1/companies/company/search/name", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/companies/company/search/name`

Search companies with name

<h3 id="search-companies-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|name|query|string|false|Company name string|
|limit|query|string|false|Query limit|

<h3 id="search-companies-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Get single company

<a id="opIdCompanyController_getCompany"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1/companies/company/{companyId} \
  -H 'apiKey: API_KEY'

```

```javascript

const headers = {
  'apiKey':'API_KEY'
};

fetch('/api/v1/companies/company/{companyId}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'apiKey': 'API_KEY'
}

r = requests.get('/api/v1/companies/company/{companyId}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/api/v1/companies/company/{companyId}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/api/v1/companies/company/{companyId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/companies/company/{companyId}`

Get company by id

<h3 id="get-single-company-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyId|path|string|true|Company id|

<h3 id="get-single-company-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Update company

<a id="opIdCompanyController_update"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1/companies/company/{companyId} \
  -H 'Content-Type: application/json' \
  -H 'apiKey: API_KEY'

```

```javascript
const inputBody = '{
  "properties": {
    "property": "string",
    "value": {}
  }
}';
const headers = {
  'Content-Type':'application/json',
  'apiKey':'API_KEY'
};

fetch('/api/v1/companies/company/{companyId}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'apiKey': 'API_KEY'
}

r = requests.patch('/api/v1/companies/company/{companyId}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','/api/v1/companies/company/{companyId}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "/api/v1/companies/company/{companyId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /api/v1/companies/company/{companyId}`

Update company by id

> Body parameter

```json
{
  "properties": {
    "property": "string",
    "value": {}
  }
}
```

<h3 id="update-company-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyId|path|string|true|Company id|
|body|body|[CreateCompanyDto](#schemacreatecompanydto)|true|none|

<h3 id="update-company-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

## Delete company

<a id="opIdCompanyController_delete"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1/companies/company/{companyId} \
  -H 'apiKey: API_KEY'

```

```javascript

const headers = {
  'apiKey':'API_KEY'
};

fetch('/api/v1/companies/company/{companyId}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'apiKey': 'API_KEY'
}

r = requests.delete('/api/v1/companies/company/{companyId}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'apiKey' => 'API_KEY',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','/api/v1/companies/company/{companyId}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "apiKey": []string{"API_KEY"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "/api/v1/companies/company/{companyId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /api/v1/companies/company/{companyId}`

Delete company by id

<h3 id="delete-company-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyId|path|string|true|Company id|

<h3 id="delete-company-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
apiKey
</aside>

# Schemas

<h2 id="tocS_SearchListsCountDto">SearchListsCountDto</h2>
<!-- backwards compatibility -->
<a id="schemasearchlistscountdto"></a>
<a id="schema_SearchListsCountDto"></a>
<a id="tocSsearchlistscountdto"></a>
<a id="tocssearchlistscountdto"></a>

```json
{}

```

### Properties

*None*

<h2 id="tocS_CreateListDto">CreateListDto</h2>
<!-- backwards compatibility -->
<a id="schemacreatelistdto"></a>
<a id="schema_CreateListDto"></a>
<a id="tocScreatelistdto"></a>
<a id="tocscreatelistdto"></a>

```json
{
  "name": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|

<h2 id="tocS_UpdateListDto">UpdateListDto</h2>
<!-- backwards compatibility -->
<a id="schemaupdatelistdto"></a>
<a id="schema_UpdateListDto"></a>
<a id="tocSupdatelistdto"></a>
<a id="tocsupdatelistdto"></a>

```json
{
  "name": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|

<h2 id="tocS_UpdateListStatusDto">UpdateListStatusDto</h2>
<!-- backwards compatibility -->
<a id="schemaupdateliststatusdto"></a>
<a id="schema_UpdateListStatusDto"></a>
<a id="tocSupdateliststatusdto"></a>
<a id="tocsupdateliststatusdto"></a>

```json
{
  "listsIds": [
    "string"
  ],
  "updateContactsStatus": true,
  "operationType": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|listsIds|[string]|true|none|none|
|updateContactsStatus|boolean|true|none|none|
|operationType|string|true|none|none|

<h2 id="tocS_AddContactsDto">AddContactsDto</h2>
<!-- backwards compatibility -->
<a id="schemaaddcontactsdto"></a>
<a id="schema_AddContactsDto"></a>
<a id="tocSaddcontactsdto"></a>
<a id="tocsaddcontactsdto"></a>

```json
{
  "contactsIds": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|contactsIds|[string]|true|none|none|

<h2 id="tocS_SearchListsDto">SearchListsDto</h2>
<!-- backwards compatibility -->
<a id="schemasearchlistsdto"></a>
<a id="schema_SearchListsDto"></a>
<a id="tocSsearchlistsdto"></a>
<a id="tocssearchlistsdto"></a>

```json
{
  "withParentFolder": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|withParentFolder|boolean|true|none|none|

<h2 id="tocS_PropertyItem">PropertyItem</h2>
<!-- backwards compatibility -->
<a id="schemapropertyitem"></a>
<a id="schema_PropertyItem"></a>
<a id="tocSpropertyitem"></a>
<a id="tocspropertyitem"></a>

```json
{
  "property": "string",
  "value": {}
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|property|string|true|none|none|
|value|object|true|none|none|

<h2 id="tocS_CreateContactDto">CreateContactDto</h2>
<!-- backwards compatibility -->
<a id="schemacreatecontactdto"></a>
<a id="schema_CreateContactDto"></a>
<a id="tocScreatecontactdto"></a>
<a id="tocscreatecontactdto"></a>

```json
{
  "properties": [
    {
      "property": "string",
      "value": {}
    }
  ],
  "listRelations": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|properties|[[PropertyItem](#schemapropertyitem)]|true|none|none|
|listRelations|[string]|true|none|none|

<h2 id="tocS_Included">Included</h2>
<!-- backwards compatibility -->
<a id="schemaincluded"></a>
<a id="schema_Included"></a>
<a id="tocSincluded"></a>
<a id="tocsincluded"></a>

```json
{
  "operator": "string",
  "value": {}
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|operator|string|true|none|none|
|value|object|true|none|none|

<h2 id="tocS_FilterItem">FilterItem</h2>
<!-- backwards compatibility -->
<a id="schemafilteritem"></a>
<a id="schema_FilterItem"></a>
<a id="tocSfilteritem"></a>
<a id="tocsfilteritem"></a>

```json
{
  "operator": "string",
  "property": "string",
  "value": "string",
  "included": {
    "operator": "string",
    "value": {}
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|operator|string|true|none|none|
|property|string|true|none|none|
|value|string|true|none|none|
|included|[Included](#schemaincluded)|true|none|none|

<h2 id="tocS_SearchItem">SearchItem</h2>
<!-- backwards compatibility -->
<a id="schemasearchitem"></a>
<a id="schema_SearchItem"></a>
<a id="tocSsearchitem"></a>
<a id="tocssearchitem"></a>

```json
{
  "value": "string",
  "properties": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|value|string|true|none|none|
|properties|[string]|true|none|none|

<h2 id="tocS_SearchContactsDto">SearchContactsDto</h2>
<!-- backwards compatibility -->
<a id="schemasearchcontactsdto"></a>
<a id="schema_SearchContactsDto"></a>
<a id="tocSsearchcontactsdto"></a>
<a id="tocssearchcontactsdto"></a>

```json
{
  "filters": [
    {
      "operator": "string",
      "property": "string",
      "value": "string",
      "included": {
        "operator": "string",
        "value": {}
      }
    }
  ],
  "search": {
    "value": "string",
    "properties": [
      "string"
    ]
  },
  "includeRelations": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|filters|[[FilterItem](#schemafilteritem)]|true|none|none|
|search|[SearchItem](#schemasearchitem)|true|none|none|
|includeRelations|boolean|true|none|none|

<h2 id="tocS_CompanyRelationsDto">CompanyRelationsDto</h2>
<!-- backwards compatibility -->
<a id="schemacompanyrelationsdto"></a>
<a id="schema_CompanyRelationsDto"></a>
<a id="tocScompanyrelationsdto"></a>
<a id="tocscompanyrelationsdto"></a>

```json
{
  "companyId": "string",
  "email": "string",
  "status": "string",
  "position": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|companyId|string|true|none|none|
|email|string|false|none|none|
|status|string|false|none|none|
|position|string|false|none|none|

<h2 id="tocS_AddCompaniesRelationsDto">AddCompaniesRelationsDto</h2>
<!-- backwards compatibility -->
<a id="schemaaddcompaniesrelationsdto"></a>
<a id="schema_AddCompaniesRelationsDto"></a>
<a id="tocSaddcompaniesrelationsdto"></a>
<a id="tocsaddcompaniesrelationsdto"></a>

```json
{
  "companies": [
    {
      "companyId": "string",
      "email": "string",
      "status": "string",
      "position": "string"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|companies|[[CompanyRelationsDto](#schemacompanyrelationsdto)]|true|none|none|

<h2 id="tocS_CreateFolderDto">CreateFolderDto</h2>
<!-- backwards compatibility -->
<a id="schemacreatefolderdto"></a>
<a id="schema_CreateFolderDto"></a>
<a id="tocScreatefolderdto"></a>
<a id="tocscreatefolderdto"></a>

```json
{
  "name": "string",
  "parent": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|parent|string|true|none|none|

<h2 id="tocS_DeleteFolderDto">DeleteFolderDto</h2>
<!-- backwards compatibility -->
<a id="schemadeletefolderdto"></a>
<a id="schema_DeleteFolderDto"></a>
<a id="tocSdeletefolderdto"></a>
<a id="tocsdeletefolderdto"></a>

```json
{
  "folderIds": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|folderIds|[string]|true|none|none|

<h2 id="tocS_UpdateFolderDto">UpdateFolderDto</h2>
<!-- backwards compatibility -->
<a id="schemaupdatefolderdto"></a>
<a id="schema_UpdateFolderDto"></a>
<a id="tocSupdatefolderdto"></a>
<a id="tocsupdatefolderdto"></a>

```json
{
  "name": "string",
  "parent": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|parent|string|true|none|none|

<h2 id="tocS_AddListsDto">AddListsDto</h2>
<!-- backwards compatibility -->
<a id="schemaaddlistsdto"></a>
<a id="schema_AddListsDto"></a>
<a id="tocSaddlistsdto"></a>
<a id="tocsaddlistsdto"></a>

```json
{
  "listsIds": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|listsIds|[string]|true|none|none|

<h2 id="tocS_AddListsWithFoldersDto">AddListsWithFoldersDto</h2>
<!-- backwards compatibility -->
<a id="schemaaddlistswithfoldersdto"></a>
<a id="schema_AddListsWithFoldersDto"></a>
<a id="tocSaddlistswithfoldersdto"></a>
<a id="tocsaddlistswithfoldersdto"></a>

```json
{}

```

### Properties

*None*

<h2 id="tocS_CreateCompanyDto">CreateCompanyDto</h2>
<!-- backwards compatibility -->
<a id="schemacreatecompanydto"></a>
<a id="schema_CreateCompanyDto"></a>
<a id="tocScreatecompanydto"></a>
<a id="tocscreatecompanydto"></a>

```json
{
  "properties": {
    "property": "string",
    "value": {}
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|properties|[PropertyItem](#schemapropertyitem)|true|none|none|

