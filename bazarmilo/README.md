# Bazarmilo Server
This is the server for the Bazarmilo Project. This project uses the framework `httplib` used as `httplib.h` & database `sqlite3`.

## How to run
- g++ main.cpp  -l sqlite3
```
If you haven't installed sqlite3 you should first install sqlite3.
```
Command to install `sqlite3` on `Debian` based systems:
```
sudo apt-get update && sudo apt-get install sqlite3 libsqlite3-dev
```
How to install websocketpp:
```
git clone https://github.com/zaphoyd/websocketpp.git && cd websocketpp && mkdir build && cd build && sudo apt install cmake -y && cmake .. && make && sudo make install
```
How to install websocketpp:

```
sudo apt-get install libboost-all-dev
```
## Dependencies
- `sqlite3`
- `httplib`
- [`nlohmann/json`]("https://github.com/nlohmann/json/blob/develop/single_include/nlohmann/json.hpp")
- [`websocketpp`]("https://github.com/zaphoyd/websocketpp.git")


## Authors
- [`@jamesii-b`]


## SQLITE3

### Perform CRUD operation in CLI

```
.tables```

```
CREATE TABLE users ( id INTEGER PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255));```
```

```
DROP TABLE IF EXISTS tableName;

```
sqlite> PRAGMA table_info(users);
0|id|INTEGER|0||1
1|username|VARCHAR(255)|0||0
2|password|VARCHAR(255)|0||0
```

tables:


post:`http://localhost:8080/user/login`
```
{
    "password": "jamesb",
    "username": "jamesb"
}
```

post:`http://localhost:8080/admin/login`
```
{
    "password": "jamesb",
    "username": "jamesb"
}
```
post:`http://localhost:8080/admin/register`
```
{
    "password": "jamesb",
    "username": "jamesb"
}
```
GET:`/user/travel/xxx` 
```
response:{
    {
        "date:"xxx",
        "time:"xxx",
    "from":{
        "lat":xxx,
        "lon":xxx
    },
    "to":{
        "lat":xxx,
        "lon":xxx
    },
    },
    ......
}
```
POST:`/user/travel/register/xxx` 
```
response:{
    {
        "date:"xxx",
        "time:"xxx",
    "from":{
        "lat":xxx,
        "lon":xxx
    },
    "to":{
        "lat":xxx,
        "lon":xxx
    },
    },
    ......
}
```
POST:`/user/register` 
```
{
    "fullname":xxx,
    "username":xxx,
    "password":xxx,
    "contactnumber":xxx,
    "licensenumber":xxx,
}
```
}


```
response:{
    {
        "date:"xxx",
        "time:"xxx",
    "from":{
        "lat":xxx,
        "lon":xxx
    },
    "to":{
        "lat":xxx,
        "lon":xxx
    },
    },
    ......
}
```


GET:`/user/data/xxx` done
```
response:{
    "fullname":xxx,
    "username":xxx,
    "password":xxx,
    "contactnumber":xxx,
    "licensenumber":xxx,
}
```

tables:

travell
    from to -coordinate
    linking to user
    date
    time


post:`http://localhost:8080/user/login`
```
{
    "password": "jamesb",
    "username": "jamesb"
}
```

post:`http://localhost:8080/admin/login`
```
{
    "password": "jamesb",
    "username": "jamesb"
}
```
post:`http://localhost:8080/admin/register`
```
{
    "password": "jamesb",
    "username": "jamesb"
}
```
GET:`/user/travel/xxx` 
```
response:{
    {
        "date:"xxx",
        "time:"xxx",
    "from":{
        "lat":xxx,
        "lon":xxx
    },
    "to":{
        "lat":xxx,
        "lon":xxx
    },
    },
    ......
}
```
POST:`/user/travel/register/xxx` 
```
response:{
    {
        "date:"xxx",
        "time:"xxx",
    "from":{
        "lat":xxx,
        "lon":xxx
    },
    "to":{
        "lat":xxx,
        "lon":xxx
    },
    },
    ......
}
```
POST:`/user/register` 
```
{
    "fullname":xxx,
    "username":xxx,
    "password":xxx,
    "contactnumber":xxx,
    "licensenumber":xxx,
}
```
}


```
response:{
    {
        "date:"xxx",
        "time:"xxx",
    "from":{
        "lat":xxx,
        "lon":xxx
    },
    "to":{
        "lat":xxx,
        "lon":xxx
    },
    },
    ......
}
```


GET:`/user/data/xxx` done
```
response:{
    "fullname":xxx,
    "username":xxx,
    "password":xxx,
    "contactnumber":xxx,
    "licensenumber":xxx,
}
```

GET:`/vehicles`
response:{

}
POST:`/vehicle/register`
request required:{
    "vehicleNumber":"xxx",
    "vehicleOwner":"xxx",
}

POST: `/task/create`
request required:{
    "username":"xxx",
    "productID":"xxx",
    "vehicleNumber":"xxx",
    "latitudeFrom":"xxx",
    "longitudeFrom":"xxx",
    "latitudeTo":"xxx",
    "longitudeTo":"xxx",
    "date":"xxx",

}

POST: `/task/update`
request required:{
    "username":"xxx",
    "productID":"xxx",
    "delivered":"xxx",
}
GET: `/tasks`
response:{
    //everything in the table
    "username":"xxx",
    "productID":"xxx",
    "delivered":"xxx",
}


DATABASES

- vehicles
    id
    vehicleNumber
    owner

- productTasks
    id
    username
    productID
    vehicleNumber
    latitudeFrom
    longitudeFrom
    latitudeTo
    longitudeTo
    date
    delivered
