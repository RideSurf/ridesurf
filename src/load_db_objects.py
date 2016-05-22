import psycopg2

class Profile(object):
    def __init__(self, id, username, firstname, lastname, email, car_type):
        self.id = id
        self.username = username
        self.firstname = firstname
        self.lastname = lastname
        self.email = email
        self.car_type = car_type
        self.categories = []
        self.main_locations = {}
        self.other_locations = {}


class Category(object):
    def __init__(self, id, name):
        self.id = id
        self.name = name

class Location(object):
    def __init__(self, id, private, name, address, lat, lon):
        self.id = id
        self.private = private
        self.name = name
        self.address = address
        self.lat = lat
        self.lon = lon
        self.categories = []

class Trip(object):
    def __init__(self, id, name, start_time, end_time, description, dogs_ok, committed, completed, active):
        self.id = id
        self.name = name
        self.start_time = start_time
        self.end_time = end_time
        self.description = description
        self.dogs_ok = dogs_ok
        self.committed = committed
        self.completed = completed
        self.active = active
        self.categories = []
        self.stops = []
        self.members = []


def connect():
    conn_string = "dbname='ridesurf'"
    conn = psycopg2.connect(conn_string)
    cursor = conn.cursor()
    return cursor

def fill_table(cursor, tablename, cls):
    cursor.execute("select * from {0}".format(tablename))
    records = cursor.fetchall()
    
    dct = {}
    for record in records:
        obj = cls(*record)
        dct[obj.id] = obj
    return dct


if __name__ == '__main__':
    cursor = connect()
    profiles = fill_table(cursor, "profile", Profile)
    categories = fill_table(cursor, "category", Category)
    locations = fill_table(cursor, "location", Location)
    trips = fill_table(cursor, "trip", Trip)
    
    cursor.execute("select * from profile_category")
    records = cursor.fetchall()
    for record in records:
        profiles[record[0]].categories.append(categories[record[1]])
        
    cursor.execute("select * from location_category")
    records = cursor.fetchall()
    for record in records:
        locations[record[0]].categories.append(categories[record[1]])
        
    cursor.execute("select * from trip_category")
    records = cursor.fetchall()
    for record in records:
        trips[record[0]].categories.append(categories[record[1]])
        
    cursor.execute("select * from trip_member")
    records = cursor.fetchall()
    for record in records:
        trips[record[0]].members.append(profiles[record[1]])
        
    cursor.execute("select * from trip_stop order by position asc")
    records = cursor.fetchall()
    for record in records:
        trips[record[0]].stops.append(locations[record[1]])
        
    cursor.execute("select * from profile_location where main = True")
    records = cursor.fetchall()
    for record in records:
        profiles[record[0]].main_locations[record[2]] = locations[record[1]]

    cursor.execute("select * from profile_location where main = False")
    records = cursor.fetchall()
    for record in records:
        profiles[record[0]].other_locations[record[2]] = locations[record[1]]

    # TODO
    # location_review
    # profile_review
    '''
    for profile in profiles.values():
        print profile.username
        for category in profile.categories:
            print "  ", category.name
    '''

