from flask import Blueprint, render_template, request, redirect, session
from datetime import date
import WebWyp.app as SQL
bp = Blueprint(__name__, __name__, template_folder='templates')





@bp.route("/reservations",methods=["POST","GET"])
def show():
    if not session.get('logged_in'):
        return redirect("/login")

    user = session['user_name']
    type = session['user_type']
    sort = session['sort_r']
    id = session["user_id"]
    reservations = SQL.Samochod.fetch_reservations(SQL.Samochod,session["sort_r"],id,type)
    delete_id = request.args.get("delete")
    if delete_id:
        SQL.Samochod.usun(SQL.Samochod,"rezerwacje",delete_id)
        return redirect("/reservations")

    if request.method == 'POST':
        if request.form.get('filter'):

            if request.form.get("sort") == "id":
                session['sort_r'] = 0
            if request.form.get("sort") == "uzytkownik":
                session['sort_r'] = 1
            if request.form.get("sort") == "auto":
                session['sort_r'] = 2
            return redirect("/reservations")


    return render_template("reservations.html", reservations=reservations ,user=user,type=type, sort = sort)