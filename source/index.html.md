---
title: GetProspect API v1.0
language_tabs:
  - javascript: Javascript
language_clients:
  - javascript: ""
toc_footers: []
includes: []
search: false
highlight_theme: darkula
headingLevel: 2

---

<!-- Generator: Widdershins v4.0.1 -->

<h1 id="getprospect-api">GetProspect API v1.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

GetProspect API reference v1

Base URLs:

# Authentication

- HTTP Authentication, scheme: bearer 

<h1 id="getprospect-api-account">Account</h1>

## AccountController_getWorkspaceLimits

<a id="opIdAccountController_getWorkspaceLimits"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/user/account/workspace-limits',
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

`GET /api/v1/user/account/workspace-limits`

<h3 id="accountcontroller_getworkspacelimits-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## Apply coupon code

<a id="opIdAccountController_findCompanyByDomain"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/user/account/apply/{couponCode}?couponCode=string',
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

`GET /api/v1/user/account/apply/{couponCode}`

Apply coupon code

<h3 id="apply-coupon-code-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|couponCode|query|string|true|Coupon code|

<h3 id="apply-coupon-code-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

<h1 id="getprospect-api-lists">Lists</h1>

## Get all lists

<a id="opIdListController_getAllLists"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
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

`GET /api/v1/contacts/lists`

Get all contacts lists

<h3 id="get-all-lists-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## Create new list

<a id="opIdListController_createList"></a>

> Code samples

```javascript
const inputBody = '{
  "name": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Update lists deleted status

<a id="opIdListController_updateListsStatuses"></a>

> Code samples

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
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Permanently delete lists

<a id="opIdListController_deleteLists"></a>

> Code samples

```javascript
const inputBody = '[
  "string"
]';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Get count

<a id="opIdListController_getListsCount"></a>

> Code samples

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Update list

<a id="opIdListController_updateList"></a>

> Code samples

