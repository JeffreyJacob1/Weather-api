
-- Creating the Weather table
CREATE TABLE `weather_weather` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `city_name` VARCHAR(200) NOT NULL,
    `temperature` FLOAT NOT NULL,
    `humidity` FLOAT NOT NULL,
    `description` TEXT NOT NULL,
    `timestamp` DATETIME NOT NULL
);

-- Sample Insert Statement
-- INSERT INTO `weather_weather` (`city_name`, `temperature`, `humidity`, `description`, `timestamp`)
-- VALUES ('New York', 22.5, 65, 'Clear sky', NOW());

-- Sample Query Statement
-- SELECT * FROM `weather_weather` WHERE `city_name` = 'New York' ORDER BY `timestamp` DESC LIMIT 1;

-- Sample Update Statement
-- UPDATE `weather_weather` SET `temperature` = 23.0, `humidity` = 60 WHERE `city_name` = 'New York';

-- Sample Delete Statement
-- DELETE FROM `weather_weather` WHERE `city_name` = 'New York';
