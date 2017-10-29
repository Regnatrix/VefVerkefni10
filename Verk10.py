#Sandra Dögg Kristmundsdóttir
from bottle import run,route,template,redirect,response,request,post
import  pymysql.cursors
connection = pymysql.connect(host='tsuts.tskoli.is',
                             user='1105922489',
                             password='mypassword',
                             db='1105922489_vef2verk10',
                             )

try:
    connection.commit()
    with connection.cursor() as cursor:
        sql = "SELECT user, pass FROM `user`"
        cursor.execute(sql)
        result = cursor.fetchall()
        for r in result:
            print(r)
finally:
    connection.close()
@route('/static/<skra>')
def static_skrar(skra):
    return static_file(skra, root='./static/')

@route("/")
def main():
        return template('Index.tpl')

@route("/main")
def main():
    return template ( 'Index.tpl' )


@route("/showSignin")
def showsignin():
    username = request.forms.get ("username")
    password = request.forms.get ("password")
    save = username, password
    with connection.cursor () as cursor:
        sql = "INSERT INTO user values(username,password)"
        cursor.execute ( sql )

@route ("/userHome")
def Userhome():
    username = request.get_cookie("account", secret='some-secret-key')
    if username:
        return """
        <!DOCTYPE html>
        <html>
        <head>
            <title></title>
        </head>
        <body>
            <p>Welcome! You are now logged in.</p>"
            <a href="/logout">Log out</a>
        </body>
        </html>
        """""""""
    else:
        return "You are not logged in. Access denied."

@route ("/logout")
def logout():
    response.set_cookie ("account", "", expires=0)
    return redirect ( "/" )

@route('/showSignUp')
def showSignUp():
    return template('signup.tpl')

@post ("/showsignUp", methods=["POST", "GET"])
def signUp():
    username = request.forms.get ( 'username' )
    password = request.forms.get ( 'password' )
    save = username, password
    with connection.cursor () as cursor:
        sql = "INSERT INTO user values(username,password)"
        cursor.execute ( sql )





if __name__ == "__main__":
    run ( host='localhost', port=5000, debug=True )