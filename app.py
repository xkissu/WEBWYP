from flask import Flask
from WebWyp.views.index import bp as index_bp
from WebWyp.views.addcar import bp as add_bp
from WebWyp.views.delete import bp as delete_bp
from WebWyp.views.edit import bp as edit_bp
from WebWyp.views.rent import bp as rent_bp
from WebWyp.views.returncar import bp as return_bp
from WebWyp.views.rent_conclude import bp as conclude_bp
from WebWyp.views.login import bp as login_bp
from WebWyp.views.logout import bp as logout_bp
from WebWyp.views.register import bp as register_bp
from WebWyp.views.reservations import bp as reservations_bp
from datetime import date
import mysql.connector
import os
import datetime



class Database:

    host = 'localhost'
    user = 'root'
    password = 'sabunia1'
    db = 'samochody'

    def __init__(self):
        self.connection = mysql.connector.connect(host=self.host,user=self.user,passwd=self.password,db=self.db)
        self.cursor = self.connection.cursor()

    def insert(self, query):
        try:
            self.cursor.execute(query)
            self.connection.commit()
        except:
            print("Zly SQL")
            print(query)
            self.connection.rollback()


    def get(self, query):
        cursor = self.connection.cursor()
        cursor.execute(query)
        return cursor.fetchall()

    def getone(self, query):
        cursor = self.connection.cursor()
        cursor.execute(query)
        return cursor.fetchone()

    def __del__(self):
        self.connection.close()
class User():
    def checkpassword(self,login,password):
        try:
            user = baza.getone(""" SELECT login,password,name,type,idusers FROM users WHERE login="{}" """.format(login))
            pwd = user[1]
            if pwd == password:
                return user
        except:
            print("Nie ma takiego uzytkownika")
        return False
class Samochod():

    def __init__(self):
        self.marka = ""
        self.model = ""
        self.rok = ""
        self.cena = ""
        self.wlasciciel = ""
        self.przebieg = ""
        self.historia = ""

    def set(self, marka, model, rok, cena):
        self.marka = str(marka).upper()
        self.model = str(model).upper()
        self.rok = str(rok).upper()
        self.cena = str(cena).upper()

    def fetch_cars(self,filter):
        auta = baza.get("""SELECT Id, Marka, Model, Rok, Przebieg, Cena FROM samochody  """)
        auta2 = auta.copy()
        if not filter:
            filter = 0

        for auto in auta:
            id = auto[0]
            rezerwacje = baza.get(
                """ SELECT id,od,do,active, idauto FROM rezerwacje WHERE idauto = {}""".format(id))
            for rezerwacja in rezerwacje:
                if date.today() >= rezerwacja[1] and date.today() <= rezerwacja[2]:
                    auta2.remove(auto)
        #print(auta2)
        #print("sortowanie według ",str(filter))
        auta2 = sorted(auta2, key=lambda x: x[filter])
        #print(auta2)
        return auta2

    def fetch_cars2(self,filter):

        auta = baza.get("""SELECT Id, Marka, Model, Rok, Przebieg, Cena FROM samochody  """)
        auta2 = []

        if not filter:
            filter = 0

        for auto in auta:
            id = auto[0]
            rezerwacje = baza.get(""" SELECT id,od,do,active FROM rezerwacje WHERE idauto = {}""".format(id))
            if rezerwacje:
                for rezerwacja in rezerwacje:
                    if date.today() >= rezerwacja[1] and date.today() <= rezerwacja[2]:
                        if not auto in auta2:
                            auta2.append(auto)

        #print("sortowanie według ",str(filter))
        auta2 = sorted(auta2, key=lambda x: x[filter])
        return auta2


    def fetch_reservations(self,filter,id,type):
        if type == "admin":
            reservations = baza.get("""SELECT * FROM rezerwacje  """)
        else:
            reservations = baza.get("""SELECT * FROM rezerwacje WHERE iduser ={} """.format(id))

        if not filter:
            filter = 0



        reservations = sorted(reservations, key=lambda x: x[filter])
        return reservations


    def marki(self):
        marki = baza.get("SELECT id FROM make")
        markif = []
        for marka in marki:
            marka = marka[0]
            query = "SELECT title FROM make WHERE id={}".format(marka)
            marka = baza.getone(query)
            marka = marka[0]
            markif.append(marka)
        return markif

    def modele(self,id):
        models = baza.get("SELECT id FROM model WHERE make_id={}".format(id))
        modelsf = []
        for model in models:
            model = model[0]
            query = "SELECT title FROM model WHERE id={}".format(model)
            model = baza.getone(query)
            model = model[0]
            modelsf.append(model)

        return modelsf
    def pobierz(self,indeks:int):

        self.marka = str(baza.getone("SELECT Marka FROM samochody WHERE ID = {}".format(indeks))[0])
        self.model = str(baza.getone("SELECT Model FROM samochody WHERE ID = {}".format(indeks))[0])
        self.rok = int(baza.getone("SELECT Rok FROM samochody WHERE ID = {}".format(indeks))[0])
        self.przebieg = int(baza.getone("SELECT Przebieg FROM samochody WHERE ID = {}".format(indeks))[0])
        self.cena = int(baza.getone("SELECT Cena FROM samochody WHERE ID = {}".format(indeks))[0])
        self.indeks = indeks
        return [self.marka,self.model,self.rok,self.przebieg,self.cena,self.indeks]

    def dodaj(self,marka,model,rok,przebieg, cena,):
        return """ INSERT INTO samochody (Marka, Model, Rok, Przebieg, Cena) VALUES ("{}","{}","{}","{}","{}")""".format(marka,model,rok,przebieg,cena)
    def edytuj(self,marka,model,rok,przebieg,cena,id):
        return """ UPDATE samochody SET Marka = "{}", Model = "{}", Rok = "{}", Przebieg = "{}", Cena = "{}" WHERE ID = {} """.format(marka,model,rok,przebieg,cena,id)
    def usun(self,tabela,id):
        baza.insert("""DELETE FROM {} WHERE ID={}""".format(tabela,int(id)))
    def wypozycz(self,id):
        baza.insert("""UPDATE samochody SET Rent="true" WHERE ID={}""".format(int(id)))
    def oddaj(self,id):
        baza.insert("""UPDATE samochody SET Rent="false" WHERE ID={}""".format(int(id)))
baza = Database()

app = Flask(__name__)

app.secret_key = os.urandom(12)
app.register_blueprint(index_bp)
app.register_blueprint(add_bp)
app.register_blueprint(delete_bp)
app.register_blueprint(edit_bp)
app.register_blueprint(rent_bp)
app.register_blueprint(return_bp)
app.register_blueprint(conclude_bp)
app.register_blueprint(login_bp)
app.register_blueprint(logout_bp)
app.register_blueprint(register_bp)
app.register_blueprint(reservations_bp)
