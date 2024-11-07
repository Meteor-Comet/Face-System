from app import app
from gevent import pywsgi

# server = pywsgi.WSGIServer(('0.0.0.0', 5000), app)
# server.serve_forever()
app.run()