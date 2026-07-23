import requests

# GET request
url = "http://localhost:3000/students/1"
res = requests.get(url)
print(res.json())
# url="http://localhost:3000/mobiles/1"
# POST request
#

res = requests.delete(url)
# print(res)
print(res.json())