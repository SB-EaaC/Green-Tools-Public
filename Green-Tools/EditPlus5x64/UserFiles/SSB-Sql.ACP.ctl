#TITLE=SSB-SQL
#INFO
EditPlus WEB auto completion file.
Author: Sun shubin 
Contact: www.learnstorm.com
#SORT=n

#T=-----DDL------
-----DDL------
#T=createt
CREATE TABLE ^!tablename
(column1 datatypes [constraint] [no null]
 column2 datatypes [constraint] [no null]
);

#T=-----DML------
-----DML------
#T=alter 
ALTER TABLE ^!tablename;
#T=truncate
TRUNCATE table ^!tablename;

#T=mod
MOD( ^!)
#T=union
UNION 
#T=select
SELECT ^! 
FROM 
WHERE  ;

#T=insertinto
INSERT INTO ^!tablename 
( 
    column1,column2 
)
VALUES
(
    value1,value2
);
#T=insertselect
INSERT INTO ^!tablename 
       ( column1,column2 )
        SELECT  column1,column2 
        FROM tablename
        WHERE search_condition;

#T=--sub SQL--
--sub SQL--
#T=where
where

#T=order by
ORDER by ^!colum1,colum2 
#T=asc
ASC
#T=DESC
DESC
#T=distinct
distinct(columname)
#T=group by
GROUP BY ^!column 1,column 1

#T=having
HAVING  expression


#T=DATE(*)
DATE()
#T=--gather function--
--gather function--
#T=count
count(^!)
#T=sum
SUM(^!)
#T=avg
AVG( ^!)
#T=max
MAX(^!)
#T=min
MIN(^!)

#T=--CONSTRAINT--
CONSTRAINTN CONSTRAINT_NAME CHECK()
#T=NOT NULL
NOT NULL
#T=PRIMARY KEY
PRIMARY KEY
#T=UNIQUE
UNIQUE



#T=add
ADD columnname 
#T=default
DEFAULT '^!*'
#T=modify
MODIFY   columnname types
#T=dropc
DROP columnname;
#T=dropt
DROP TABLE ^!tablename ;




#T=truncate
TRUNCATE  ^!tablename;

#T=union
UNION 
#T=intersect
INTERSECT
#T=except
EXCEPT
#T=as
AS ^!
#T=isnoll
 ^!column IS NULL 
#T=isnotnoll
 ^!column IS NOT NULL 
#T=like
^!column LIKE '%L*'
#T=notlike
^!column NOT LIKE '%L*'
#T=between
^!column BETWEEN  number1 AND number2
#T=notbetween
^!column NOT BETWEEN  number1 AND number2
#T=in(
^!column IN ('*','*')
#T=any
^!column ?  ANY ('*','*')
#T=some
^!column ?  SOME ('*','*')
#T=exists
EXISTS(^!)




#T=createindex
CREATE INDEX indexname ON tablename(columnname1,columnname2)
#T=dropindex
DROP INDEX indexname;






#T=ceil
CEIL( ^!)
#T=mod
MOD( ^!)
#T=power
POWER( ^!)
#T=round
ROUND( ^!)
#T=sign
SIGN( ^!)





#T=commit
COMMIT

#T=rollback
ROLLBACK

#T=-----expression-----
-----expression-----
#T=and
AND ^!
#T=or
OR ^!
#T=not
not   ^!


#T=-----public types-----
-----public types-----
#T=number
NUMBER(^!)
#T=char
CHAR(^!)
#T=text
TEXT(^!)
#T=----- SQL types-----


#T=integer
integer
#T=decimal
decimal(p,s)
#T=double
double
#T=char
char(n)
#T=Varchar
Varchar(n)
#T=date
date
#T=Time
Time
#T=timeatamp
timestamp





#T=timeatamp
timestamp





#T=-----PL SQL-----
-----PL SQL-----
#T=createprocedure
create procedure ^! (



) is
begin


exception



end
#T=createtrigger
create trigger
  before insert OR UPDATE OR delete
  on
begin

end
#T=declare
DECLARE
  ^!
BEGIN

EXCEPTION

END;
#T=constant
^!** CONSTANT  types := **
#T=:=
^!**   types := **
#T=%type
mydate type%type

#T=if
IF (^!) THEN
        
END IF;
#T=if(
IF (^!) THEN
        
END IF;

#T=loopexit
LOOP (^!)
    EXIT;
END LOOP;

#T=loopexitwhen
LOOP (^!)
    EXIT WHEN **;
END LOOP;

#T=whileloop
WHILE  (^!)LOOP
    EXIT;
END LOOP;

#T=forloop
FOR ^!* IN **..**LOOP

END LOOP;

#T=autoon
SET AUTO ON;

#T=autooff
SET AUTO OFF;

#T=savepoint
SAVEPOINT pointname;

#T=rollbackto
ROLLBACK TO  pointname;

#T=cursor
CURSOR ^!cursorname IS
        SELECT ^! column1,column2
        FROM tablename1,tablename2
        WHERE condition;

#T=opencursor
OPEN CURSOR cursorname;

#T=smallint
smallint
#T=integer
integer
#T=decimal
decimal(p,s)
#T=double
double
#T=char
char(n)
#T=Varchar
Varchar(n)
#T=date
date
#T=Time
Time
#T=timeatamp
timestamp





#