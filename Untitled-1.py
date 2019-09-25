import flask from Flask

fun = Flask(__name__)

@fun.route("/")
def home():
    print("Server received request for 'Home' page...")
    return "Welcome world!"

@fun.route("/about")
def about():
    print("Server received request for 'About' page...")
    return "Welcome to my 'About' page! I am Elizabeth Schilling from St. Louis, MO."

@fun.route("/contact")
def about():
    print("Server received request for 'Contact' page..")
    return "If you wish to contact me; my email is eschilling14@gmail.com"

if __name__ == "__main__":
    app.run(debug=True)