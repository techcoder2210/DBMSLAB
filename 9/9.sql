delimiter //

create function is_palindrome(str varchar(225)) returns boolean no sql
begin
set str=replace(str,' ',' ');
set str=lower(str);
return str=reverse(str);
end //

delimiter ;

select is_palindrome('madam') as is_palindrome;
select is_palindrome('peer') as is_palindrome;
