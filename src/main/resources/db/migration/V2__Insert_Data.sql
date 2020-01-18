-- Adding admin
INSERT INTO users VALUES
    (DEFAULT,"vlad13","root","admin","Vlad","Tereshkevych", DEFAULT,"СЮ342165","0974479781",2740);

-- Adding dispatchers
INSERT INTO users VALUES
    (DEFAULT,"grear_peace","tortinka","dispatcher","Katerina","Lyutaya",DEFAULT,"КА832451","0984111124",1200),
    (DEFAULT,"irisha","monkey1","dispatcher","Irina","Vashkevich",DEFAULT,"КЕ154936","0952320024",830),
    (DEFAULT,"artemon","secret","dispatcher","Artem","Khalin",DEFAULT,"АЕ154936","0951421907",1465);

-- Adding drivers
INSERT INTO users VALUES
    (DEFAULT,"winchester","shadow","driver","Evgeny","Barantsov",DEFAULT,"МО132576","0978911232",553),
    (DEFAULT,"heisenberg","master","driver","Dmitry","Kravchenko",DEFAULT,"МС143021","0993123167",811),
    (DEFAULT,"geographer","jackson","driver","Vladimir","Klimenko",DEFAULT,"МА203142","0963172990",408),
    (DEFAULT,"igor16","pass","driver","Igor","Golovin",DEFAULT,"КН353145","0974172236",332),
    (DEFAULT,"diesel","burner","driver","Vladimir","Samoilenko",DEFAULT,"КС384121","0965551241",DEFAULT),
    (DEFAULT,"tirion","lanister","driver","Kirill","Zhivoglyad",DEFAULT,"КР132732","0994183154",1006),
    (DEFAULT,"garden","pool","driver","Andrey","Zhivotovsky",DEFAULT,"АА384121","0981234132",310);

-- Adding cars
INSERT INTO cars VALUES
    (DEFAULT,5,"BB4177CH",5,2.555,1),
    (DEFAULT,6,"BA2588BA",2,2.325,1),
    (DEFAULT,7,"AH4035HX",3,5.960,2),
    (DEFAULT,8,"CX2889BA",1,2.1,1),
    (DEFAULT,9,"KA2551RX",4,2.3,1),
    (DEFAULT,10,"AB2552TH",6,6.555,1),
    (DEFAULT,11,"AK1327MB",5,4.500,1);

-- Adding flights
INSERT INTO flights VALUES
    (DEFAULT,"4412","2018-05-12",DEFAULT,451,2.01,"Melitopol","Kharkiv","2018-05-13 11:15:00","2018-05-13 17:40:00"),
    (DEFAULT,"5019","2018-06-04",DEFAULT,546,1.750,"Lviv","Kiev","2018-06-05 13:30:00","2018-06-05 21:30:00"),
    (DEFAULT,"2817","2018-04-03",DEFAULT,84,1.900,"Dnipropetrovsk","Zaporizhzhia","2018-04-04 15:00:00","2018-04-04 16:10:00"),
    (DEFAULT,"0132","2018-08-13",4,846,1.300,"Poltava","Chernivtsi","2018-08-14 09:00:00","2018-08-14 21:05:00"),
    (DEFAULT,"1841","2018-01-02",DEFAULT,610,2.12,"Ternopil","Kherson","2018-01-03 12:30:00","2018-01-03 21:10:00"),
    (DEFAULT,"0001","2018-03-06",DEFAULT,197,2.123,"Cherkasy","Kyiv","2018-03-07 15:15:00","2018-03-07 18:45:00"),
    (DEFAULT,"0512","2018-02-21",DEFAULT,54,1.456,"Donetsk","Vinnytsia","2018-02-22 19:15:00","2018-02-22 22:10:00"),
    (DEFAULT,"4713","2018-06-14",4,150,2.124,"Zaporizhzhia","Melitopol","2018-06-15 05:50:00","2018-06-15 07:15:00");

-- Adding requests
INSERT INTO requests VALUES
    (DEFAULT,5),(DEFAULT,6),(DEFAULT,7);

-- Adding jobs
INSERT INTO jobs VALUES
    (1,1,DEFAULT,DEFAULT),(2,2,DEFAULT,DEFAULT),(3,3,DEFAULT,DEFAULT);