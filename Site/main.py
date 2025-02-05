from flask import Flask
from Site.db.data_manager import Manager

app = Flask(__name__)

@app.route("/Write")
def write() :
    host = Manager()

@app.route("/Read")
def Read() :
    host = Manager()

if __name__ == '__main__':
    app.run(debug=True, port=4400, host='0.0.0.0')