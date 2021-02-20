# 41
use MemberDB;
select * from XMemberT
where Age >= (
    select avg(Age) from XFamilyT
);

# 42
use OrderDB;
select * from DetailT
where Price >= (
    select avg(Price) from DetailT
);

# 43
use MemberDB;
select * from XMemberT A
where A.Age >= (
    select avg(B.Age) from XFamilyT B
    where B.MemberID = A.MemberID
);

# 44
use OrderDB;
select * from DetailT A
where A.Price >= (
    select avg(B.Price) from DetailT B
    where B.OrderID = A.OrderID
);
# 45
select * from DetailT
where Item in (
    select Item from PCsetT
);
# 46
select * from DetailT
where Item not in (
    select Item from PCsetT
);
# 47
select * from DetailT
where Price > all (
    select Price from DetailT
    where OrderID = '16003'
);
# 48
select * from DetailT
where Price > any (
    select Price from DetailT
    where OrderID = '16003'
);
# 49
select * from DetailT A
where exists(
    select * from DetailT B
    where B.Item = 'パソコン' and B.OrderID = A.OrderID
);
# 50
select * from DetailT A
where not exists(
    select * from DetailT B
    where B.Item = 'パソコン' and A.OrderID = B.OrderID
);
# これでイケると思った！でも演算結果が違う。なんで！
# select * from DetailT A
# where Item in (
#     select Item from DetailT B
#     where  B.Item = 'パソコン' and A.OrderID = B.OrderID
# );
# 51
use MemberDB;
select * from XMemberT
where MemberID in (
    select MemberID from YMemberT
);
# 52
select * from XMemberT X
where not exists(
    select * from YMemberT Y
    where Y.MemberID = X.MemberID
);
# 53
use OrderDB;
select distinct OrderID
from DetailT X
where  not exists(
    select * from PCsetT Y
    where not exists (
        select * from DetailT Z
        where Z.OrderID = X.OrderID and Z.Item = Y.Item
    )
);
