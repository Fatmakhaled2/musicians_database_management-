-- Create the Musician table
CREATE TABLE Musician (
    M_Id INT PRIMARY KEY,
    M_Name VARCHAR(100),
    Ph_Number VARCHAR(15),
    City VARCHAR(50),
    Street VARCHAR(50)
);

-- Create the Instrument table
CREATE TABLE Instrument (
    I_Name VARCHAR(50) PRIMARY KEY,
    I_Key VARCHAR(10)
);

-- Create the Album table
CREATE TABLE Album (
    A_Id INT PRIMARY KEY,
    Title VARCHAR(100),
    Date DATE,
    Mus_Id INT,
    FOREIGN KEY (Mus_Id) REFERENCES Musician(M_Id)
);

-- Create the Song table
CREATE TABLE Song (
    Title VARCHAR(100) PRIMARY KEY,
    Author VARCHAR(100)
);

-- Create the Album_song table
CREATE TABLE Album_song (
    Album_Id INT,
    Song_Title VARCHAR(100),
    PRIMARY KEY (Album_Id, Song_Title),
    FOREIGN KEY (Album_Id) REFERENCES Album(A_Id),
    FOREIGN KEY (Song_Title) REFERENCES Song(Title)
);

-- Create the Mus_song table
CREATE TABLE Mus_song (
    Mus_Id INT,
    Song_Title VARCHAR(100),
    PRIMARY KEY (Mus_Id, Song_Title),
    FOREIGN KEY (Mus_Id) REFERENCES Musician(M_Id),
    FOREIGN KEY (Song_Title) REFERENCES Song(Title)
);

-- Create the Mus_Instrument table
CREATE TABLE Mus_Instrument (
    Mus_Id INT,
    Inst_Name VARCHAR(50),
    PRIMARY KEY (Mus_Id, Inst_Name),
    FOREIGN KEY (Mus_Id) REFERENCES Musician(M_Id),
    FOREIGN KEY (Inst_Name) REFERENCES Instrument(I_Name)
);


-- Insert data into Musician table 
INSERT INTO Musician (M_Id, M_Name, Ph_Number, City, Street) VALUES
(1, 'John Doe', '1234567890', 'New York', '5th Avenue'),
(2, 'Jane Smith', '0987654321', 'Los Angeles', 'Sunset Boulevard'),
(3, 'Michael Brown', '1112223333', 'Chicago', 'Lake Shore Drive'),
(4, 'Emily Davis', '4445556666', 'Houston', 'Main Street'),
(5, 'Chris Wilson', '7778889999', 'Phoenix', 'Roosevelt Street'),
(6, 'Sarah Taylor', '8887776666', 'San Diego', 'Pacific Beach'),
(7, 'David Johnson', '9998887777', 'Dallas', 'Elm Street'),
(8, 'Sophia Lee', '6665554444', 'San Francisco', 'Golden Gate Avenue'),
(9, 'James Anderson', '5554443333', 'Miami', 'Ocean Drive'),
(10, 'Olivia Martinez', '2223334444', 'Orlando', 'Lake Eola Heights'),
(11, 'Ethan Harris', '1212121212', 'Denver', 'Cherry Creek'),
(12, 'Isabella King', '1313131313', 'Seattle', 'Broadway'),
(13, 'Matthew Clark', '1414141414', 'Boston', 'Beacon Hill'),
(14, 'Ava Lewis', '1515151515', 'Austin', '6th Street'),
(15, 'Daniel Walker', '1616161616', 'Atlanta', 'Peachtree Street'),
(16, 'Mia Allen', '1717171717', 'Las Vegas', 'The Strip'),
(17, 'Henry Young', '1818181818', 'Detroit', 'Woodward Avenue'),
(18, 'Charlotte Hall', '1919191919', 'Nashville', 'Music Row'),
(19, 'Lucas Scott', '2020202020', 'Portland', 'Pearl District'),
(20, 'Amelia Carter', '2121212121', 'Minneapolis', 'Nicollet Mall'),
(21, 'Jack Wright', '2222222222', 'Philadelphia', 'Market Street'),
(22, 'Ella Adams', '2323232323', 'Kansas City', 'Country Club Plaza'),
(23, 'Logan Baker', '2424242424', 'Tampa', 'Bayshore Boulevard'),
(24, 'Zoe Campbell', '2525252525', 'Charlotte', 'South End'),
(25, 'Alexander Perez', '2626262626', 'Columbus', 'German Village'),
(26, 'Grace Nelson', '2727272727', 'Cincinnati', 'Over-the-Rhine'),
(27, 'Sebastian Brooks', '2828282828', 'Indianapolis', 'Mass Ave'),
(28, 'Lily Howard', '2929292929', 'Oklahoma City', 'Bricktown'),
(29, 'Benjamin Torres', '3030303030', 'New Orleans', 'French Quarter'),
(30, 'Emily Ramirez', '3131313131', 'Sacramento', 'Midtown'),
(31, 'Mason Hughes', '3232323232', 'Salt Lake City', 'Sugar House'),
(32, 'Harper Flores', '3333333333', 'San Antonio', 'The Pearl'),
(33, 'Elijah Peterson', '3434343434', 'St. Louis', 'The Hill'),
(34, 'Chloe Gray', '3535353535', 'Pittsburgh', 'Shadyside'),
(35, 'Oliver Cooper', '3636363636', 'Baltimore', 'Inner Harbor'),
(36, 'Avery Morris', '3737373737', 'Milwaukee', 'Third Ward'),
(37, 'Liam Bell', '3838383838', 'Memphis', 'Beale Street'),
(38, 'Sophia Richardson', '3939393939', 'Raleigh', 'North Hills'),
(39, 'Noah Reed', '4040404040', 'Richmond', 'Shockoe Slip'),
(40, 'Emma Johnson', '4141414141', 'Seattle', 'Capitol Hill');

