-- some fake data to populate database


\c ridesurf

INSERT INTO profile (username, firstname, lastname, email, car_type) VALUES ('jen', 'Jen', 'Doe', 'jen@ridesurf.co', '2012 Red Toyota Prius');
INSERT INTO profile (username, firstname, lastname, email, car_type) VALUES ('steve', 'Steve', 'Q', 'steve@ridesurf.co', null);
INSERT INTO profile (username, firstname, lastname, email, car_type) VALUES ('kat', 'Kat', 'NiCarthy', 'kat@ridesurf.co', null);
INSERT INTO profile (username, firstname, lastname, email, car_type) VALUES ('kevin', 'Kevin', 'Wu', 'kevin@gmail.com', '2013 Black Ford Focus');
INSERT INTO profile (username, firstname, lastname, email, car_type) VALUES ('rachelle', 'Rachelle', 'Stern', 'rachelle@gmail.com', null);
INSERT INTO profile (username, firstname, lastname, email, car_type) VALUES ('aaron', 'Aaron', 'Tate', 'aaron@ridesurf.co', null);
INSERT INTO profile (username, firstname, lastname, email, car_type) VALUES ('josslyn', 'Josslyn', 'Parrish', 'josslyn@ridesurf.co', '2016 Blue Subaru Outback');
INSERT INTO profile (username, firstname, lastname, email, car_type) VALUES ('abby', 'Abby', 'Buckley', 'abby@ridesurf.co', null);
INSERT INTO profile (username, firstname, lastname, email, car_type) VALUES ('lesley', 'Lesley', 'Rye', 'lesley@ridesurf.co', null);
INSERT INTO profile (username, firstname, lastname, email, car_type) VALUES ('brendan', 'Brendan', 'Walker', 'brendan@ridesurf.co', '2009 Grey Honda Civic');

-- the ids assume this is inserted in an empty database
INSERT INTO profile_category (profile_id, category_id) VALUES (1, 3);
INSERT INTO profile_category (profile_id, category_id) VALUES (1, 4);
INSERT INTO profile_category (profile_id, category_id) VALUES (2, 5);
INSERT INTO profile_category (profile_id, category_id) VALUES (2, 7);
INSERT INTO profile_category (profile_id, category_id) VALUES (3, 8);

INSERT INTO location (private, name, address, lat, lon) VALUES (False, 'Whistler', 'Whistler, BC, Canada', 50.116378, -122.955674);
INSERT INTO location (private, name, address, lat, lon) VALUES (False, 'Mount Si', 'Mount Si, Washington', 47.487634, -121.723456);
INSERT INTO location (private, name, address, lat, lon) VALUES (False, 'Vancouver', 'Vancouver, BC', 49.287404, -123.132162);
INSERT INTO location (private, name, address, lat, lon) VALUES (True, 'home', 'West Seattle',47.565843, -122.386773);
INSERT INTO location (private, name, address, lat, lon) VALUES (True, 'home', 'Capitol Hill, Seattle, WA', 47.622715, -122.312894);
INSERT INTO location (private, name, address, lat, lon) VALUES (True, 'home', 'Everett, WA', 48.006060, -122.194113);
INSERT INTO location (private, name, address, lat, lon) VALUES (True, 'work', '111 S Jackson St, Seattle, WA', 47.599088, -122.333812);
INSERT INTO location (private, name, address, lat, lon) VALUES (True, 'home', '1605 125th Ave SE, Bellevue, WA', 47.597090, -122.174046);
INSERT INTO location (private, name, address, lat, lon) VALUES (True, 'home', '209 Kirkland Ave, Kirkland, WA', 47.675428, -122.204621);
INSERT INTO location (private, name, address, lat, lon) VALUES (True, 'home', '3920 Stone Way N, Seattle, WA', 47.654834, -122.342156);
INSERT INTO location (private, name, address, lat, lon) VALUES (True, 'home', '912 Dexter Ave N, Seattle, WA', 47.627612, -122.342087);
INSERT INTO location (private, name, address, lat, lon) VALUES (False, 'Lake Dorothy Trailhead','Lake Dorothy Trailhead',47.608468,-121.38611);
INSERT INTO location (private, name, address, lat, lon) VALUES (False, 'Tonga Ridge Trailhead','Tonga Ridge Trailhead',47.677198,-121.263683);
INSERT INTO location (private, name, address, lat, lon) VALUES (False, 'Pioneer Camp Trailhead','Pioneer Camp Trailhead',48.679725,-121.897202);
INSERT INTO location (private, name, address, lat, lon) VALUES (False, 'Turtleback Mountain South Trailhead','Turtleback Mountain South Trailhead',48.641083,-122.977286);
INSERT INTO location (private, name, address, lat, lon) VALUES (False, 'Orcas Island Eclipse Charters','Orcas Island Eclipse Charters',48.60493,-122.943223);
INSERT INTO location (private, name, address, lat, lon) VALUES (False, 'Stevens Pass','Stevens Pass',47.744331,-121.090034);
INSERT INTO location (private, name, address, lat, lon) VALUES (False, 'Peshastin Pinnacles State Park','Peshastin Pinnacles State Park',47.550326,-120.589054);
INSERT INTO location (private, name, address, lat, lon) VALUES (False, 'Steamboat Rock State Park','Steamboat Rock State Park',47.861185,-119.027663);
INSERT INTO location (private, name, address, lat, lon) VALUES (False, 'Duthie Hill Park','Duthie Hill Park',47.574604,-121.9798);
INSERT INTO location (private, name, address, lat, lon) VALUES (False, 'Freund Canyon Trailhead','Freund Canyon Trailhead',47.627333,-120.656184);
INSERT INTO location (private, name, address, lat, lon) VALUES (False, 'Portland','Portland',45.518781,-122.644819);

