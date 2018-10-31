from flask import Blueprint, render_template, request, redirect, session

import WebWyp.app as SQL
import datetime
bp = Blueprint(__name__, __name__, template_folder='templates')

@bp.route("/edit", methods=['POST', 'GET'])
def show():
    if not session.get('logged_in'):
        return redirect("/login")
    if session.get('user_type') != "admin":
        return redirect("/")
    errorstring = ""
    id = request.args.get("id")
    auto = SQL.Samochod.pobierz(SQL.Samochod,id)


    if request.method == 'POST':
        nazwa = request.form.get("manufacturer")
        model = request.form.get("model")
        rok = str(request.form.get("date"))
        przebieg = str(request.form.get("odometer"))
        cena = str(request.form.get("price"))
        auto = [nazwa, model, rok, przebieg, cena]

        if request.form.get('add'):
            if  nazwa and  model and  rok and przebieg and cena:
                if int(rok) > 1900 and int(rok) < int(str(datetime.date.today())[:4]):
                    if int(przebieg) > 0:
                        if int(cena)> 7:
                            SQL.baza.insert(SQL.Samochod.dodaj(SQL.Samochod, nazwa, model, rok, przebieg, cena))
                            return redirect("/")
                        else:
                            errorstring = "Cena nieprawidlowa!"
                    else:
                        errorstring = "Przebieg nieprawidlowy!"
                else:
                    errorstring = "Rok nieprawidlowy!"
            else:
                errorstring = "Pola nie mogą byc puste!"


    return render_template("edit.html", auto=auto, errorstring=errorstring)