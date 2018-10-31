from flask import Blueprint, render_template, request, redirect, session

import WebWyp.app as SQL
bp = Blueprint(__name__, __name__, template_folder='templates')


@bp.route("/delete", methods=['POST', 'GET'])
def show():
    if not session.get('logged_in'):
        return redirect("/login")
    if session.get('user_type') != "admin":
        return redirect("/")

    id = request.args.get("id")
    return redirect("/")