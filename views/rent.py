from flask import Blueprint, render_template, request, redirect, session

import WebWyp.app as SQL
from datetime import datetime
from datetime import date

bp = Blueprint(__name__, __name__, template_folder='templates')


@bp.route("/rent", methods=['POST', 'GET'])
def show():
    if not session.get('logged_in'):
        return redirect("/login")
    id = request.args.get("id")
    auto = SQL.Samochod.pobierz(SQL.Samochod,id)
    user_id = session.get('user_id')
    errorstring = ""
    if request.method == 'POST':
        if request.form.get('add'):

            time = request.form.get("from")
            time2 = request.form.get("to")
            blad = 0

            rezerwacje = SQL.baza.get(""" SELECT * FROM rezerwacje WHERE idauto={}""".format(id))

            time = datetime.strptime(time, "%Y-%m-%d").date()
            time2 = datetime.strptime(time2, "%Y-%m-%d").date()

            if time < datetime.now().date() or time2 < datetime.now().date():
                errorstring = "Nie mozesz zarezerwowac samochodu w przeszlosci"
                return render_template("rent.html", auto=auto, errorstring=errorstring)
            if time2 < time:
                errorstring = "Data zakonczenia wczesniejsza od daty rozpoczęcia"
                return render_template("rent.html", auto=auto, errorstring=errorstring)

            if rezerwacje:
                for rezerwacja in rezerwacje:
                    if (time >= rezerwacja[3] and time <= rezerwacja[4]) or (time2 >= rezerwacja[3] and time2 <= rezerwacja[4]) or (time <= rezerwacja[3] and time2 >= rezerwacja[4]):
                        blad += 1

                if blad > 0:
                    errorstring = "Termin zajety"
                    return render_template("rent.html", auto=auto, errorstring=errorstring)


            SQL.baza.insert(""" INSERT INTO rezerwacje (iduser, idauto,od,do) VALUES ({},{},"{}","{}") """.format(int(user_id),id, time,time2))
            time3 = (time2 - time).days
            session["from"] = time.strftime('%Y-%m-%d')
            session["to"] = time2.strftime('%Y-%m-%d')
            return redirect("/conclude?id={}&days={}".format(id, time3))
    return render_template("rent.html", auto=auto, errorstring=errorstring)