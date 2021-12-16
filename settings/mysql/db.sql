# Create a DB for the benchmark
CREATE DATABASE benchmark_db CHARACTER SET utf8 COLLATE utf8_unicode_ci;

# Create a user with local or remote access to the DB with limited privileges
CREATE USER 'user'@'<localhost-or-ip-address-to-access-from>' IDENTIFIED BY '<set-your-password>';
GRANT SELECT ON benchmark_db.* TO 'user'@'<localhost-or-ip-address-to-access-from>';
GRANT INSERT ON benchmark_db.* TO 'user'@'<localhost-or-ip-address-to-access-from>';
GRANT UPDATE ON benchmark_db.* TO 'user'@'<localhost-or-ip-address-to-access-from>';
GRANT DELETE ON benchmark_db.* TO 'user'@'<localhost-or-ip-address-to-access-from>';
GRANT INDEX ON benchmark_db.* TO 'user'@'<localhost-or-ip-address-to-access-from>';
FLUSH PRIVILEGES;

# Create a table in the DB
USE benchmark_db;
CREATE TABLE `credits`(
   `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
   `key` CHAR(22) NOT NULL,
   `credits` INT UNSIGNED NOT NULL,
   PRIMARY KEY (`id`),
   INDEX `i_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

# Insert test data to the table
INSERT INTO credits (`key`, `credits`) VALUES ('9ed61575b9151c7a3860a2', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('4de1f1dfba026cc0b7ef31', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('7bc03f6e26efd840c74717', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('7093e9a4ed4a5cade93768', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('94cbf2a6b3938e8d9cfdbf', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('eafa54edb781cf9c3b1014', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('f9dd1eea0240b8e28a7548', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('18d3e3e0a323e0caa9c279', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('44982d6d6d87d4f5106f0b', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('64d14013ce0217e1c08059', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('4c6a7ebf9550873a415069', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('d94c3c1829ef1976c0a825', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('d9ea67ab52a4defeb3ded1', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('b1bf4c86f5c3b85a7c3724', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('5085c9d285da04afb00234', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('ed2364c6e33aec86aef931', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('cf0a0c8eeadc33b190651b', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('04bc47185e8ebe4fadbe98', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('e03339ebacd6e06d30ec45', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('710c804ece9ed27da04ec8', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('06e2251dddb2a8d9b6e5b3', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('a585f5b08dde08803df0b6', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('6eb579728f918121679a37', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('e4bc307216e21d88f9174a', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('2dade84c4362314c331ec2', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('781a081b352512ba66bd2c', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('eec1f760b67b9938905d0c', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('1e2311e2bcf12093521534', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('1ffdd4595f34732ae27417', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('15448b82f7f0e8ea4c6f70', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('9b9d3c39b218bc3841226e', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('d9eba9417d8d047f4c39fc', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('6a260e42f2bb769adb8757', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('137a923ae8987b93f3f327', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('7b05f933c6476836adce77', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('e7d1abef343a96b205151c', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('0a7adf9a00d9d41a96425e', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('4229013eb9ef7b239e51b6', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('ee113cc643370ecb7f24b2', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('d064550ae930d61a533667', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('8bca060251befd271cbced', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('0c286be8c533b4617c4d36', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('4c985f5e587f2cf25c8411', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('f9c08a72d1336d5ecfd390', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('9a5a20f262e81ba3d3d6e0', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('fb4ffaa21ab6c5312cfde8', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('0e5f48dc79a3410b6bbccb', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('64cf45433150ceb3ce4cbe', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('faac8ee288f850903c2830', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('c531a7ba0b749faca3a610', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('5337de9b561a86de3424be', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('b73d0a7145246b4c6dc86c', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('b9b4d09e0f5b98c5eb9a16', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('dcfc7e29a53cdae933b289', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('339c807a64be891828ccca', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('1b687a5f1526dd064061de', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('7a74f4aafeb0f70afefe17', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('680c288971b8cd974a072c', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('325a3f6ad7f60af59c9d8a', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('a089f0b24b1e7b91834c2d', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('f4ffca6891b34ffeb92cb9', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('1d13f918d24f57122e2e31', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('743b55c4d8034d179de096', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('8a6f88ae8364c223a768ed', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('be89ce7137a80a5eb69e90', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('b29290f3024033426171de', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('84958c316b0115d5b77164', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('b55ebdbef34a73c90f478a', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('014d78f16ef759a1090b09', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('a789abe742f67309a29f88', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('a9114d5b01ead898c8f8cc', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('2d3433e5bb52d3fca667a4', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('b20bbf633d5c037392a0f3', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('97bc76cfd735c5ae33ebfd', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('55124161c1489b5aec1d09', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('e13126ed28dee03077005c', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('d775d1e0ecf60b65ab82d5', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('6c60c67cfad2f48de4f23c', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('47f8a2378163ce8b67372d', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('23883f9e35830535782e54', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('62a82dd5dbc58c27dc77e0', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('7147b8bc7d7b5cd2a3ab14', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('72bb28935b46065ff785d4', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('f100597faf240388520f44', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('fa31f39d7971c13f619c87', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('ca46262ffb4723cd6359f5', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('d44c9de9de035eff21b397', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('c7da28b1749f7bed6638d6', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('4ac47d10c6042dbddc0444', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('c98f0f74e76a6e77058040', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('ac3dc4185c0b323d7bac22', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('48d7f545b8a44a7390df91', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('e22d9217bb812577c5cf3c', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('26ea7d7b375f9b9c7e8599', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('fe458f2dc53f44fb2be0a5', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('4ad9c01af1d64c7a3c524d', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('4371c42dbdc0a680f67e83', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('c7df5973fe907c78e1f784', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('6e1916b4eba53d40f6660f', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('7fd83a9212b257f7de1fb5', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('567c24bbd224e03f3eeee1', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('0e815c50c005e537938d3f', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('57d9351927a2ecd08efdd2', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('c01589c7097cfe44d3ace7', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('214f4df69331f4435e23ea', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('f2793aa058b55a4ea3a069', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('38593db6cc0c9eaa78b2d5', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('8234b76fb16c7e827697c9', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('7524fe75b21ffba226cfb7', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('a10d4b5c94ad157cd950c7', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('d92233217801425523917b', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('a257d79af6f31d745b03bc', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('378079317c47fe5a3c0e04', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('88ba5c19962e23ed924357', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('6359b5250a5680d16a7045', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('7f3514811ec8d97d441d4d', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('47c6c3dc8f62fd3e206430', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('c69ab8cd9dda819e8981b9', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('d94f2177156ef7f872b8ad', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('ef9124b4dbe3aa001265b8', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('daa96e5cd8cf9a95247406', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('0491e65729ff1b00ce11e9', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('89545ae00c92577ed21b55', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('1eb96e1b6a4d511c6ec018', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('1fbdd41e9dbf746686316d', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('1a69d6f49ebde724343532', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('045aca1980045819bb54cb', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('fad090efa00a5987acb438', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('a926f75cc4e54cd0613536', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('f514780ce5724e0d7ecc82', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('08cb8784d05778e7c1defd', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('9428dd987691694e92a424', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('a08e21f0a4ab31fdcd9534', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('3b915b42f345e57ac53a0e', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('b88081a4896227fa578ce2', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('c4b7d90edc7d6d01605592', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('986498cdf7769469aafb58', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('5b91608c6ae1f3474cce0f', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('048da1b7591eccf0c9545c', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('f72a659b1ab5e82aa18fa5', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('d918ddc77866e436dccec3', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('00fc43486b38838b5541c9', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('dc4599c461665e2d9c22dc', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('c2fe2a4318995db9d8df5b', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('8557cbe4725927c7c99f7b', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('82662bdb4b1fa17be6f8fc', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('75674a595d831195370e72', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('d70418903f7e917ddb4ae6', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('d79ab101ffd4eb95d989bd', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('45d9abc4a0a9c880bcd7a9', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('131dcd6296eb553f17d0ae', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('a8071384c46fb309585597', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('1a04051971e17aaa745c96', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('e2d11eb336c3a87772c9b7', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('29ad53a1b7775a55cd1e2e', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('dbf68a0fa4fb04e61dfd6d', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('6dda57bd795361c6d12e48', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('a36139246fcafb2b1caccc', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('82bd857bb48d37b0148cb8', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('5993b084d59e084855211c', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('0bb39008ae8f1913d0cb90', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('77525d91a72b894604c92b', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('c2e8d9393db4483f354a93', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('d3972a36ec985569a4d259', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('b81ec6fb0367902d65542a', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('b0df272163997f6b92c4eb', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('78935c982891416180b9ee', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('6b204a992388db26788784', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('e58564d3b2c74351b4857f', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('4e861a1037a1d95d4cd1d3', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('c704593bf7ad8b90668f5a', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('043c7c912791c97a3ba212', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('cfea382c52cfd427c9a578', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('e9099df07f4ae69d008095', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('bbfd8727ac636d844f2d5c', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('4ec51bbb0c5429f647d77e', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('7d00e6fb41ee1938fa6f3a', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('a4729449461f7f6b38aa27', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('db595bc87c84c3f21a73c1', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('f9d247eb74cc64af818846', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('ce39829dc687b1862de2a4', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('f4118a5804b84b73d835e3', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('80475485033416c0737a0b', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('45f0fc00b31a1d65d6632b', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('fd1ad04afbd6acfee2af17', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('3f53f7fefcfe7ed5dfec8c', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('a25c2961661ff4d7024a77', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('e085dd900549bb077f592d', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('94b18caec06f758d7e67df', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('9e7f5df832017391badbf8', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('b33853f2d945cafc0bad7d', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('d39288df2c844ce4399b09', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('db18305d0eca590efa9b81', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('102593d7cd2c2517bad82a', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('6adcd78265d7444ddfa3b7', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('e5e05a4046cb7fd52b716b', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('02ba46bbbd8b7f1d42d6da', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('c47021b96d58751965a049', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('6d88783fdcb9c2e6deabbc', 2000000);
INSERT INTO credits (`key`, `credits`) VALUES ('5987b3afbffe0d161b6d6e', 2000000);