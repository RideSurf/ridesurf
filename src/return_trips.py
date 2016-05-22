import numpy as np 

def intersect(a, b):
    return list(set(a) & set(b))

def return_ranked_trips(trips, query_trip):
	trip_ids = trips.keys()
	match_trip_ids = check_time(trip_ids, query_trip)
	match_trip_ids = check_location(match_trip_ids, query_trip)
	return rank_trips(match_trip_ids, 5)

def check_time(trips, trip_ids, query_trip):
	results = [trips[id] for id in trip_ids if query_trip[start_time] >= trips[id][start_time] \
				and query_trip[end_time] <= trips[id][end_time] and trips[id].active and not trips[id].completed]
	return results

def check_location(trips, trip_ids, query_trip):
	results = [trips[id] for id in trip_ids if len(intersect(query_trip.locations, trips[id].locations))>0 \
				and trips[id].active and not trips[id].completed]
	return results

def rank_trips(trips, trip_ids, num_trips):
	lst_trips = [trips[id] for id in trip_ids]
	start_times = [trip.start_time for trip in lst_trips]
	indices = argsort(start_times)[:num_trips]
	return lst_trips[indices]

'''
class Trip(object):
    def __init__(self, id, name, start_time, end_time, description, dogs_ok, committed, completed, active):
        self.id = id
        self.name = name
        self.start_time = start_time => hard checks
        self.end_time = end_time => hard checks
        self.description = description 
        self.dogs_ok = dogs_ok => hard checks
        self.committed = committed => hard checks
        self.completed = completed
        self.active = active
        self.categories = []
        self.locations = []

class Location(object):
    def __init__(self, id, private, name, address, lat, lon):
        self.id = id
        self.private = private
        self.name = name
        self.address = address
        self.lat = lat
        self.lon = lon
        self.categories = []
'''