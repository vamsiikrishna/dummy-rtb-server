wrk.method = "POST"
wrk.body   = [[
    {
        "id" : "eb85349d-03c3-44f4-a77b-824f7221d119",
        "imp": [
            {
            "id": "1",
            "banner": {
                "h": 250,
                "w": 300,
                "battr": [2,3],
                "btype": [1,3]
                }
            }
        ],
        "site": {
            "id": "102855",
            "name": "Example Site Name",
            "domain": "http://www.example.com",
            "cat" : [ "IAB15", "IAB15-10" ],
            "page": "http://easy.example.com/easy?cu=13824;cre=mu;target=_blank",
            "ref" : "http://refer+url",
            "publisher": {
                "id": "qqwer1234xgfd",
                "name": "site_name",
                "domain": "my.site.com"
            }
        },
        "device": {
            "ua": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.13  (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2",
            "ip": "192.168.5.5",
            "geo": {
                "lat": 37.789,
                "lon": -122.394,
                "country": "USA",
                "city": "San Francisco",
                "region": "CA",
                "zip" : "94105",
                "type": 2
            }
        },
        "user": {
            "buyeruid" : "89776897686798fwe87rtryt8976fsd7869678",
            "id": "55816b39711f9b5acf3b90e313ed29e51665623f",
            "gender": "M",
            "yob": 1975,
            "data": [{
                "id": "pub-demographics",
                "name": "data_name",
                "segment": [{
                    "id" : "345qw245wfrtgwertrt56765wert",
                    "name" : "segment_name",
                    "value": "segment_value"
                }]
            }]
        }
    }
]]
wrk.headers["Content-Type"] = "application/json"