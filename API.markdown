# GetSparks.org API Description

Part of the goal of a CodeIgniter package manager was making it possible to
host package sources other than GetSparks.org. You can do that one of two ways:

1. Deploy the open-source GetSparks.org codebase somewhere
2. Create an application that conforms to the same API interface as GetSparks.org

This document is aimed toward describing the JSON API that the command line 
spark utility interacts with. If this API is replicated in a new app, it can
act as a spark provider.

At this time, GetSparks.org has a read-only API.

## Packages

### GET api/packages/search

Used for searching for existing sparks.

#### URI Parameters

None

#### Query Parameters

**q**: The search string

#### Example

[http://getsparks.org/api/packages/search?q=sdk](http://getsparks.org/api/packages/search?q=sdk)

#### Example Output (snipped)

	{
	    "success": true,
	    "results": [
	        {
	            "id": "68",
	            "contributor_id": "2",
	            "name": "spark-sdk",
	            "summary": "A spark for validating other sparks.",
	            "description": "A spark for validating other sparks. Useful for spark contributors.\n\nIt is the exact same library used by GetSparks.org to automatically validate new sparks.",
	            "repository_type": "git",
	            "base_location": "git://github.com/katzgrau/spark-sdk.git",
	            "website": "https://github.com/katzgrau/spark-sdk",
	            "is_unsupported": "0",
	            "is_approved": "0",
	            "is_featured": "1",
	            "is_official": "1",
	            "is_browse": "1",
	            "fork_id": "0",
	            "created": "2011-04-30 21:47:04",
	            "modified": "2011-04-30 21:47:04",
	            "username": "katzgrau",
	            "email": "katzgrau@gmail.com",
	            "last_push": "2011-05-06 06:43:28"
	        },
	        ... More ...
	}

### GET api/packages/**package_name**/versions/**version**/spec

This call returns all of the info needed to install a spark locally.

#### URI Parameters

**Package Name**: The name of the package
**Version**: The version of the spark you're looking for. Using 'HEAD' will
 grab the latest version of the spark.

#### Example Output

    {
        "success": true,
        "spec": {
            "id": "22",
            "contributor_id": "11",
            "name": "amazon-ses",
            "summary": "A CodeIgniter library to interact with Amazon Web Services (AWS) Simple Email Service (SES)",
            "description": "",
            "repository_type": "git",
            "base_location": "git://github.com/joelcox/codeigniter-amazon-ses.git",
            "website": "http://github.com/joelcox/codeigniter-amazon-ses",
            "is_unsupported": "0",
            "is_approved": "0",
            "is_featured": "1",
            "is_official": "0",
            "is_browse": "1",
            "fork_id": "0",
            "created": "2011-02-28 19:51:01",
            "modified": "2011-02-28 19:51:01",
            "version": "0.3.1",
            "is_deactivated": "0",
            "archive_url": "http://getsparks.org/static/archives/amazon-ses/amazon-ses-0.3.1.zip",
            "tag": "0.3.1",
            "readme": "CodeIgniter Amazon SES\n======================\n (Snipped for brevity)",
            "version_id": "853",
            "spark_home": "http://getsparks.org/packages/amazon-ses/show",
            "contributor": {
                "id": "11",
                "username": "joelcox",
                "email": "joel@joelcox.nl",
                "email_hash": "d664f094eaeebaa43bd3a2afe4e63c36",
                "real_name": "Joël Cox",
                "community_profile_link": "",
                "website": "http://joelcox.nl",
                "is_admin": "0",
                "created": "2011-02-28 19:45:15",
                "modified": "2011-02-28 19:45:14"
            },
            "dependencies": [
                {
                    "id": "25",
                    "contributor_id": "14",
                    "name": "curl",
                    "summary": "Work with cURL easily from your CodeIgniter application.",
                    "description": "CodeIgniter-cURL is a CodeIgniter library which makes it easy to do simple cURL requests and makes more complicated cURL requests easier too.",
                    "repository_type": "git",
                    "base_location": "git://github.com/philsturgeon/codeigniter-curl.git",
                    "website": null,
                    "is_unsupported": "0",
                    "is_approved": "0",
                    "is_featured": "0",
                    "is_official": "1",
                    "is_browse": "1",
                    "fork_id": "0",
                    "created": "2011-03-01 00:31:37",
                    "modified": "2011-03-01 00:31:37",
                    "version": "1.0.0",
                    "tag": "1.0",
                    "is_deactivated": "0",
                    "version_id": "29",
                    "is_direct": "1"
                }
            ]
        }
    }