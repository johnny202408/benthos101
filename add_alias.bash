curl -X POST "http://localhost:9200/_aliases" -H 'Content-Type: application/json' -d'
{
  "actions": [
    {
      "add": {
        "index": "norman",
        "alias": "norman_a"
      }
    }
  ]
}'

