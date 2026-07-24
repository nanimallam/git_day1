import requests 
# print(requests)

# # get
# api="https://fakestoreapi.com/products"
# res=requests.get(api)
# print(res)#<response[200]>
# print(res.json())

# api="https://fakestoreapi.com/products/categories"
# api="https://fakestoreapi.com/products/1"
# res=requests.get(api)
# print(res)#<response[200]>
# print(res.json())


# # post
# import json
# api="http://localhost:3000/mobiles"
# mobiles={"name":"samsung s25","brand":"samsung","price":"1.25 lakh","colour":"grey"}
# json_data=json.dumps(mobiles)
# res=requests.post(api,data=json_data)
# print(res)


# api="http://localhost:3000/mobiles"
# mobiles={"name":"samsung s26","brand":"samsung","price":"1.39 lakh","colour":"white"}
# res=requests.post(api,json=mobiles)
# print(res.json())


# put

# api="http://localhost:3000/mobiles/UsdXkhcIazk"
# mobiles={"name":"samsung s24","brand":"samsung","price":"1.39 lakh","colour":"white"}
# res=requests.put(api,json=mobiles)
# print(res.json())


# # patch

# api="http://localhost:3000/mobiles/UsdXkhcIazk"
# mobiles={"name":"samsung s26"}
# res=requests.patch(api,json=mobiles)
# print(res.json())



# delete

api="http://localhost:3000/mobiles/UsdXkhcIazk"

res=requests.delete(api)
print(res.json())





