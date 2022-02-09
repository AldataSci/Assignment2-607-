create Table Movie (
movie varchar(255),
movie_id int 
);
insert into movie (movie,movie_id) values ("Eternals","100");
insert into movie (movie,movie_id) values ("Shang-Chi","101");
insert into movie (movie,movie_id) values ("Spider-Man No Way Home","102");
insert into movie (movie,movie_id) values ("Dune","103");
insert into movie (movie,movie_id) values ("Venom ","104");
insert into movie (movie,movie_id) values ("No Time to Die","105");

create table Friends (
Fri_id int,
Fri_name varchar(255)
);

insert into Friends (Fri_id,Fri_name) values ("1","Robin");
insert into Friends (Fri_id,Fri_name) values ("2","Ahmed");
insert into Friends (Fri_id,Fri_name) values ("3","Alexa");
insert into Friends (Fri_id,Fri_name) values ("4","David");
insert into Friends (Fri_id,Fri_name) values ("5","Jake");

create Table Rating (
Fri_id int,
movie_id int,
Stars int
); 

insert into Rating (Fri_id,movie_id,Stars) values ("1","100","3");
insert into Rating (Fri_id,movie_id,Stars) values ("1","101","4");
insert into Rating (Fri_id,movie_id,Stars) values ("1","102","5");
insert into Rating (Fri_id,movie_id,Stars) values ("1","103","2");
insert into Rating (Fri_id,movie_id,Stars) values ("1","104","2");
insert into Rating (Fri_id,movie_id,Stars) values ("1","105","3");
insert into Rating (Fri_id,movie_id,Stars) values ("2","100","4");
insert into Rating (Fri_id,movie_id,Stars) values ("2","101","4");
insert into Rating (Fri_id,movie_id,Stars) values ("2","102","5");
insert into Rating (Fri_id,movie_id,Stars) values ("2","103","3");
insert into Rating (Fri_id,movie_id,Stars) values ("2","104","1");
insert into Rating (Fri_id,movie_id,Stars) values ("2","105",NULL);
insert into Rating (Fri_id,movie_id,Stars) values ("3","100","2");
insert into Rating (Fri_id,movie_id,Stars) values ("3","101","3");
insert into Rating (Fri_id,movie_id,Stars) values ("3","102","4");
insert into Rating (Fri_id,movie_id,Stars) values ("3","103",NULL);
insert into Rating (Fri_id,movie_id,Stars) values ("3","104","2");
insert into Rating (Fri_id,movie_id,Stars) values ("3","105",NULL);
insert into Rating (Fri_id,movie_id,Stars) values ("4","100","2");
insert into Rating (Fri_id,movie_id,Stars) values ("4","101","4");
insert into Rating (Fri_id,movie_id,Stars) values ("4","102","5");
insert into Rating (Fri_id,movie_id,Stars) values ("4","103","4");
insert into Rating (Fri_id,movie_id,Stars) values ("4","104","2");
insert into Rating (Fri_id,movie_id,Stars) values ("4","105",NULL);
insert into Rating (Fri_id,movie_id,Stars) values ("5","100","3");
insert into Rating (Fri_id,movie_id,Stars) values ("5","101","3");
insert into Rating (Fri_id,movie_id,Stars) values ("5","102","5");
insert into Rating (Fri_id,movie_id,Stars) values ("5","103","3");
insert into Rating (Fri_id,movie_id,Stars) values ("5","104","4");
insert into Rating (Fri_id,movie_id,Stars) values ("5","105",NULL);

select movie,Fri_name,Stars from Movie m
left join Rating r
on m.movie_id = r.movie_id 
left join Friends f
on r.Fri_id = f.Fri_id
order by Fri_name;