INSERT INTO location_category (location_id, category_id) VALUES (1, 1);
INSERT INTO location_category (location_id, category_id) VALUES (1, 3);
INSERT INTO location_category (location_id, category_id) VALUES (1, 4);
INSERT INTO location_category (location_id, category_id) VALUES (1, 5);
INSERT INTO location_category (location_id, category_id) VALUES (1, 6);
INSERT INTO location_category (location_id, category_id) VALUES (2, 1);
INSERT INTO location_category (location_id, category_id) VALUES (3, 8);
INSERT INTO location_category (location_id, category_id) VALUES (12, 1);
INSERT INTO location_category (location_id, category_id) VALUES (13, 1);
INSERT INTO location_category (location_id, category_id) VALUES (14, 1);
INSERT INTO location_category (location_id, category_id) VALUES (15, 1);
INSERT INTO location_category (location_id, category_id) VALUES (16, 9);
INSERT INTO location_category (location_id, category_id) VALUES (17, 1);
INSERT INTO location_category (location_id, category_id) VALUES (17, 3);
INSERT INTO location_category (location_id, category_id) VALUES (17, 4);
INSERT INTO location_category (location_id, category_id) VALUES (17, 5);
INSERT INTO location_category (location_id, category_id) VALUES (17, 6);
INSERT INTO location_category (location_id, category_id) VALUES (18, 2);
INSERT INTO location_category (location_id, category_id) VALUES (19, 2);
INSERT INTO location_category (location_id, category_id) VALUES (20, 3);
INSERT INTO location_category (location_id, category_id) VALUES (21, 3);
INSERT INTO location_category (location_id, category_id) VALUES (22, 8);

INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (1, 4, 'home', True); 
INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (2, 5, 'home', True); 
INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (3, 6, 'home', True); 
INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (2, 7, 'work', False); 
INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (4, 8, 'home', True); 
INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (5, 9, 'home', True); 
INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (6, 10, 'home', True); 
INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (7, 11, 'home', True); 

INSERT INTO trip (name, start_time, end_time, description, dogs_ok, committed, completed, active) VALUES ('Whistler', '2016-05-28 09:00:00', '2016-05-28 17:00:00', '', True, False, False, True)
INSERT INTO trip (name, start_time, end_time, description, dogs_ok, committed, completed, active) VALUES ('Hike Mount Si!', '2016-05-28 10:00:00', '2016-05-28 18:00:00', '', True, False, False, True)
INSERT INTO trip (name, start_time, end_time, description, dogs_ok, committed, completed, active) VALUES ('Whistler', '2016-05-28 07:00:00', '2016-05-29 18:00:00', '', True, False, False, True)
INSERT INTO trip (name, start_time, end_time, description, dogs_ok, committed, completed, active) VALUES ('skiing at stevens', '2016-05-29 06:00:00', '2016-05-29 19:00:00', '', False, False, False, True)

INSERT INTO trip_stop

