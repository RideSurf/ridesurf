-- some fake data to populate database


\c ridesurf

INSERT INTO profile (username, firstname, lastname, email, car_type) VALUES ('jen', 'Jen', 'Doe', 'jen@ridesurf.co', '2012 Red Prius');
INSERT INTO profile (username, firstname, lastname, email, car_type) VALUES ('steve', 'Steve', 'Q', 'steve@ridesurf.co', null);
INSERT INTO profile (username, firstname, lastname, email, car_type) VALUES ('kat', 'Kat', 'NiCarthy', 'ket@ridesurf.co', null);

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

INSERT INTO location_category (location_id, category_id) VALUES (1, 1);
INSERT INTO location_category (location_id, category_id) VALUES (1, 3);
INSERT INTO location_category (location_id, category_id) VALUES (1, 4);
INSERT INTO location_category (location_id, category_id) VALUES (1, 5);
INSERT INTO location_category (location_id, category_id) VALUES (1, 6);
INSERT INTO location_category (location_id, category_id) VALUES (2, 1);
INSERT INTO location_category (location_id, category_id) VALUES (3, 8);

