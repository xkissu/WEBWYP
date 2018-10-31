from flask import Blueprint, render_template, request, redirect, session

import WebWyp.app as SQL
import datetime
bp = Blueprint(__name__, __name__, template_folder='templates')


@bp.route("/login", methods=['POST', 'GET'])
def show():
    errorstring = ""
    session['logged_in'] = False
    if request.method == 'POST':
        login = request.form.get("login")
        password = request.form.get("password")

        if request.form.get('add'):
            if login and  password:
                if SQL.User.checkpassword(SQL.User,login,password):
                    session['logged_in'] = True
                    session['user_name'] = SQL.User.checkpassword(SQL.User,login,password)[2]
                    session['user_type'] = SQL.User.checkpassword(SQL.User,login,password)[3]
                    session['user_id'] = SQL.User.checkpassword(SQL.User,login,password)[4]
                    session["sort"] = 0
                    session["sort_r"] = 0
                    return redirect("/")
                else:
                    errorstring= "Błędny login i/lub hasło!"

            else:
                errorstring = "Pola nie mogą byc puste!"
                redirect("/")




    return render_template("login.html", errorstring=errorstring)