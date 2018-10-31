from flask import Blueprint, render_template, request, redirect, session

import WebWyp.app as SQL
bp = Blueprint(__name__, __name__, template_folder='templates')


@bp.route("/conclude", methods=['POST', 'GET'])
def show():
    if not session.get('logged_in'):
        return redirect("/login")
    id = request.args.get("id")
    days = request.args.get("days")
    auto = SQL.Samochod.pobierz(SQL.Samochod,id)
    dto = session["to"]
    dfrom = session["from"]
    koszt = int(int(auto[4])*int(days)/7)
    if request.method == 'POST':
        if request.form.get('ok'):

            return redirect("/")

    return render_template("conclude.html", auto=auto,dfrom=dfrom,dto=dto, days=days, koszt=koszt)