-- Insert data into Instrument table 
INSERT INTO Instrument (I_Name, I_Key) VALUES
('Guitar', 'C'),
('Piano', 'D'),
('Drums', 'E'),
('Violin', 'F'),
('Flute', 'G'),
('Cello', 'A'),
('Clarinet', 'Bb'),
('Saxophone', 'Eb'),
('Trumpet', 'Bb'),
('Trombone', 'C'),
('Bass Guitar', 'E'),
('Keyboard', 'F#'),
('Oboe', 'D'),
('Harp', 'C'),
('Accordion', 'G'),
('French Horn', 'F'),
('Mandolin', 'G'),
('Banjo', 'D'),
('Ukulele', 'A'),
('Tuba', 'Bb'),
('Piccolo', 'D'),
('Synthesizer', 'C'),
('Bagpipes', 'G'),
('Bassoon', 'F'),
('Djembe', 'E'),
('Bongo', 'C'),
('Tabla', 'F'),
('Tambourine', 'G'),
('Harmonica', 'C'),
('Lute', 'A'),
('Maracas', 'Bb'),
('Sitar', 'D'),
('Zither', 'F'),
('Lyre', 'C'),
('Koto', 'D'),
('Balalaika', 'G'),
('Didgeridoo', 'A'),
('Steel Drum', 'F'),
('Triangle', 'E'),
('Kalimba', 'C');

INSERT INTO Song (Title, Author) VALUES
('Dreams of Harmony', 'John Doe'),
('Echoes of the Past', 'Jane Smith'),
('Melody of Life', 'Michael Brown'),
('Whispers in the Wind', 'Emily Davis'),
('Rhythm of the Night', 'Chris Wilson'),
('Serenade of Stars', 'Sarah Taylor'),
('Symphony of Love', 'David Johnson'),
('Chasing Shadows', 'Sophia Lee'),
('Ballad of Hope', 'James Anderson'),
('Rhapsody in Blue', 'Olivia Martinez'),
('Lullaby of Peace', 'Ethan Harris'),
('Sonata of Solitude', 'Isabella King'),
('Ode to Joy', 'Matthew Clark'),
('Nocturne of Dreams', 'Ava Lewis'),
('Prelude to Tomorrow', 'Daniel Walker'),
('Harmony in Chaos', 'Mia Allen'),
('Cadence of Time', 'Henry Young'),
('Elegy for the Lost', 'Charlotte Hall'),
('Reverie of Light', 'Lucas Scott'),
('Interlude of Silence', 'Amelia Carter'),
('Fusion of Worlds', 'Jack Wright'),
('Aria of Freedom', 'Ella Adams'),
('Waltz of Eternity', 'Logan Baker'),
('Fantasy of Fire', 'Zoe Campbell'),
('Chords of Fate', 'Alexander Perez'),
('Requiem of Souls', 'Grace Nelson'),
('Cantata of Stars', 'Sebastian Brooks'),
('Minuet of Memories', 'Lily Howard'),
('Psalms of the Earth', 'Benjamin Torres'),
('Echo of Eternity', 'Emily Ramirez'),
('Harmony of Seasons', 'Mason Hughes'),
('Virtuoso', 'Harper Flores'),
('Improvisation', 'Elijah Peterson'),
('Crescendo', 'Chloe Gray'),
('Tempo of Destiny', 'Oliver Cooper'),
('Vibrations', 'Avery Morris'),
('Pulse of the Universe', 'Liam Bell'),
('Dynamics of Love', 'Sophia Richardson'),
('Rhythms of the Soul', 'Noah Reed'),
('Ballad of Freedom', 'Emma Johnson');


