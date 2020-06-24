
# Importing required packages for handling JSON file
import json
import jsonpath

# Read locator from JSON file:
def read_locator_from_json(locatorname):
    f = open("../JsonFiles/Elements.json")
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response, locatorname)
    return value[0]

