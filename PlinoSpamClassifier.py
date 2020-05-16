from flask import Flask
from flask import request as abhishek_request
from flask import jsonify
import urllib.request
import json

app = Flask(__name__)

@app.route('/checkSpamFilter', methods=['POST'])
def spamFilterChecker():
    print ('Received the JAVA Request!')
    # Get the text data from the JAVA Program.
    req_data = abhishek_request.get_json() 
    text_to_be_classified = req_data['text_to_be_classified']
    print (text_to_be_classified) 

    # ----------------------------------------------------------------------------
    # Make a POST request to the plino Spam API. 
    # ----------------------------------------------------------------------------
    url = "https://plino.herokuapp.com/api/v1/classify/"
    req = urllib.request.Request(url)
    req.add_header(
        'Content-Type',
        'application/json; charset=utf-8')
    body = {'email_text' : text_to_be_classified}
    json_data = json.dumps(body).encode('utf-8') 
    req.add_header('Content-Length', len(json_data))
    json_response = ""
    with urllib.request.urlopen(req, json_data) as f:
        charRead = str(f.read().decode('utf-8'))
        if not (charRead == " " or charRead == "\n" or charRead == "\t"): 
            json_response += charRead
    # ----------------------------------------------------------------------------

    # Return the response in JSON Parseable format.
    return json_response

if __name__ =="__main__":
    app.run(debug=True)