INSERT INTO Album_song (Album_Id, Song_Title) VALUES
(1, 'Dreams of Harmony'),
(2, 'Echoes of the Past'),
(3, 'Melody of Life'),
(4, 'Whispers in the Wind'),
(5, 'Rhythm of the Night'),
(6, 'Serenade of Stars'),
(7, 'Symphony of Love'),
(8, 'Chasing Shadows'),
(9, 'Ballad of Hope'),
(10, 'Rhapsody in Blue'),
(11, 'Lullaby of Peace'),
(12, 'Sonata of Solitude'),
(13, 'Ode to Joy'),
(14, 'Nocturne of Dreams'),
(15, 'Prelude to Tomorrow'),
(16, 'Harmony in Chaos'),
(17, 'Cadence of Time'),
(18, 'Elegy for the Lost'),
(19, 'Reverie of Light'),
(20, 'Interlude of Silence'),
(21, 'Fusion of Worlds'),
(22, 'Aria of Freedom'),
(23, 'Waltz of Eternity'),
(24, 'Fantasy of Fire'),
(25, 'Chords of Fate'),
(26, 'Requiem of Souls'),
(27, 'Cantata of Stars'),
(28, 'Minuet of Memories'),
(29, 'Psalms of the Earth'),
(30, 'Echo of Eternity'),
(31, 'Harmony of Seasons'),
(32, 'Virtuoso'),
(33, 'Improvisation'),
(34, 'Crescendo'),
(35, 'Tempo of Destiny'),
(36, 'Vibrations'),
(37, 'Pulse of the Universe'),
(38, 'Dynamics of Love'),
(39, 'Rhythms of the Soul'),
(40, 'Ballad of Freedom');


INSERT INTO Mus_song (Mus_Id, Song_Title) VALUES
(1, 'Dreams of Harmony'),
(2, 'Echoes of the Past'),
(3, 'Melody of Life'),
(4, 'Whispers in the Wind'),
(5, 'Rhythm of the Night'),
(6, 'Serenade of Stars'),
(7, 'Symphony of Love'),
(8, 'Chasing Shadows'),
(9, 'Ballad of Hope'),
(10, 'Rhapsody in Blue'),
(1, 'Lullaby of Peace'),
(2, 'Sonata of Solitude'),
(3, 'Ode to Joy'),
(4, 'Nocturne of Dreams'),
(5, 'Prelude to Tomorrow'),
(6, 'Harmony in Chaos'),
(7, 'Cadence of Time'),
(8, 'Elegy for the Lost'),
(9, 'Reverie of Light'),
(10, 'Interlude of Silence'),
(11, 'Fusion of Worlds'),
(12, 'Aria of Freedom'),
(13, 'Waltz of Eternity'),
(14, 'Fantasy of Fire'),
(15, 'Chords of Fate'),
(16, 'Requiem of Souls'),
(17, 'Cantata of Stars'),
(18, 'Minuet of Memories'),
(19, 'Psalms of the Earth'),
(20, 'Echo of Eternity'),
(21, 'Harmony of Seasons'),
(22, 'Virtuoso'),
(23, 'Improvisation'),
(24, 'Crescendo'),
(25, 'Tempo of Destiny'),
(26, 'Vibrations'),
(27, 'Pulse of the Universe'),
(28, 'Dynamics of Love'),
(29, 'Rhythms of the Soul'),
(30, 'Ballad of Freedom');


