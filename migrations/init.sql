-- Create the users database

CREATE DATABASE IF NOT EXISTS mydatabase;

-- Use the users database

USE mydatabase;

-- Create the users table

CREATE TABLE
    IF NOT EXISTS users (
        id INT AUTO_INCREMENT PRIMARY KEY,
        wallet_id VARCHAR(36) NOT NULL,
        email VARCHAR(255) NOT NULL,
        name VARCHAR(50) NOT NULL,
        last_name VARCHAR(50) NOT NULL,
        sex_type VARCHAR(10) NOT NULL,
        dni VARCHAR(20) NOT NULL,
        birth_date VARCHAR(30) NOT NULL,
        created_at VARCHAR(30) NOT NULL
    );

-- Insert data into the users table

INSERT INTO
    users (
        wallet_id,
        email,
        name,
        last_name,
        sex_type,
        dni,
        birth_date,
        created_at
    )

VALUES (
        "1ac4d760-c1c8-49ab-a209-d34d476dc5b6",
        "Sarina_Huel@yahoo.com",
        "Amparo",
        "Kozey",
        "female",
        "82225347",
        "1979-02-10T14:23:03.410Z",
        "2022-09-29T01:27:52.320Z"
    ), (
        "98917d00-9c5b-4642-abf5-5b7c99c7c2ed",
        "Tanya99@yahoo.com",
        "Ken",
        "Conn",
        "female",
        "70625180",
        "2003-07-08T12:20:36.833Z",
        "2023-05-11T15:26:58.090Z"
    ), (
        "7aac4624-c9d0-4ed0-aceb-6babd8dceb66",
        "Sierra_Jacobson54@yahoo.com",
        "Luna",
        "Ruecker",
        "female",
        "19046890",
        "1980-03-12T14:24:24.209Z",
        "2022-09-24T23:06:00.336Z"
    ), (
        "4cdc85d4-ddb4-4575-bb22-d97ad4fa2466",
        "Sandy.OKon@gmail.com",
        "Jimmy",
        "Torp-Vandervort",
        "male",
        "49508847",
        "1944-07-30T15:02:05.276Z",
        "2022-08-14T18:26:09.653Z"
    ), (
        "1762144a-2e1c-4902-99ef-85719e6afeae",
        "Luz_Wiza12@hotmail.com",
        "Eryn",
        "Boyle",
        "female",
        "57583168",
        "1965-12-20T03:54:02.129Z",
        "2023-06-13T06:50:48.410Z"
    ), (
        "03c82ec7-419e-49a5-9982-74c4cb089430",
        "Marjory.Runolfsdottir0@hotmail.com",
        "Leslie",
        "Bode",
        "male",
        "50438857",
        "1962-04-16T17:44:52.889Z",
        "2022-12-14T04:39:22.008Z"
    ), (
        "356173cd-89f2-4c90-b072-2e30bf2f2ee0",
        "Lavonne3@yahoo.com",
        "Carter",
        "McClure",
        "male",
        "49660659",
        "1973-11-19T01:17:19.178Z",
        "2023-03-19T09:20:27.657Z"
    ), (
        "ffd155ed-2753-4834-94b7-26390421eb4b",
        "Leonel84@gmail.com",
        "Letha",
        "Jast",
        "male",
        "85654400",
        "1976-02-04T23:14:43.083Z",
        "2022-10-08T01:53:30.184Z"
    ), (
        "66c79e23-e29f-452c-8bb2-c73be2b84b76",
        "Sheridan14@yahoo.com",
        "Zelda",
        "Ruecker",
        "male",
        "44341384",
        "2005-05-25T02:38:47.867Z",
        "2022-07-06T05:40:40.828Z"
    ), (
        "7b989385-555b-4d99-89b2-8f23eb1020e7",
        "Rhea_Waters@hotmail.com",
        "Nathaniel",
        "Legros",
        "male",
        "13283407",
        "1987-06-02T13:30:49.942Z",
        "2022-10-16T16:22:07.441Z"
    ), (
        "fdfd8c66-fe92-40eb-a81b-410887fb466b",
        "Lou_Gislason@yahoo.com",
        "Marguerite",
        "West-Ruecker",
        "male",
        "25157236",
        "1956-03-07T12:02:15.594Z",
        "2022-10-02T09:56:20.097Z"
    ), (
        "a922c559-5222-4bf2-87ce-11871eaf3ffe",
        "Elijah.Moen@hotmail.com",
        "Tomas",
        "Torphy",
        "female",
        "50331816",
        "1966-12-25T09:53:18.912Z",
        "2023-01-29T23:05:42.651Z"
    ), (
        "b2bee76a-58a3-441c-95bf-fea1b882cfab",
        "Presley.Lemke88@hotmail.com",
        "Missouri",
        "Little",
        "male",
        "26027174",
        "1993-03-20T10:49:47.827Z",
        "2023-06-02T16:10:53.183Z"
    ), (
        "b68b301b-5eaf-4db9-a965-7ff8e0175753",
        "Lessie16@hotmail.com",
        "Jeffry",
        "Hahn",
        "female",
        "47351778",
        "2002-04-03T04:48:32.929Z",
        "2023-04-22T00:38:44.852Z"
    ), (
        "522f82e6-6477-461d-a85d-73931fdab266",
        "Lois_Jenkins@gmail.com",
        "Alia",
        "Jones",
        "female",
        "42629681",
        "1955-07-06T04:17:10.304Z",
        "2022-08-22T04:08:36.246Z"
    ), (
        "87c7b363-c4bc-4a27-b426-d31cbb4bb16c",
        "Norris_Berge-OKon@hotmail.com",
        "Leann",
        "Ryan",
        "male",
        "90580223",
        "2005-08-06T09:26:46.257Z",
        "2023-03-29T16:44:29.770Z"
    ), (
        "5ef2740a-44d1-4e19-8e68-749246ec211b",
        "Natalia.Stark14@gmail.com",
        "Benny",
        "Wehner",
        "female",
        "49870450",
        "2003-09-15T17:42:00.339Z",
        "2022-11-18T06:30:04.486Z"
    ), (
        "5e418870-dba4-43af-8ab0-c726bf3791cc",
        "Carlotta_Wolff37@gmail.com",
        "Tad",
        "McCullough",
        "male",
        "14939171",
        "1992-07-26T11:01:20.974Z",
        "2023-05-21T02:13:13.008Z"
    ), (
        "eaa6ebcf-26d0-40ea-8883-ffc11bf3b91f",
        "Beverly71@yahoo.com",
        "Brooks",
        "Murazik",
        "female",
        "76650014",
        "2005-01-20T23:36:22.847Z",
        "2022-06-16T04:37:57.100Z"
    ), (
        "d0d31df9-9b69-4549-864b-c4b8cf526298",
        "Johann_Johnston@yahoo.com",
        "Akeem",
        "Mitchell",
        "female",
        "55405127",
        "1970-09-20T23:33:01.361Z",
        "2023-01-30T02:45:30.939Z"
    ), (
        "b29d84fb-0fa6-4260-b39c-36a5abf3683b",
        "Lizeth40@yahoo.com",
        "Ola",
        "Wiegand",
        "male",
        "40632190",
        "2005-06-04T12:33:41.413Z",
        "2023-04-06T18:43:05.025Z"
    ), (
        "ad51a7f2-8b22-420e-a012-524b950f57c5",
        "Hilda_Dooley62@yahoo.com",
        "Cora",
        "Waelchi",
        "female",
        "36009485",
        "1954-06-15T13:05:05.192Z",
        "2023-03-14T18:12:53.541Z"
    ), (
        "5e915c1d-b92b-4bf8-9090-687b42b740f3",
        "Major12@hotmail.com",
        "Lia",
        "Wyman",
        "female",
        "84384619",
        "1947-07-05T02:46:31.266Z",
        "2022-11-13T09:20:46.269Z"
    ), (
        "bd6f0533-2edf-4bce-961f-bd244b42263b",
        "Maybell_Ruecker1@hotmail.com",
        "Ramona",
        "Wyman",
        "female",
        "46867021",
        "1980-05-16T16:19:48.035Z",
        "2022-09-22T12:30:09.361Z"
    ), (
        "b9704f0c-5345-479b-8a3d-4f167b1b5723",
        "Skylar81@hotmail.com",
        "Jamir",
        "Goldner",
        "male",
        "09244685",
        "1966-04-22T23:14:46.518Z",
        "2023-03-21T01:41:23.047Z"
    ), (
        "3892ffbe-b442-4e35-b26b-9ce5fe940456",
        "Romaine.Harvey69@gmail.com",
        "Greyson",
        "Berge",
        "female",
        "67226480",
        "1944-07-25T23:35:21.345Z",
        "2023-06-09T11:29:57.887Z"
    ), (
        "33ec6006-cb06-47f9-9011-cdce9fbb9143",
        "Callie.Auer@gmail.com",
        "Lola",
        "Sipes",
        "female",
        "88790340",
        "1977-11-22T10:43:44.161Z",
        "2022-07-23T08:13:08.020Z"
    ), (
        "4fedb160-d6cd-4c5f-baac-250cea7fb472",
        "Camron_Jacobson@hotmail.com",
        "Aylin",
        "Jast",
        "male",
        "93907330",
        "1949-11-26T20:53:12.973Z",
        "2022-07-09T07:03:00.908Z"
    ), (
        "213695c6-9e1c-42fc-8ce1-f8c2f4bfd77d",
        "Kamren_Nienow-Bayer@yahoo.com",
        "Melody",
        "Emmerich",
        "male",
        "12875746",
        "1975-06-25T07:29:06.276Z",
        "2022-11-05T08:59:03.279Z"
    ), (
        "77a6eb8d-d7b4-4e81-832d-82215d1c586a",
        "Marietta92@hotmail.com",
        "Enrico",
        "Fay",
        "female",
        "17273613",
        "1977-12-03T18:34:31.607Z",
        "2022-12-05T21:50:58.643Z"
    ), (
        "36117f85-0b57-4e3c-85ec-310d7f7a07e9",
        "Tyrell66@gmail.com",
        "Marlee",
        "Steuber",
        "male",
        "18520849",
        "1951-08-25T18:54:19.590Z",
        "2022-10-29T02:38:22.874Z"
    ), (
        "93eb2b4e-0364-4840-84eb-c113377e3085",
        "Cleve_Beier-Herzog@hotmail.com",
        "Mallie",
        "Osinski",
        "female",
        "48811400",
        "1951-08-10T19:20:00.245Z",
        "2023-03-08T09:02:28.875Z"
    ), (
        "46917f3a-0b53-4a9c-9a12-2f854a4a2064",
        "Marlene_Keeling42@gmail.com",
        "Ayla",
        "Rath",
        "female",
        "43003428",
        "1952-03-16T08:17:44.070Z",
        "2022-12-28T04:06:36.669Z"
    ), (
        "867f0cd0-e4f4-4962-8414-53b64056d334",
        "Melany12@yahoo.com",
        "Ellen",
        "Rosenbaum",
        "male",
        "93492154",
        "2004-12-13T01:30:28.454Z",
        "2022-07-25T00:57:15.043Z"
    ), (
        "2f352e90-3503-4c18-9aec-ff7652d67782",
        "Romaine43@gmail.com",
        "Carley",
        "Mohr",
        "female",
        "02546802",
        "1986-05-18T02:06:05.295Z",
        "2022-11-04T11:56:09.591Z"
    ), (
        "93fcc9e4-f26c-41c1-b02f-ce3d8270b4a6",
        "Beth.Romaguera@yahoo.com",
        "Sasha",
        "Wisozk",
        "male",
        "23886997",
        "1989-01-28T02:16:05.159Z",
        "2023-04-20T04:41:59.173Z"
    ), (
        "36171437-c048-4dd8-bc8d-5b70c48d426f",
        "Katherine.Mraz@gmail.com",
        "Cullen",
        "Schmeler",
        "male",
        "78433319",
        "1952-04-28T13:00:43.201Z",
        "2022-09-25T09:46:30.848Z"
    ), (
        "071d535d-1084-44e7-ad38-3deb0fc98ced",
        "Hallie_Jaskolski12@gmail.com",
        "Saige",
        "Walker",
        "male",
        "80147498",
        "1990-05-26T04:54:11.943Z",
        "2023-01-31T05:44:32.968Z"
    ), (
        "dd4bf5f0-2096-4f04-9092-01016c3b510c",
        "Jany_Johnston@hotmail.com",
        "Jared",
        "Spinka",
        "female",
        "43561769",
        "1950-01-19T04:25:56.114Z",
        "2022-11-21T05:52:45.405Z"
    ), (
        "1e06a7f7-dd1f-4bb9-8020-93c6edea5906",
        "Mable_Rath@yahoo.com",
        "Dessie",
        "Kassulke",
        "male",
        "59654447",
        "1985-11-20T11:30:38.115Z",
        "2022-10-04T12:27:04.537Z"
    ), (
        "d7372a19-fca7-4084-b67b-bea5a7db0a42",
        "Kenny91@yahoo.com",
        "Beatrice",
        "Thompson",
        "male",
        "26336186",
        "1994-09-18T02:33:33.185Z",
        "2022-06-15T15:56:58.457Z"
    ), (
        "366fb76c-87f6-43c0-a733-afafd1c1aaa6",
        "Kennedi.Kunde@hotmail.com",
        "Maximillian",
        "Von",
        "female",
        "05592216",
        "1996-09-26T21:42:21.198Z",
        "2022-08-05T13:09:12.419Z"
    ), (
        "5880c676-b06d-449e-9d4a-b17844326910",
        "Arlo_Abernathy@gmail.com",
        "Koby",
        "Romaguera",
        "male",
        "00379497",
        "2005-05-29T00:00:10.856Z",
        "2022-12-25T21:43:47.722Z"
    ), (
        "845ce4f5-b72b-406c-9782-399e64fc8bc6",
        "Betsy_Wiegand@gmail.com",
        "Tyreek",
        "Koch",
        "male",
        "38814113",
        "1954-07-27T17:20:13.824Z",
        "2022-07-07T05:33:14.249Z"
    ), (
        "71839e32-ebe8-45a0-bf21-f0d01c5b9527",
        "Jan.Kuvalis@yahoo.com",
        "Carmine",
        "Lowe",
        "female",
        "50048013",
        "1979-04-14T21:02:27.485Z",
        "2022-12-07T18:28:37.711Z"
    ), (
        "1380ac0c-3572-4523-a184-c4bd03026a43",
        "Stan57@yahoo.com",
        "Bailey",
        "Romaguera",
        "female",
        "73363209",
        "1992-04-13T23:14:38.734Z",
        "2023-03-20T11:19:37.223Z"
    ), (
        "9be118fb-6c8e-486b-99f7-cf594f166680",
        "Jaquan29@gmail.com",
        "Vincenzo",
        "Wiegand",
        "male",
        "83884255",
        "1955-01-26T07:14:34.465Z",
        "2022-11-17T10:02:44.029Z"
    ), (
        "f608edc7-4c6e-4e08-a2a5-6e2e2550d424",
        "Helena.Krajcik91@hotmail.com",
        "Juwan",
        "Sawayn",
        "female",
        "87091563",
        "1967-09-15T00:42:12.731Z",
        "2023-04-08T20:03:21.348Z"
    ), (
        "f0f0940e-80de-4734-956e-cb32062350a1",
        "Cecelia_Greenholt@gmail.com",
        "Pedro",
        "Smitham",
        "female",
        "25511376",
        "1993-03-21T01:38:01.767Z",
        "2022-12-10T08:43:38.516Z"
    ), (
        "b02fb266-78fe-4de5-964c-f227789178bb",
        "Christy.Sanford25@yahoo.com",
        "Jermey",
        "Fisher",
        "female",
        "55482380",
        "1977-08-15T22:17:01.671Z",
        "2023-04-25T13:04:34.594Z"
    ), (
        "3335b5a0-5020-4fed-8638-c6deccbbe0f7",
        "Archibald.Kessler@hotmail.com",
        "Caterina",
        "Barton",
        "male",
        "29173648",
        "1998-04-03T14:02:05.968Z",
        "2023-02-21T18:51:56.860Z"
    ), (
        "71c9d97d-1ab3-463c-beb1-a46c3a072a9c",
        "Louvenia.Kuhlman78@yahoo.com",
        "Alberta",
        "Tillman",
        "male",
        "19358636",
        "1988-05-17T00:53:35.243Z",
        "2022-11-14T15:00:46.296Z"
    ), (
        "1f094325-9648-479f-88ae-b4e2c965a460",
        "Jake67@gmail.com",
        "Abbigail",
        "Kling",
        "male",
        "44102066",
        "1959-09-05T04:57:54.840Z",
        "2023-02-22T07:16:14.847Z"
    ), (
        "84b1cd7b-1d99-4568-ac1e-d7cc28921d35",
        "Elroy89@hotmail.com",
        "Lonzo",
        "Daugherty",
        "female",
        "20250497",
        "1972-03-25T22:05:14.251Z",
        "2022-12-29T23:53:33.810Z"
    ), (
        "18c9cf1e-1edf-40a1-b758-82dbbd644906",
        "Gerson_Schneider@hotmail.com",
        "Chadrick",
        "Witting",
        "female",
        "38173104",
        "1948-03-28T21:38:56.953Z",
        "2022-07-17T08:16:45.284Z"
    ), (
        "3b7aa8bb-79f9-4fc4-8c9c-d94746a6133b",
        "Marilyne24@yahoo.com",
        "Javier",
        "Schinner",
        "female",
        "32425675",
        "1983-04-29T01:04:37.568Z",
        "2022-12-27T21:53:04.619Z"
    ), (
        "82d1215f-dc45-4719-a743-5d2527b2f808",
        "Beaulah.Hoppe@gmail.com",
        "Imelda",
        "Kemmer",
        "male",
        "68917653",
        "2002-04-10T01:11:20.478Z",
        "2022-11-01T10:37:07.755Z"
    ), (
        "ddd519a6-7aa7-4cc6-9ca2-38a3ddf55b26",
        "Cordia.Sporer57@yahoo.com",
        "Garry",
        "Fisher",
        "male",
        "81594810",
        "2000-08-10T02:29:05.716Z",
        "2023-04-15T04:52:13.947Z"
    ), (
        "cce5d454-1248-43f9-9350-3627dafbed5a",
        "Amber.Cassin@gmail.com",
        "Alia",
        "Wilderman",
        "female",
        "39682410",
        "1977-07-09T13:35:07.086Z",
        "2022-07-20T03:44:00.134Z"
    ), (
        "a5438460-a095-4f9b-bd08-ae8110b1ee9a",
        "Sarina43@yahoo.com",
        "Scotty",
        "White",
        "female",
        "01132502",
        "1957-05-15T16:24:03.051Z",
        "2023-05-08T13:33:38.084Z"
    ), (
        "871ea0d8-0cd8-452a-b5b0-6a286f0e0c18",
        "Beaulah.Smith@gmail.com",
        "Anne",
        "Schowalter",
        "male",
        "48586629",
        "1980-12-31T02:48:21.984Z",
        "2023-02-11T08:32:08.731Z"
    ), (
        "20f5dd6b-acfc-46f4-9390-cba47d6b1f58",
        "Winston.Quitzon49@yahoo.com",
        "Trever",
        "Kihn",
        "male",
        "94156990",
        "1957-03-29T08:19:14.638Z",
        "2023-06-08T21:15:04.040Z"
    ), (
        "ec8c4205-552e-44d2-a10a-ea2711f6bf1b",
        "Marian97@hotmail.com",
        "Stephen",
        "Hudson",
        "female",
        "78263827",
        "1988-04-10T06:46:01.021Z",
        "2023-01-10T12:03:36.079Z"
    ), (
        "8f17a6ae-da48-4901-ae4f-73a9b7640031",
        "Uriah80@hotmail.com",
        "Hailee",
        "Ferry",
        "male",
        "90775242",
        "1988-09-02T02:56:19.005Z",
        "2023-05-09T02:57:38.222Z"
    ), (
        "da3825d7-0bf9-4eea-8548-2484460fd784",
        "Dana.Cassin76@yahoo.com",
        "Mario",
        "Carter",
        "male",
        "92082689",
        "1991-08-10T16:25:25.604Z",
        "2023-06-07T02:41:21.489Z"
    ), (
        "52119b1c-d566-4670-8e2f-403214079cf5",
        "Kyler_Hayes31@hotmail.com",
        "Ernest",
        "Vandervort",
        "female",
        "98397600",
        "1964-08-16T10:27:03.197Z",
        "2023-01-23T21:32:59.894Z"
    ), (
        "1d373081-2989-4a45-b477-183215b6d410",
        "Gage84@yahoo.com",
        "Virgil",
        "Beatty",
        "female",
        "79777379",
        "1995-12-19T01:44:50.829Z",
        "2023-05-13T16:00:33.956Z"
    ), (
        "6c432b70-736b-4ae9-947d-154445c044ee",
        "Adell_Schuster44@hotmail.com",
        "Paxton",
        "Heathcote",
        "female",
        "78632703",
        "1947-01-05T14:29:41.615Z",
        "2022-11-10T11:25:58.016Z"
    ), (
        "9c33007d-a0f8-482e-8009-1f224c939dba",
        "Murl_Heaney@yahoo.com",
        "Kyleigh",
        "Reilly",
        "male",
        "69369443",
        "1985-11-07T03:09:23.626Z",
        "2022-06-26T21:08:12.512Z"
    ), (
        "67464604-4a90-4dae-b41a-d4aee540e6cb",
        "Camylle_Dietrich29@yahoo.com",
        "Lavinia",
        "Jacobi",
        "male",
        "17204495",
        "1980-10-17T14:37:46.513Z",
        "2023-02-14T12:42:11.021Z"
    ), (
        "017dc911-4483-4fa3-883e-6484b9e2273f",
        "Timmothy.Witting@hotmail.com",
        "Kobe",
        "Bashirian",
        "female",
        "06676688",
        "1974-09-07T03:47:16.629Z",
        "2022-10-14T02:24:36.986Z"
    ), (
        "32f384aa-6eee-4174-93a3-036f5747be32",
        "Raven.Erdman@gmail.com",
        "Abbigail",
        "Dietrich",
        "female",
        "43775850",
        "1993-06-17T16:25:43.059Z",
        "2022-09-23T03:26:52.642Z"
    ), (
        "c63da156-5a9c-4e46-982a-883201848c96",
        "Haskell64@gmail.com",
        "Genesis",
        "Marquardt",
        "male",
        "01866398",
        "1999-10-18T00:08:08.816Z",
        "2023-02-03T17:08:53.345Z"
    ), (
        "214cbf2f-256a-4137-9369-918b50327604",
        "Jevon16@gmail.com",
        "Justina",
        "Durgan",
        "female",
        "72014795",
        "1999-05-12T22:30:10.750Z",
        "2022-11-20T15:36:24.300Z"
    ), (
        "3e34a7ab-9c04-47c0-84c3-e39ddc388ed7",
        "Elva.Bergnaum26@gmail.com",
        "Antoinette",
        "Tromp",
        "female",
        "84525600",
        "1970-07-22T19:53:00.520Z",
        "2023-05-14T07:56:10.107Z"
    ), (
        "b57e7d41-b08e-4cc0-a3a9-ee26198bc89a",
        "Donavon.Kuhic-Bruen@yahoo.com",
        "Maureen",
        "Goyette",
        "male",
        "53980127",
        "1945-05-09T09:07:06.021Z",
        "2022-11-30T12:55:59.648Z"
    ), (
        "c3daf946-b6ae-4ceb-8fcb-61dbcddc52c6",
        "Wilbert.Swift10@gmail.com",
        "Rebeca",
        "O'Connell",
        "male",
        "24901339",
        "1968-06-11T15:42:56.341Z",
        "2023-05-06T14:08:44.333Z"
    ), (
        "53391e16-fd93-48cf-83e6-82eebd797dad",
        "Ona89@gmail.com",
        "Arjun",
        "Beatty",
        "female",
        "65565742",
        "2005-11-10T18:03:39.091Z",
        "2023-01-09T11:03:41.779Z"
    ), (
        "13c3d1e7-1754-43fd-889b-3638d80d6e74",
        "Kiana.Runte@yahoo.com",
        "Evan",
        "Luettgen",
        "male",
        "63143440",
        "1960-11-19T19:22:56.794Z",
        "2023-02-27T05:05:27.471Z"
    ), (
        "949ac858-167e-4f9f-9c56-5d7360090ef8",
        "Mozell97@yahoo.com",
        "Joannie",
        "Flatley",
        "female",
        "93231042",
        "1997-10-10T08:54:37.225Z",
        "2023-04-14T05:44:35.825Z"
    ), (
        "db4d00e7-2c1d-4cab-8793-31180219a6da",
        "Carleton_Muller@hotmail.com",
        "Chadd",
        "Ferry",
        "female",
        "25805453",
        "1989-07-14T10:57:57.775Z",
        "2022-06-30T17:27:23.436Z"
    ), (
        "5d7c1a1f-2254-4e50-abac-0b04679b3abb",
        "Gillian_Kilback@yahoo.com",
        "Lyla",
        "Hessel",
        "male",
        "87360178",
        "2001-07-05T02:00:39.567Z",
        "2022-10-05T08:03:01.865Z"
    ), (
        "b7666757-746c-4f9a-97bc-509bc61ce7e8",
        "Dallin.Bernhard@gmail.com",
        "Emmett",
        "Greenfelder",
        "male",
        "23991715",
        "1963-12-19T19:56:15.708Z",
        "2022-11-25T00:53:49.996Z"
    ), (
        "d38fcc32-03f6-42e6-8212-d3d68a9e3c3e",
        "Maegan.Armstrong35@yahoo.com",
        "Ryder",
        "Thompson",
        "male",
        "14730767",
        "2001-04-11T07:57:51.096Z",
        "2022-08-13T14:19:51.676Z"
    ), (
        "fb82f927-d7fd-4ef2-9678-3a01f4dc8936",
        "Carmela63@hotmail.com",
        "Leora",
        "Zulauf",
        "female",
        "36361614",
        "1988-02-26T00:41:45.284Z",
        "2022-07-15T17:18:53.431Z"
    ), (
        "fa57c088-cacc-48c9-9e1e-3ed179e2255a",
        "Mauricio92@hotmail.com",
        "Tremaine",
        "Ondricka",
        "male",
        "68887688",
        "2002-01-23T08:38:46.689Z",
        "2022-08-14T13:52:57.447Z"
    ), (
        "00d32960-de7a-452f-a826-2accfb574142",
        "Dorthy_Fisher50@yahoo.com",
        "Augustus",
        "Cronin-King",
        "female",
        "34837825",
        "1955-05-08T00:27:11.574Z",
        "2023-02-16T22:06:59.799Z"
    ), (
        "e92456d3-ed14-4a90-bbe0-70675481de79",
        "Chasity.DuBuque@yahoo.com",
        "Boyd",
        "Price",
        "male",
        "57111727",
        "1979-06-18T18:25:30.675Z",
        "2022-08-24T23:38:36.082Z"
    ), (
        "37a13415-605c-4f27-81c7-3ea145d8ab1e",
        "Dave_Kerluke47@gmail.com",
        "Earnestine",
        "Mraz",
        "male",
        "14518357",
        "1977-02-08T20:25:31.950Z",
        "2022-06-16T00:29:01.991Z"
    ), (
        "96301bc1-5320-4645-953f-ea32f837dfbe",
        "Shanna.Jacobs@gmail.com",
        "Zack",
        "Glover",
        "female",
        "87192188",
        "1969-05-20T08:45:10.138Z",
        "2022-07-27T15:21:57.498Z"
    ), (
        "33b7be58-eb36-4174-af73-0f00a3866dc6",
        "Cornell73@yahoo.com",
        "Garret",
        "Pouros",
        "male",
        "39629953",
        "1947-10-18T10:38:35.909Z",
        "2023-01-15T13:39:57.071Z"
    ), (
        "12d25291-6c7b-491b-9947-d74246c6b611",
        "Crawford_Wolff@gmail.com",
        "Trudie",
        "Morar",
        "male",
        "19407327",
        "1995-07-06T22:33:37.676Z",
        "2022-12-06T19:20:43.123Z"
    ), (
        "56d6fb09-f981-4a6e-9ef6-be07e440c7b6",
        "Javon69@hotmail.com",
        "Pasquale",
        "Keeling-Bailey",
        "male",
        "72648347",
        "1999-10-05T11:17:06.068Z",
        "2022-08-04T13:30:24.403Z"
    ), (
        "cebb62f7-e4f3-4bf2-b60f-f7463527e5f9",
        "Beth32@hotmail.com",
        "Asia",
        "Russel",
        "female",
        "60849647",
        "1952-05-07T02:23:02.364Z",
        "2022-11-06T02:04:21.720Z"
    ), (
        "5f659820-497f-4075-89c8-8756ba288c30",
        "Mariano_Kub@hotmail.com",
        "Kayley",
        "Rutherford",
        "male",
        "25172986",
        "1990-09-14T00:18:35.778Z",
        "2022-11-08T16:17:01.819Z"
    ), (
        "7df52d9a-0a11-4b8d-abd0-e36fa33912a1",
        "Lia_Wiegand6@gmail.com",
        "Caleb",
        "Willms",
        "female",
        "48319199",
        "1992-09-09T07:13:01.754Z",
        "2023-01-24T06:02:44.181Z"
    ), (
        "544f8429-969d-4605-8adc-70fabcd956ab",
        "Thaddeus.Reinger@hotmail.com",
        "Benny",
        "Brown",
        "female",
        "51171791",
        "1987-12-19T14:06:26.526Z",
        "2023-06-06T06:45:29.696Z"
    ), (
        "b63f9905-1a7d-4ca6-b119-598ee3385fbd",
        "Colleen.Schuster19@hotmail.com",
        "Herman",
        "Gulgowski",
        "female",
        "79901687",
        "1969-07-07T06:16:39.326Z",
        "2023-06-01T05:26:37.515Z"
    ), (
        "824a1190-104d-406c-9cb3-5732b00da419",
        "Lia21@hotmail.com",
        "Angie",
        "Hessel",
        "female",
        "26839252",
        "1968-06-13T10:41:19.886Z",
        "2022-09-28T22:18:26.059Z"
    ), (
        "feb48ba7-4d67-402e-a91b-073697f6923c",
        "Reanna_Kerluke@yahoo.com",
        "Johan",
        "Schmitt",
        "male",
        "20662513",
        "1952-01-16T23:00:07.053Z",
        "2023-04-22T13:58:59.067Z"
    );