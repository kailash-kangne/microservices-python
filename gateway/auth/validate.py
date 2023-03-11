import os

def token(request):
     if not "Authorization" in request.headers:
         return None, ("missing credentials", 401)
     
     token = request.headers["Authorization"]
     
     if not token:
         return None, ("missing credentials", 401)
     
     response = request.post(
         'http://{}/validate'.format(os.environ.get('AUTH_SVC_ADDRESS')),
         headers={"Authorization": token}
     )
     
     if response.status_code == 200:
        return response.text, None 
     else: 
         return None, (response.text, response.status_code)