INSERT INTO Mus_Instrument (Mus_Id, Inst_Name) VALUES
(1, 'Guitar'),
(2, 'Piano'),
(3, 'Drums'),
(4, 'Violin'),
(5, 'Flute'),
(6, 'Cello'),
(7, 'Clarinet'),
(8, 'Saxophone'),
(9, 'Trumpet'),
(10, 'Trombone'),
(11, 'Bass Guitar'),
(12, 'Keyboard'),
(13, 'Oboe'),
(14, 'Harp'),
(15, 'Accordion'),
(16, 'French Horn'),
(17, 'Mandolin'),
(18, 'Banjo'),
(19, 'Ukulele'),
(20, 'Tuba'),
(21, 'Piccolo'),
(22, 'Synthesizer'),
(23, 'Bagpipes'),
(24, 'Bassoon'),
(25, 'Djembe'),
(26, 'Bongo'),
(27, 'Tabla'),
(28, 'Tambourine'),
(29, 'Harmonica'),
(30, 'Lute'),
(31, 'Maracas'),
(32, 'Sitar'),
(33, 'Zither'),
(34, 'Lyre'),
(35, 'Koto'),
(36, 'Balalaika'),
(37, 'Didgeridoo'),
(38, 'Steel Drum'),
(39, 'Triangle'),
(40, 'Kalimba');

INSERT INTO Album (A_Id, Title, Date, Mus_Id) VALUES
(1, 'Echoes of Eternity', '2022-01-15', 1),
(2, 'Dreamscapes', '2021-12-10', 2),
(3, 'Whispers of Time', '2023-05-20', 3),
(4, 'Rhythms of the Heart', '2023-03-14', 4),
(5, 'Melody Chronicles', '2022-07-18', 5),
(6, 'Harmony Horizons', '2022-11-05', 6),
(7, 'Cadence of Dreams', '2021-09-28', 7),
(8, 'Ballads of Freedom', '2023-02-22', 8),
(9, 'Rhapsody Realms', '2021-06-12', 9),
(10, 'Symphony Saga', '2023-04-09', 10),
(11, 'Serenade Skies', '2022-08-15', 11),
(12, 'Prelude to Harmony', '2021-10-25', 12),
(13, 'Ode to Serenity', '2023-01-19', 13),
(14, 'Lullabies of Light', '2022-04-11', 14),
(15, 'Waltz of the Stars', '2023-06-30', 15),
(16, 'Sonatas of Peace', '2021-11-09', 16),
(17, 'Fantasy Echoes', '2022-09-14', 17),
(18, 'Aria of the Soul', '2023-03-05', 18),
(19, 'Nocturne Nights', '2022-05-18', 19),
(20, 'Chords of Eternity', '2021-07-23', 20),
(21, 'Virtuoso Visions', '2022-03-12', 21),
(22, 'Improvised Realms', '2023-01-28', 22),
(23, 'Crescendo Horizons', '2021-10-15', 23),
(24, 'Tempo Tales', '2022-02-20', 24),
(25, 'Vibrations Unveiled', '2023-06-10', 25),
(26, 'Pulse of Passion', '2022-04-28', 26),
(27, 'Dynamics of Destiny', '2021-12-22', 27),
(28, 'Fusion Fields', '2022-07-19', 28),
(29, 'Reverie Realms', '2023-05-25', 29),
(30, 'Minuet of Memories', '2022-01-31', 30),
(31, 'Elegy of Eternity', '2021-09-13', 31),
(32, 'Serenity Symphony', '2023-02-17', 32),
(33, 'Psalms of the Past', '2022-03-09', 33),
(34, 'Cantata Chronicles', '2023-04-03', 34),
(35, 'Improvisation Nation', '2022-06-01', 35),
(36, 'Rhapsody of Time', '2021-08-19', 36),
(37, 'Fantasy Frontiers', '2022-10-11', 37),
(38, 'Ballad of the Stars', '2023-01-06', 38),
(39, 'Aria of Fire', '2022-09-03', 39),
(40, 'Waltz of Eternity', '2023-07-14', 40);




-- Select all columns from the Musician table
SELECT * FROM Musician;


-- Retrieve all albums and the associated musician names
SELECT Album.Title AS Album_Title, Musician.M_Name AS Musician_Name
FROM Album
-- Join the Album table with the Musician table on the musician ID
JOIN Musician ON Album.Mus_Id = Musician.M_Id;



