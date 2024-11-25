curl -X POST "http://localhost:9200/_aliases" -H 'Content-Type: application/json' -d'
{
  "actions": [
    {
      "add": {
        "index": "norman1",
        "alias": "norman1_a"
      }
    }
  ]
}'

