from flask import Flask, request

app = Flask(__name__)

# Initialize the counter
counter = 0

@app.route('/', methods=['GET', 'POST'])
def counter_page():
    global counter

    if request.method == 'POST':
        # Increment the counter on each POST request
        counter += 1

    # Return the counter on every GET request
    return f'Number of POST requests served: {counter}'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)