-- Retrieve all songs in the album with ID = 1
SELECT Song.Title AS Song_Title
FROM Song
-- Join Song table with Album_song table to associate songs with albums
JOIN Album_song ON Song.Title = Album_song.Song_Title
WHERE Album_song.Album_Id = 1;


-- Retrieve musicians and the instruments they play
SELECT Musician.M_Name, Instrument.I_Name
FROM Musician
-- Join Musician table with Mus_Instrument table to associate musicians with instruments
JOIN Mus_Instrument ON Musician.M_Id = Mus_Instrument.Mus_Id
-- Join Instrument table to get instrument names
JOIN Instrument ON Mus_Instrument.Inst_Name = Instrument.I_Name;


-- Count the number of songs for each album
SELECT Album.Title, COUNT(Album_song.Song_Title) AS Number_Of_Songs
FROM Album
-- Join Album table with Album_song table to associate albums with their songs
JOIN Album_song ON Album.A_Id = Album_song.Album_Id
-- Group by album title to get the count of songs per album
GROUP BY Album.Title;


-- Retrieve musicians who play the 'Guitar' instrument
SELECT Musician.M_Name
FROM Musician
-- Join Mus_Instrument table to associate musicians with instruments
JOIN Mus_Instrument ON Musician.M_Id = Mus_Instrument.Mus_Id
WHERE Mus_Instrument.Inst_Name = 'Guitar';



-- Retrieve all songs played by musician with ID = 1
SELECT Song.Title
FROM Song
-- Join Mus_song table to associate songs with musicians
JOIN Mus_song ON Song.Title = Mus_song.Song_Title
WHERE Mus_song.Mus_Id = 1;



-- Insert a new song into the Song table
INSERT INTO Song (Title, Author) VALUES ('Song of the Future', 'John Doe');
-- Insert the new song into Album_song table, associating it with album ID 5
INSERT INTO Album_song (Album_Id, Song_Title) VALUES (5, 'Song of the Future');



-- Update the phone number of the musician with ID = 1
UPDATE Musician
SET Ph_Number = '123-456-7890'
WHERE M_Id = 1;


-- Delete the song 'Echoes of the Past' from the album with ID = 2
DELETE FROM Album_song
WHERE Album_Id = 2 AND Song_Title = 'Echoes of the Past';


-- Retrieve albums that contain more than 5 songs
SELECT Album.Title
FROM Album
-- Join Album_song to count the number of songs in each album
JOIN Album_song ON Album.A_Id = Album_song.Album_Id
GROUP BY Album.Title
-- Filter to only show albums with more than 5 songs
HAVING COUNT(Album_song.Song_Title) > 5;


-- Count the number of albums each musician has released
SELECT Musician.M_Name, COUNT(Album.A_Id) AS Number_Of_Albums
FROM Musician
JOIN Album ON Musician.M_Id = Album.Mus_Id
GROUP BY Musician.M_Name;

-- Retrieve musicians who play more than 3 instruments
SELECT Musician.M_Name
FROM Musician
JOIN Mus_Instrument ON Musician.M_Id = Mus_Instrument.Mus_Id
GROUP BY Musician.M_Name
-- Filter to only include musicians who play more than 3 instruments
HAVING COUNT(Mus_Instrument.Inst_Name) > 3;

-- Retrieve songs from albums released after January 1st, 2022
SELECT Song.Title, Album.Title AS Album_Title, Album.Date
FROM Song
JOIN Album_song ON Song.Title = Album_song.Song_Title
JOIN Album ON Album_song.Album_Id = Album.A_Id
WHERE Album.Date > '2022-01-01';



-- Retrieve the album with the highest number of songs
SELECT Album.Title, COUNT(Album_song.Song_Title) AS Number_Of_Songs
FROM Album
JOIN Album_song ON Album.A_Id = Album_song.Album_Id
GROUP BY Album.Title
-- Order by the number of songs in descending order to find the album with the most songs
ORDER BY Number_Of_Songs DESC;


-- Retrieve the most recent album released by 'John Smith' (replace with actual musician name)
SELECT TOP 1 Album.Title, Album.Date
FROM Album
JOIN Musician ON Album.Mus_Id = Musician.M_Id
WHERE Musician.M_Name = 'John Smith'  -- Replace with actual musician name
ORDER BY Album.Date DESC;
