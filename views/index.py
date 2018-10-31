from flask import Blueprint, render_template, request, redirect, session
from datetime import date
import WebWyp.app as SQL
bp = Blueprint(__name__, __name__, template_folder='templates')





@bp.route("/",methods=["POST","GET"])
def show():
    if not session.get('logged_in'):
        return redirect("/login")
    cars = SQL.Samochod.fetch_cars(SQL.Samochod,session["sort"])
    cars2 = SQL.Samochod.fetch_cars2(SQL.Samochod,session["sort"])
    user = session['user_name']
    type = session['user_type']
    sort = session['sort']
    delete_id = request.args.get("delete")
    if delete_id:
        SQL.Samochod.usun(SQL.Samochod,"samochody",delete_id)
        return redirect("/")
    if request.method == 'POST':
        if request.form.get('filter'):

            if request.form.get("sort") == "":
                session['sort'] = 0
            if request.form.get("sort") == "marka":
                session['sort'] = 1
            if request.form.get("sort") == "cena":
                session['sort'] = 5
            if request.form.get("sort") == "rok":
                session['sort'] = 3
            return redirect("/")


    return render_template("index.html", cars = cars, cars2 = cars2,user=user,type=type, sort = sort)