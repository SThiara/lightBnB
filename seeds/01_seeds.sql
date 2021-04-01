DELETE FROM users;
DELETE FROM properties;
DELETE FROM reservations;
DELETE FROM property_reviews;

INSERT INTO users (name, email, password) VALUES
('Gary Sanchez', 'gary@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Bamshi Krishna', 'bamshi@outlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Flores MacKenzie', 'flores@ubc.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, 
parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) VALUES
(1, 'corner house', 'description', 'thumbnail url', 'cover url', 50, 2, 2, 2, 'Canada', 'Nanaimo Street', 'Vancouver', 'B.C.', 'V3O4A9', TRUE),
(1, 'side house', 'description', 'thumbnail url', 'cover url', 40, 2, 2, 2, 'Canada', 'Victoria Street', 'Vancouver', 'B.C.', 'V3O6A9', TRUE),
(3, 'street house', 'description', 'thumbnail url', 'cover url', 70, 2, 2, 2, 'Canada', 'Carnarvon Street', 'Vancouver', 'B.C.', 'V3O5A9', TRUE),
(2, 'gas house', 'description', 'thumbnail url', 'cover url', 10, 2, 2, 2, 'Canada', 'Macdonald Street', 'Vancouver', 'B.C.', 'V3O1A9', TRUE);

INSERT INTO reservations (start_date, end_date, property_id, guest_id) VALUES 
(TO_DATE('2019-09-08', 'YYYY-MM-DD'), TO_DATE('2020-01-01', 'YYYY-MM-DD'), 2, 1),
(TO_DATE('2018-09-08', 'YYYY-MM-DD'), TO_DATE('2019-01-01', 'YYYY-MM-DD'), 2, 3),
(TO_DATE('2020-09-08', 'YYYY-MM-DD'), TO_DATE('2021-01-01', 'YYYY-MM-DD'), 2, 2);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message) VALUES 
(1, 2, 1, 5, 'I would rate this higher if I could! I liked how the toilet was in the kitchen, very convenient!'),
(3, 2, 2, 5, 'loved the stay! The smell of gasoline really energized me!'),
(2, 2, 3, 1, 'this place sucks, how is anyone renting this from me');