```javascript
const inputBody = '{
  "name": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Add contacts to list

<a id="opIdListController_addContactsToList"></a>

> Code samples

```javascript
const inputBody = '{
  "contactsIds": [
    "string"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Search contacts related to list

<a id="opIdListController_getListContacts"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Get list tree

<a id="opIdListController_getListsTree"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
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

`GET /api/v1/contacts/lists/tree`

Get all lists tree

<h3 id="get-list-tree-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## Get paginated lists results

<a id="opIdListController_getPaginatedLists"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Search lists

<a id="opIdListController_search"></a>

> Code samples

```javascript
const inputBody = '{
  "withParentFolder": true
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

<h1 id="getprospect-api-properties">Properties</h1>

## Get all properties

<a id="opIdPropertiesController_findAll"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/properties',
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

`GET /api/v1/properties`

Get properties for all entity types

<h3 id="get-all-properties-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## Create property

<a id="opIdPropertiesController_create"></a>

> Code samples

```javascript
const inputBody = '{
  "sourceType": "contact",
  "label": "string",
  "description": "string",
  "group": "string",
  "fieldType": "textarea",
  "options": [
    {
      "description": "string",
      "label": "string",
      "hidden": true,
      "value": "string"
    }
  ],
  "required": true
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/properties',
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

`POST /api/v1/properties`

Create a new property

> Body parameter

```json
{
  "sourceType": "contact",
  "label": "string",
  "description": "string",
  "group": "string",
  "fieldType": "textarea",
  "options": [
    {
      "description": "string",
      "label": "string",
      "hidden": true,
      "value": "string"
    }
  ],
  "required": true
}
```

<h3 id="create-property-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreatePropertyDTO](#schemacreatepropertydto)|true|none|

<h3 id="create-property-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## Delete multiple properties

<a id="opIdPropertiesController_deleteProperties"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/properties',
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

`DELETE /api/v1/properties`

Delete multiple properties by id

<h3 id="delete-multiple-properties-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## Bulk properties updating

<a id="opIdPropertiesController_updateProperties"></a>

> Code samples

```javascript
const inputBody = '{
  "label": "string",
  "description": "string",
  "group": "string",
  "fieldType": "textarea",
  "options": [
    {
      "description": "string",
      "label": "string",
      "hidden": true,
      "value": "string"
    }
  ],
  "sourceType": "contacts"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/properties',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`PUT /api/v1/properties`

Update multiple properties by id

> Body parameter

```json
{
  "label": "string",
  "description": "string",
  "group": "string",
  "fieldType": "textarea",
  "options": [
    {
      "description": "string",
      "label": "string",
      "hidden": true,
      "value": "string"
    }
  ],
  "sourceType": "contacts"
}
```

<h3 id="bulk-properties-updating-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[UpdatePropertyDto](#schemaupdatepropertydto)|true|none|

<h3 id="bulk-properties-updating-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## Delete property

<a id="opIdPropertiesController_delete"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/properties/{propertyId}',
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

`DELETE /api/v1/properties/{propertyId}`

Delete property by id

<h3 id="delete-property-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|propertyId|path|string|true|Property id|

<h3 id="delete-property-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## Update property

<a id="opIdPropertiesController_update"></a>

> Code samples

```javascript
const inputBody = '{
  "label": "string",
  "description": "string",
  "group": "string",
  "fieldType": "textarea",
  "options": [
    {
      "description": "string",
      "label": "string",
      "hidden": true,
      "value": "string"
    }
  ],
  "sourceType": "contacts"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/properties/{propertyId}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`PUT /api/v1/properties/{propertyId}`

Update property by id

> Body parameter

```json
{
  "label": "string",
  "description": "string",
  "group": "string",
  "fieldType": "textarea",
  "options": [
    {
      "description": "string",
      "label": "string",
      "hidden": true,
      "value": "string"
    }
  ],
  "sourceType": "contacts"
}
```

<h3 id="update-property-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|propertyId|path|string|true|Property id|
|body|body|[UpdatePropertyDto](#schemaupdatepropertydto)|true|none|

<h3 id="update-property-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## Create property group

<a id="opIdPropertiesController_createGroup"></a>

> Code samples

```javascript
const inputBody = '{
  "name": "string",
  "sourceType": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/properties/groups',
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

`POST /api/v1/properties/groups`

Add a new property group

> Body parameter

```json
{
  "name": "string",
  "sourceType": "string"
}
```

<h3 id="create-property-group-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreatePropertyGroupDto](#schemacreatepropertygroupdto)|true|none|

<h3 id="create-property-group-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## Get all property groups

<a id="opIdPropertiesController_getAllGroups"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/properties/groups',
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

`GET /api/v1/properties/groups`

Retrive all property groups

<h3 id="get-all-property-groups-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

<h1 id="getprospect-api-contacts">Contacts</h1>

## Create contact

<a id="opIdContactController_create"></a>

> Code samples

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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

`POST /api/v1/contacts/contact`

Create new contact

> Body parameter

```json
{}
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
bearer
</aside>

## Get single contact

<a id="opIdContactController_getContact"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Update contact

<a id="opIdContactController_update"></a>

> Code samples

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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

`PATCH /api/v1/contacts/contact/{contactId}`

Update contact by id

> Body parameter

```json
{}
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
bearer
</aside>

## Delete contact

<a id="opIdContactController_delete"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Search contacts

<a id="opIdContactController_searchCount"></a>

> Code samples

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
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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
  }
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
bearer
</aside>

## Add companies to contact

<a id="opIdContactController_addCompaniesToContact"></a>

> Code samples

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
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

<h1 id="getprospect-api-folders">Folders</h1>

## Create list folder

<a id="opIdFolderController_create"></a>

> Code samples

```javascript
const inputBody = '{
  "name": "string",
  "parent": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Delete folders

<a id="opIdFolderController_delete"></a>

> Code samples

```javascript
const inputBody = '{
  "folderIds": [
    "string"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Update folder

<a id="opIdFolderController_updateFolder"></a>

> Code samples

```javascript
const inputBody = '{
  "name": "string",
  "parent": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Get folders tree

<a id="opIdFolderController_getFoldersTree"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
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

`GET /api/v1/contacts/folders/tree`

Get folders tree

<h3 id="get-folders-tree-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## Move lists to folder

<a id="opIdFolderController_addList"></a>

> Code samples

```javascript
const inputBody = '{
  "listsIds": [
    "string"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Get folder lists

<a id="opIdFolderController_getFolderLists"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Remove lists from folder

<a id="opIdFolderController_removeListsFromFolder"></a>

> Code samples

```javascript
const inputBody = '{
  "listsIds": [
    "string"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

<h1 id="getprospect-api-companies">Companies</h1>

## Get all companies

<a id="opIdCompanyController_findAll"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Create company

<a id="opIdCompanyController_create"></a>

> Code samples

```javascript
const inputBody = '{
  "properties": {
    "property": "string",
    "value": {}
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Search companies

<a id="opIdCompanyController_findCompanyWithName"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Get single company

<a id="opIdCompanyController_getCompany"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Update company

<a id="opIdCompanyController_update"></a>

> Code samples

```javascript
const inputBody = '{
  "properties": {
    "property": "string",
    "value": {}
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

## Delete company

<a id="opIdCompanyController_delete"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
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
bearer
</aside>

<h1 id="getprospect-api-insights">Insights</h1>

## Create search

<a id="opIdInsightsController_createSearch"></a>

> Code samples

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/insights/search',
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

`POST /api/v1/insights/search`

Create a search document in MongoDB

> Body parameter

```json
{}
```

<h3 id="create-search-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreateSearchDto](#schemacreatesearchdto)|true|none|

<h3 id="create-search-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## InsightsController_getSavedContactByInsightId

<a id="opIdInsightsController_getSavedContactByInsightId"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/insights/search/contact/{insightId}',
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

`GET /api/v1/insights/search/contact/{insightId}`

<h3 id="insightscontroller_getsavedcontactbyinsightid-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|insightId|path|string|true|none|

<h3 id="insightscontroller_getsavedcontactbyinsightid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## InsightsController_checkProcessingContacts

<a id="opIdInsightsController_checkProcessingContacts"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/insights/search/check/contacts/{searchId}',
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

`GET /api/v1/insights/search/check/contacts/{searchId}`

<h3 id="insightscontroller_checkprocessingcontacts-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|searchId|path|string|true|none|

<h3 id="insightscontroller_checkprocessingcontacts-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## InsightsController_getLastThreeContacts

<a id="opIdInsightsController_getLastThreeContacts"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/insights/search/companies/{insightId}/lastContacts',
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

`GET /api/v1/insights/search/companies/{insightId}/lastContacts`

<h3 id="insightscontroller_getlastthreecontacts-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|insightId|path|string|true|none|

<h3 id="insightscontroller_getlastthreecontacts-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

<h1 id="getprospect-api-import">Import</h1>

## Get all imports

<a id="opIdImportController_getAllImports"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/import',
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

`GET /api/v1/import`

Get all imports

<h3 id="get-all-imports-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## Start import

<a id="opIdImportController_createImport"></a>

> Code samples

```javascript
const inputBody = '{
  "name": "string",
  "dataFileUrl": "string",
  "matchedProperties": [
    {
      "source": "string",
      "getProspect": "string"
    }
  ],
  "source": "contact",
  "lists": [
    "string"
  ],
  "type": "list_of_enrichment",
  "useGetProspectId": true,
  "ignoreDuplicates": true,
  "sequenceId": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/import',
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

`POST /api/v1/import`

Create a new import task

> Body parameter

```json
{
  "name": "string",
  "dataFileUrl": "string",
  "matchedProperties": [
    {
      "source": "string",
      "getProspect": "string"
    }
  ],
  "source": "contact",
  "lists": [
    "string"
  ],
  "type": "list_of_enrichment",
  "useGetProspectId": true,
  "ignoreDuplicates": true,
  "sequenceId": "string"
}
```

<h3 id="start-import-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreateImportDto](#schemacreateimportdto)|true|none|

<h3 id="start-import-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## Get import by id

<a id="opIdImportController_findImportById"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/import/{importId}',
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

`GET /api/v1/import/{importId}`

Get import by id

<h3 id="get-import-by-id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|importId|path|string|true|none|

<h3 id="get-import-by-id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

<h1 id="getprospect-api-sequences-steps">Sequences Steps</h1>

## SequencesContactsController_createContact

<a id="opIdSequencesContactsController_createContact"></a>

> Code samples

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/sequences/contacts',
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

`POST /api/v1/sequences/contacts`

> Body parameter

```json
{}
```

<h3 id="sequencescontactscontroller_createcontact-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreateContactDto](#schemacreatecontactdto)|true|none|

<h3 id="sequencescontactscontroller_createcontact-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## SequencesContactsController_findAllSequences

<a id="opIdSequencesContactsController_findAllSequences"></a>

> Code samples

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
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/sequences/contacts/search',
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

`POST /api/v1/sequences/contacts/search`

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
  }
}
```

<h3 id="sequencescontactscontroller_findallsequences-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[SearchContactsDto](#schemasearchcontactsdto)|true|none|

<h3 id="sequencescontactscontroller_findallsequences-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## SequencesStepsController_createStep

<a id="opIdSequencesStepsController_createStep"></a>

> Code samples

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/sequences/steps',
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

`POST /api/v1/sequences/steps`

> Body parameter

```json
{}
```

<h3 id="sequencesstepscontroller_createstep-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreateStepDto](#schemacreatestepdto)|true|none|

<h3 id="sequencesstepscontroller_createstep-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## SequencesStepsController_updateStep

<a id="opIdSequencesStepsController_updateStep"></a>

> Code samples

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/sequences/steps/{stepId}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`PUT /api/v1/sequences/steps/{stepId}`

> Body parameter

```json
{}
```

<h3 id="sequencesstepscontroller_updatestep-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|stepId|path|string|true|none|
|body|body|[UpdateStepDto](#schemaupdatestepdto)|true|none|

<h3 id="sequencesstepscontroller_updatestep-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## SequencesStepsController_removeStep

<a id="opIdSequencesStepsController_removeStep"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/sequences/steps/{stepId}?sequenceId=string',
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

`DELETE /api/v1/sequences/steps/{stepId}`

<h3 id="sequencesstepscontroller_removestep-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|stepId|path|string|true|none|
|sequenceId|query|string|true|none|

<h3 id="sequencesstepscontroller_removestep-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

<h1 id="getprospect-api-sequences-step-templates">Sequences Step Templates</h1>

## SequencesStepTemplatesController_createTemplate

<a id="opIdSequencesStepTemplatesController_createTemplate"></a>

> Code samples

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/sequences/templates',
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

`POST /api/v1/sequences/templates`

> Body parameter

```json
{}
```

<h3 id="sequencessteptemplatescontroller_createtemplate-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreateStepTemplateDto](#schemacreatesteptemplatedto)|true|none|

<h3 id="sequencessteptemplatescontroller_createtemplate-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## SequencesStepTemplatesController_getAllTemplates

<a id="opIdSequencesStepTemplatesController_getAllTemplates"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/sequences/templates?ownerId=string&name=string',
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

`GET /api/v1/sequences/templates`

<h3 id="sequencessteptemplatescontroller_getalltemplates-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|ownerId|query|string|true|none|
|name|query|string|true|none|

<h3 id="sequencessteptemplatescontroller_getalltemplates-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

<h1 id="getprospect-api-sequences">Sequences</h1>

## SequencesController_createSequence

<a id="opIdSequencesController_createSequence"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/sequences',
{
  method: 'POST',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`POST /api/v1/sequences`

<h3 id="sequencescontroller_createsequence-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## SequencesController_findAllSequences

<a id="opIdSequencesController_findAllSequences"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/sequences?status=string&ownerId=string&name=string',
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

`GET /api/v1/sequences`

<h3 id="sequencescontroller_findallsequences-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|status|query|string|true|none|
|ownerId|query|string|true|none|
|name|query|string|true|none|

<h3 id="sequencescontroller_findallsequences-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## SequencesController_deleteSequenceByIds

<a id="opIdSequencesController_deleteSequenceByIds"></a>

> Code samples

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/sequences',
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

`DELETE /api/v1/sequences`

> Body parameter

```json
{}
```

<h3 id="sequencescontroller_deletesequencebyids-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[DeleteSequencesDto](#schemadeletesequencesdto)|true|none|

<h3 id="sequencescontroller_deletesequencebyids-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## SequencesController_findSequenceById

<a id="opIdSequencesController_findSequenceById"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/sequences/{sequenceId}',
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

`GET /api/v1/sequences/{sequenceId}`

<h3 id="sequencescontroller_findsequencebyid-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|sequenceId|path|string|true|none|

<h3 id="sequencescontroller_findsequencebyid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## SequencesController_updateSequenceById

<a id="opIdSequencesController_updateSequenceById"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/sequences/{sequenceId}',
{
  method: 'PUT',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`PUT /api/v1/sequences/{sequenceId}`

<h3 id="sequencescontroller_updatesequencebyid-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|sequenceId|path|string|true|none|

<h3 id="sequencescontroller_updatesequencebyid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## SequencesController_getAnalyticsOfSequences

<a id="opIdSequencesController_getAnalyticsOfSequences"></a>

> Code samples

```javascript
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/sequences/analytics',
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

`POST /api/v1/sequences/analytics`

> Body parameter

```json
{}
```

<h3 id="sequencescontroller_getanalyticsofsequences-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[GetSequenceAnalyticsDto](#schemagetsequenceanalyticsdto)|true|none|

<h3 id="sequencescontroller_getanalyticsofsequences-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

<h1 id="getprospect-api-export">Export</h1>

## Create export

<a id="opIdExportController_create"></a>

> Code samples

```javascript
const inputBody = '{
  "name": "string",
  "includeProperties": "all",
  "fileFormat": "xlsx",
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
  "sourceType": "contact",
  "sort": {
    "column": "string",
    "order": "ASC"
  },
  "itemIds": [
    "string"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/export',
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

`POST /api/v1/export`

Create new export

> Body parameter

```json
{
  "name": "string",
  "includeProperties": "all",
  "fileFormat": "xlsx",
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
  "sourceType": "contact",
  "sort": {
    "column": "string",
    "order": "ASC"
  },
  "itemIds": [
    "string"
  ]
}
```

<h3 id="create-export-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CreateExportDto](#schemacreateexportdto)|true|none|

<h3 id="create-export-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

<h1 id="getprospect-api-applications">Applications</h1>

## ApplicationControllers_createApplication

<a id="opIdApplicationControllers_createApplication"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/applications',
{
  method: 'POST',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`POST /api/v1/applications`

<h3 id="applicationcontrollers_createapplication-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## ApplicationControllers_getApplications

<a id="opIdApplicationControllers_getApplications"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/applications',
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

`GET /api/v1/applications`

<h3 id="applicationcontrollers_getapplications-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
</aside>

## ApplicationControllers_deleteApplication

<a id="opIdApplicationControllers_deleteApplication"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/api/v1/applications/{applicationId}',
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

`DELETE /api/v1/applications/{applicationId}`

<h3 id="applicationcontrollers_deleteapplication-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|applicationId|path|string|true|none|

<h3 id="applicationcontrollers_deleteapplication-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|none|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
bearer
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

<h2 id="tocS_PropertyOptions">PropertyOptions</h2>
<!-- backwards compatibility -->
<a id="schemapropertyoptions"></a>
<a id="schema_PropertyOptions"></a>
<a id="tocSpropertyoptions"></a>
<a id="tocspropertyoptions"></a>

```json
{
  "description": "string",
  "label": "string",
  "hidden": true,
  "value": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|description|string|true|none|none|
|label|string|true|none|none|
|hidden|boolean|true|none|none|
|value|string|true|none|none|

<h2 id="tocS_CreatePropertyDTO">CreatePropertyDTO</h2>
<!-- backwards compatibility -->
<a id="schemacreatepropertydto"></a>
<a id="schema_CreatePropertyDTO"></a>
<a id="tocScreatepropertydto"></a>
<a id="tocscreatepropertydto"></a>

```json
{
  "sourceType": "contact",
  "label": "string",
  "description": "string",
  "group": "string",
  "fieldType": "textarea",
  "options": [
    {
      "description": "string",
      "label": "string",
      "hidden": true,
      "value": "string"
    }
  ],
  "required": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|sourceType|string|true|none|none|
|label|string|true|none|none|
|description|string|true|none|none|
|group|string|true|none|none|
|fieldType|string|true|none|none|
|options|[[PropertyOptions](#schemapropertyoptions)]|true|none|none|
|required|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|sourceType|contact|
|sourceType|company|
|fieldType|textarea|
|fieldType|text|
|fieldType|date|
|fieldType|number|
|fieldType|select|
|fieldType|checkbox|
|fieldType|booleancheckbox|
|fieldType|url|

<h2 id="tocS_UpdatePropertyDto">UpdatePropertyDto</h2>
<!-- backwards compatibility -->
<a id="schemaupdatepropertydto"></a>
<a id="schema_UpdatePropertyDto"></a>
<a id="tocSupdatepropertydto"></a>
<a id="tocsupdatepropertydto"></a>

```json
{
  "label": "string",
  "description": "string",
  "group": "string",
  "fieldType": "textarea",
  "options": [
    {
      "description": "string",
      "label": "string",
      "hidden": true,
      "value": "string"
    }
  ],
  "sourceType": "contacts"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|label|string|true|none|none|
|description|string|true|none|none|
|group|string|true|none|none|
|fieldType|string|true|none|none|
|options|[[PropertyOptions](#schemapropertyoptions)]|true|none|none|
|sourceType|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|fieldType|textarea|
|fieldType|text|
|fieldType|date|
|fieldType|number|
|fieldType|select|
|fieldType|checkbox|
|fieldType|booleancheckbox|
|fieldType|url|
|sourceType|contacts|
|sourceType|companies|

<h2 id="tocS_CreatePropertyGroupDto">CreatePropertyGroupDto</h2>
<!-- backwards compatibility -->
<a id="schemacreatepropertygroupdto"></a>
<a id="schema_CreatePropertyGroupDto"></a>
<a id="tocScreatepropertygroupdto"></a>
<a id="tocscreatepropertygroupdto"></a>

```json
{
  "name": "string",
  "sourceType": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|sourceType|string|true|none|none|

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
{}

```

### Properties

*None*

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
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|filters|[[FilterItem](#schemafilteritem)]|true|none|none|
|search|[SearchItem](#schemasearchitem)|true|none|none|

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

<h2 id="tocS_CreateSearchDto">CreateSearchDto</h2>
<!-- backwards compatibility -->
<a id="schemacreatesearchdto"></a>
<a id="schema_CreateSearchDto"></a>
<a id="tocScreatesearchdto"></a>
<a id="tocscreatesearchdto"></a>

```json
{}

```

### Properties

*None*

<h2 id="tocS_MatchedProperty">MatchedProperty</h2>
<!-- backwards compatibility -->
<a id="schemamatchedproperty"></a>
<a id="schema_MatchedProperty"></a>
<a id="tocSmatchedproperty"></a>
<a id="tocsmatchedproperty"></a>

```json
{
  "source": "string",
  "getProspect": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|source|string|true|none|none|
|getProspect|string|true|none|none|

<h2 id="tocS_CreateImportDto">CreateImportDto</h2>
<!-- backwards compatibility -->
<a id="schemacreateimportdto"></a>
<a id="schema_CreateImportDto"></a>
<a id="tocScreateimportdto"></a>
<a id="tocscreateimportdto"></a>

```json
{
  "name": "string",
  "dataFileUrl": "string",
  "matchedProperties": [
    {
      "source": "string",
      "getProspect": "string"
    }
  ],
  "source": "contact",
  "lists": [
    "string"
  ],
  "type": "list_of_enrichment",
  "useGetProspectId": true,
  "ignoreDuplicates": true,
  "sequenceId": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|dataFileUrl|string|true|none|none|
|matchedProperties|[[MatchedProperty](#schemamatchedproperty)]|true|none|none|
|source|string|true|none|none|
|lists|[string]|true|none|none|
|type|string|true|none|none|
|useGetProspectId|boolean|true|none|none|
|ignoreDuplicates|boolean|true|none|none|
|sequenceId|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|source|contact|
|source|company|
|type|list_of_enrichment|
|type|existing_list|
|type|ignore_list|

<h2 id="tocS_CreateStepDto">CreateStepDto</h2>
<!-- backwards compatibility -->
<a id="schemacreatestepdto"></a>
<a id="schema_CreateStepDto"></a>
<a id="tocScreatestepdto"></a>
<a id="tocscreatestepdto"></a>

```json
{}

```

### Properties

*None*

<h2 id="tocS_UpdateStepDto">UpdateStepDto</h2>
<!-- backwards compatibility -->
<a id="schemaupdatestepdto"></a>
<a id="schema_UpdateStepDto"></a>
<a id="tocSupdatestepdto"></a>
<a id="tocsupdatestepdto"></a>

```json
{}

```

### Properties

*None*

<h2 id="tocS_CreateStepTemplateDto">CreateStepTemplateDto</h2>
<!-- backwards compatibility -->
<a id="schemacreatesteptemplatedto"></a>
<a id="schema_CreateStepTemplateDto"></a>
<a id="tocScreatesteptemplatedto"></a>
<a id="tocscreatesteptemplatedto"></a>

```json
{}

```

### Properties

*None*

<h2 id="tocS_GetSequenceAnalyticsDto">GetSequenceAnalyticsDto</h2>
<!-- backwards compatibility -->
<a id="schemagetsequenceanalyticsdto"></a>
<a id="schema_GetSequenceAnalyticsDto"></a>
<a id="tocSgetsequenceanalyticsdto"></a>
<a id="tocsgetsequenceanalyticsdto"></a>

```json
{}

```

### Properties

*None*

<h2 id="tocS_DeleteSequencesDto">DeleteSequencesDto</h2>
<!-- backwards compatibility -->
<a id="schemadeletesequencesdto"></a>
<a id="schema_DeleteSequencesDto"></a>
<a id="tocSdeletesequencesdto"></a>
<a id="tocsdeletesequencesdto"></a>

```json
{}

```

### Properties

*None*

<h2 id="tocS_ExportSortDTO">ExportSortDTO</h2>
<!-- backwards compatibility -->
<a id="schemaexportsortdto"></a>
<a id="schema_ExportSortDTO"></a>
<a id="tocSexportsortdto"></a>
<a id="tocsexportsortdto"></a>

```json
{
  "column": "string",
  "order": "ASC"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|column|string|true|none|none|
|order|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|order|ASC|
|order|DESC|

<h2 id="tocS_CreateExportDto">CreateExportDto</h2>
<!-- backwards compatibility -->
<a id="schemacreateexportdto"></a>
<a id="schema_CreateExportDto"></a>
<a id="tocScreateexportdto"></a>
<a id="tocscreateexportdto"></a>

```json
{
  "name": "string",
  "includeProperties": "all",
  "fileFormat": "xlsx",
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
  "sourceType": "contact",
  "sort": {
    "column": "string",
    "order": "ASC"
  },
  "itemIds": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|includeProperties|string|true|none|none|
|fileFormat|string|true|none|none|
|filters|[[FilterItem](#schemafilteritem)]|true|none|none|
|sourceType|string|true|none|none|
|sort|[ExportSortDTO](#schemaexportsortdto)|true|none|none|
|itemIds|[string]|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|includeProperties|all|
|includeProperties|columns_only|
|includeProperties|custom|
|fileFormat|xlsx|
|fileFormat|csv|
|sourceType|contact|
|sourceType|company|

