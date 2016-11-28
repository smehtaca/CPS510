#!/bin/sh

create_tables()
{
	bash ./sql.sh < create_tables.txt >/dev/null
	echo "Tables Created"
	bash ./script.sh
}

drop_tables()
{
	bash ./sql.sh < drop_tables.txt >/dev/null
	echo "Tables Dropped"
	bash ./script.sh
}

populate_tables()
{
	bash ./sql.sh < populate_tables.txt >/dev/null
	echo "Tables Populated"
	bash ./script.sh
}

basic_queries()
{
	bash ./sql.sh < basic_queries.txt
	echo "Basic Queries Completed"
	bash ./script.sh
}

first_adv_query()
{
	echo "1 Selected"
	bash ./sql.sh < 1.txt
	echo "First Adv. Query completed."
	bash ./script.sh
}

second_adv_query()
{
        echo "2 Selected"
        bash ./sql.sh < 2.txt
        echo "Second Adv. Query completed."
        bash ./script.sh
}


third_adv_query()
{
        echo "3 Selected"
        bash ./sql.sh < 3.txt
        echo "Third Adv. Query completed."
        bash ./script.sh
}

fourth_adv_query()
{
        echo "4 Selected"
        bash ./sql.sh < 4.txt
        echo "Fourth Adv. Query completed."
        bash ./script.sh
}


fifth_adv_query()
{
        echo "5 Selected"
        bash ./sql.sh < 5.txt
        echo "Fifth Adv. Query completed."
        bash ./script.sh
}


advanced_queries()
{
echo "Type option 1...5 or 6 to quit"
echo "1. Find people who have been the lead in both a movie and an album"
echo "2. List manufacturers whose names don't start with a vowel "
echo "3. List products with a quantity between 20 and 50, grouped by title"
echo "4. List genres with avg price greater than avg quantity"
echo "5. Find a music artist whose producer is also a movie actor"
read val
case $val in
	1) first_adv_query;;
	2) second_adv_query;;
	3) third_adv_query;;
	4) fourth_adv_query;;
	5) fifth_adv_query;;
	6) exit 1;;
esac
}

echo "Please choose one of the following options."
echo "1. Create Tables"
echo "2. Drop Tables"
echo "3. Populate Tables"
echo "4. Run Basic Queries and Create Views"
echo "5. Run advanced Queries"
echo "6. Quit"
read option
case "$option" in
	1) create_tables;;
	2) drop_tables;;
	3) populate_tables;;
	4) basic_queries;;
	5) advanced_queries;;
	6) exit 1;;
esac
