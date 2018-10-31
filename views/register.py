from flask import Blueprint, render_template, request, redirect, session

import WebWyp.app as SQL
import datetime

bp = Blueprint(__name__, __name__, template_folder='templates')


@bp.route("/register", methods=['POST', 'GET'])
def show():
    errorstring = ""
    if request.method == 'POST':

        login = request.form.get("login")
        password = request.form.get("pass1")
        password2 = str(request.form.get("pass2"))
        name = str(request.form.get("name"))
        if session["user_type"] == "admin":
            type = str(request.form.get("type"))
        else:
            type = "user"


        if request.form.get('add'):

            if  login and  password and  password2 and name and type:
                if password2 == password:
                    SQL.baza.insert(""" INSERT INTO users (login, name, password,type) VALUES ("{}","{}","{}","{}")""".format(login,name,password,type))
                    if session.get('logged_in'):
                        return redirect("/")
                    else:
                        return redirect("/login")

                else:
                    errorstring = "Hasła nie pasują do siebie!"
            else:
                errorstring = "Pola nie mogą byc puste!"
    type = session.get("user_type")
    user = session.get("user_name")

    return render_template("register.html", errorstring=errorstring,user=user,type=type)