import json
import jsonpath


def readlocator(locator):
    with open(r'C:\Users\PA061981\PycharmProjects\RobotAutomation\JSON_files\elements.json') as f:
      data = json.load(f)
    response = jsonpath.jsonpath(data, locator)
    return response[0]
print(readlocator("Registration.Username"))