def fetch_cars(filter):
    auta = SQL.baza.get("""SELECT Id, Marka, Model, Rok, Przebieg, Cena FROM samochody  """)
    auta2 = auta.copy()

    for auto in auta:
        id = auto[0]
        rezerwacje = SQL.baza.get(""" SELECT id,od,do,active, idauto FROM rezerwacje WHERE idauto = {}""".format(id))
        for rezerwacja in rezerwacje:
            if date.today() >= rezerwacja[1] and date.today() <= rezerwacja[2]:
                auta2.remove(auto)
    print(auta2)
    auta2 = sorted(auta2, key=lambda x: x[filter])
    print(auta2)
    return auta2

def fetch_cars2(filter):

    auta = SQL.baza.get("""SELECT Id, Marka, Model, Rok, Przebieg, Cena FROM samochody  """)
    auta2 = []

    for auto in auta:
        id = auto[0]
        rezerwacje = SQL.baza.get(""" SELECT id,od,do,active FROM rezerwacje WHERE idauto = {}""".format(id))
        if rezerwacje:
            for rezerwacja in rezerwacje:
                if date.today() >= rezerwacja[1] and date.today() <= rezerwacja[2]:
                    if not auto in auta2:
                        auta2.append(auto)

    auta2 = sorted(auta2, key=lambda x: x[filter])
    return auta2