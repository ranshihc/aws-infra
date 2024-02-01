dns_entry = [
    {
        zone_name = "ran.dev"
        private_zone = false
        tags = {
            env = "dev"
            bu = "ran"
        }
        dns_records = {
            "www.ran.dev" = {
                type = "A"
                ttl = 3600 // this value will not take effect unless you update DNS module to support ttl value modification
                set_identifier = "asia-www.ran.dev"
                geolocation_routing_policy = {
                    continent = "AS"
                }
                records = ["203.202.202.1", "203.202.202.2"]  
            },
            "www2.ran.dev" = {
                type = "CNAME"
                records = ["www.ran.dev"]
                set_identifier = "indonesia-www.ran.dev"
                geolocation_routing_policy = {
                    country = "ID"
                }
            },
            "www3.ran.dev" = {
                type = "A"
                records = ["203.202.202.4", "203.202.202.5"]  
            },
        }
    },
    {
        zone_name = "winur8888.dev"
        private_zone = true
        vpc = ["vpc-0aba85400bb8e838b"] // you don't need to assign value here. it shoudl be automatically derived from VPC workspace

        tags = {
            env = "development"
            bu = "winur8888"
        }
        dns_records = {
            "development.winur8888.dev" = {
                type = "A"
                records = ["11.1.1.1"]  
            },
                 "development2.winur8888.dev" = {
                type = "A"
                records = ["11.1.1.2"]  
            },
                 "development3.winur8888.dev" = {
                type = "A"
                records = ["11.1.1.3"]  
            }
        }
    },


]



