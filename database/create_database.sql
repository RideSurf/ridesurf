-- Database creation script
-- 

--DROP DATABASE ridesurf;
CREATE DATABASE ridesurf;

\c ridesurf

CREATE TABLE profile (
    id serial,
    username varchar not null,
    firstname varchar not null,
    lastname varchar not null,
    email varchar not null,
    car_type varchar
);

CREATE TABLE profile_review (
    reviewer_id integer not null,
    reviewee_id integer not null,
    rating integer not null,
    description text
);

CREATE TABLE category (
    id serial,
    name varchar not null
);

CREATE TABLE profile_category (
    profile_id integer not null,
    category_id integer not null
);

CREATE TABLE trip (
    id serial,
    name varchar, -- human-readable, non-unique name
    start_time timestamp,
    end_time timestamp,
    committed boolean, -- true if driver committed
    completed boolean, -- true if people went on trip, for DS purposes
    active boolean -- false if canceled or completed
);

CREATE TABLE trip_member (
    trip_id integer not null,
    profile_id integer not null
    -- do we specify driver here or in trip?
);

CREATE TABLE trip_stops (
    trip_id integer not null,
    location_id integer not null,
    position integer not null -- 0 for start, 1 for first stop, ... maybe -1 for end?
);

CREATE TABLE location (
    id serial,
    private boolean not null,
    name varchar not null,
    address varchar not null,
    lat real,
    lon real
);

CREATE TABLE location_category (
    location_id integer,
    category_id integer
);

-- reviewing location also serves the purpose as marking it as a favorite
CREATE TABLE location_review (
    reviewer_id integer not null,
    location_id integer not null,
    rating integer not null,
    description text
);

CREATE TABLE profile_location (
    profile_id integer not null,
    location_id integer not null,
    name varchar not null, -- e.g., 'home', 'work'
    main boolean not null -- main locations are listed first
);

INSERT INTO category (name) VALUES ('hiking');
INSERT INTO category (name) VALUES ('climbing');
INSERT INTO category (name) VALUES ('mountain biking');
INSERT INTO category (name) VALUES ('skiing');
INSERT INTO category (name) VALUES ('snowboarding');
INSERT INTO category (name) VALUES ('snowshoeing');
INSERT INTO category (name) VALUES ('surfing');
INSERT INTO category (name) VALUES ('urbaneering');

