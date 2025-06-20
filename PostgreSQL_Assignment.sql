-- Active: 1749552768796@@127.0.0.1@5432

-- Problem 1
INSERT INTO rangers (name, region) VALUES ('Derek Fox', 'Coastal Plains');

-- Problem 2
SELECT COUNT(DISTINCT species_id) AS unique_species_count
FROM sightings;

-- Problem 3
SELECT sighting_id, species_id, ranger_id, location, sighting_time, notes
FROM sightings
WHERE location LIKE '%Pass%';

-- Problem 4
SELECT r.name, COUNT(s.sighting_id) AS total_sightings
FROM rangers r
LEFT JOIN sightings s ON r.ranger_id = s.ranger_id
GROUP BY r.ranger_id, r.name
ORDER BY r.name;

-- Problem 5
SELECT sp.common_name
FROM species sp
LEFT JOIN sightings s ON sp.species_id = s.species_id
WHERE s.species_id IS NULL;

-- Problem 6
SELECT sp.common_name, s.sighting_time, r.name
FROM sightings s
JOIN species sp ON s.species_id = sp.species_id
JOIN rangers r ON s.ranger_id = r.ranger_id
ORDER BY s.sighting_time DESC
LIMIT 2;

-- Problem 7
UPDATE species
SET conservation_status = 'Historic'
WHERE EXTRACT(YEAR FROM discovery_date) < 1800;

-- Problem 8
SELECT 
    sighting_id,
    CASE 
        WHEN EXTRACT(HOUR FROM sighting_time) < 12 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM sighting_time) >= 12 AND EXTRACT(HOUR FROM sighting_time) < 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS time_of_day
FROM sightings
ORDER BY sighting_id;

-- Problem 9
DELETE FROM rangers
WHERE ranger_id NOT IN (
    SELECT DISTINCT ranger_id 
    FROM sightings
); 