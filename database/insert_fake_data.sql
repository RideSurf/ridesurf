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


INSERT INTO location_category (location_id, category_id) VALUES (1, 1);
INSERT INTO location_category (location_id, category_id) VALUES (1, 3);
INSERT INTO location_category (location_id, category_id) VALUES (1, 4);
INSERT INTO location_category (location_id, category_id) VALUES (1, 5);
INSERT INTO location_category (location_id, category_id) VALUES (1, 6);
INSERT INTO location_category (location_id, category_id) VALUES (2, 1);
INSERT INTO location_category (location_id, category_id) VALUES (3, 8);

INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (1, 4, 'home', 1); 
INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (2, 5, 'home', 1); 
INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (3, 6, 'home', 1); 
INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (2, 7, 'work', 0); 
INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (4, 8, 'home', 1); 
INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (5, 9, 'home', 1); 
INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (6, 10, 'home', 1); 
INSERT INTO profile_location (profile_id, location_id, name, main) VALUES (7, 11, 'home', 1); 



