#Module to work with JSON
import json
import requests
import jsonpath

api_url = 'http://api.plos.org/search?q=title:DNA'

# make a request
response1 = requests.get(api_url)
# print(response1.text)

# validate status code
assert response1.status_code == 200

# Parse response into JSON format

json_response = json.loads(response1.text)
print(json_response)

#apply jsonpath
x=jsonpath.jsonpath(json_response,'response.numFound')
print(x)
