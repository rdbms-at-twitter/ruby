# In case if your rails is new than this version.


```
root@DESKTOP-A5QLPD0:~/db_kb/api_template# bundle exec rake db:migrate
== 20200222075028 CreateApisamples: migrating =================================
-- create_table(:apisamples)
   -> 0.0010s
== 20200222075028 CreateApisamples: migrated (0.0017s) ========================

root@DESKTOP-A5QLPD0:~/db_kb/api_template#



root@DESKTOP-A5QLPD0:~/db_kb/api_template# bundle exec rake routes
           Prefix Verb   URI Pattern                      Controller#Action
api_v1_apisamples GET    /api/v1/apisamples(.:format)     api/v1/apisamples#index
                  POST   /api/v1/apisamples(.:format)     api/v1/apisamples#create
 api_v1_apisample GET    /api/v1/apisamples/:id(.:format) api/v1/apisamples#show
                  PATCH  /api/v1/apisamples/:id(.:format) api/v1/apisamples#update
                  PUT    /api/v1/apisamples/:id(.:format) api/v1/apisamples#update
                  DELETE /api/v1/apisamples/:id(.:format) api/v1/apisamples#destroy
root@DESKTOP-A5QLPD0:~/db_kb/api_template#
```

# Get posts

Make a `get` request to `http://localhost:3000/api/v1/apisamples` and you will get the json formatted data like the code below.

```json
{
    "status": "SUCCESS",
    "message": "Loaded apisamples",
    "data": [
        {
            "id": 3,
            "name": "api test3",
            "created_at": "2020-02-22T08:01:29.530Z",
            "updated_at": "2020-02-22T08:01:29.530Z"
        },
        {
            "id": 2,
            "name": "api test2",
            "created_at": "2020-02-22T08:01:27.519Z",
            "updated_at": "2020-02-22T08:01:27.519Z"
        },
        {
            "id": 1,
            "name": "Update from Postman",
            "created_at": "2020-02-22T08:01:23.058Z",
            "updated_at": "2020-02-22T08:05:03.332Z"
        }
    ]
}
```

# Get a post
Make a `get` request to `http://localhost:3000/api/v1/apisamples/post_id`

```json

{
    "status": "SUCCESS",
    "message": "Loaded the apisample",
    "data": {
        "id": 1,
        "name": "Update from Postman",
        "created_at": "2020-02-22T08:01:23.058Z",
        "updated_at": "2020-02-22T08:05:03.332Z"
    }
}

```


# Create a post
Make a `post` request to `http://localhost:3000/api/v1/apisamples`

```json
{
  "name":"Post from Postman"
}

```

# Update a post
Make a `put` or `patch` request to `http://localhost:3000/api/v1/apisamples/post_id` 

```json

{
  "name":"Update from Postman"
}

```

# Delete a post
Make a `delete` request to `http://localhost:3000/api/v1/apisamples/post_id`



# Tool
You can use [Postman](https://www.getpostman.com/) to test if the api is working properly.


