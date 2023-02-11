from flask import request, Response, render_template

from flask import Flask
from flask_cors import CORS
#CORS é um descorador de rotas, podemos passar parametros de metodos ou atenticação
#Exemplo: ( origins = "/", methods = ['GET', 'HEAD', 'POST', 'OPTIONS', 'PUT']

app = Flask(__name__)
CORS(app)

@app.route("/app", methods=["GET"])
def hello():
    return "Hello World!"

@app.route("/healthcheck", methods=["GET"])
def healthcheck():
    return "Ok!"

# Documnetation
@app.route('/swagger')
def get_docs():
    print('Preparando Swagger ...')
    return render_template('swaggerui.html')

if __name__ == "__main__":
	app.run(debug=True, host='0.0.0.0', port=5000)