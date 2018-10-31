from flask import Blueprint, render_template, request, redirect, session


bp = Blueprint(__name__, __name__, template_folder='templates')


@bp.route("/logout", methods=['POST', 'GET'])
def show():
    session['logged_in'] = False
    session['user_name'] = ''
    session['user_type'] = ''
    return redirect("/")
