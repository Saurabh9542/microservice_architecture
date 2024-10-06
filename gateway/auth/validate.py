import os, requests


def token(request):
    if not "Authorization" in request.headers:
        return None, ("misssing credentials", 401)
    
    token = request.headers["Authorization"]


    if not token:
        return None, ("misssing credentials", 401)

    response = requests.post(
    f"http://{os.environ.get('AUTH_SVC_ADDRESS')}/validate",
    headers={"Authorization": token},
)


    if response.status_code == 200:
        return response.txt, None
    
    else:
        return None, (response.txt, status_code)