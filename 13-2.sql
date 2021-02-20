# 18
use OrderDB;
select count(*)
from DetailT;
# 19
select count(distinct Item) as '品種'
from DetailT;
# 20
select max(Price), min(Price)
from DetailT;
# 21
select sum(Price*Qty) as '合計価格'
from DetailT;
# 22
select sum(Price*Qty) as '小計価格'
from DetailT
group by OrderID;
# 23
select Item, avg(Price) as '平均価格'
from DetailT
group by Item;
# 24
select Item, avg(Price) as '平均価格'
from DetailT
group by Item
order by 平均価格;
# 25
select Item, count(*) as '注文回数'
from DetailT
group by Item;
# 26
select Item,avg(Price) as '平均価格'
from DetailT
group by Item
having 平均価格 >= 10
order by 平均価格;
# 27
select * from OrderT, CorpT;
# 28
select * from OrderT cross join CorpT;
# 29
select * from OrderT inner join CorpT
on OrderT.OCorpID = CorpT.CorpID;
# 30
select *
from OrderT, CorpT
where OCorpID = CorpID and CorpAddr is not null;
# 31
select OrderT.OrderID, ODate, CorpID, CorpName, CorpAddr, Item, Price, Qty
from OrderT, CorpT, DetailT
where OCorpID = CorpID and OrderT.OrderID = DetailT.OrderID;
# 32
use MemberDB;
select distinct XMemberT.Name
from XMemberT, XFamilyT
where XMemberT.MemberID = XFamilyT.MemberID and XMemberT.Age < XFamilyT.Age;
# 33
use OrderDB;
select * from OrderT
natural join DetailT;
# 34
use GraduateDB;
select Year, AlumniListT.Degree, Name, AwardName
from AlumniListT
left join AwardListT on AwardListT.AwardID = AlumniListT.AwardID;
# 35
use OrderDB;
select * from OrderT
right join CorpT on OCorpID = CorpID;
# 36
use MemberDB;
select L.MemberID, L.Name, L.Age, L.GName, L.GLeaderID, R.Name, R.Age
from XMemberT L, XMemberT R
where L.GLeaderID = R.MemberID;
# 37
select distinct L.GName, R.Name, R.Age
from XMemberT L, XMemberT R
where L.GLeaderID = R.MemberID;
# 38
select L.Name, L.Age, R.Age
from XMemberT L, XMemberT R
where L.GLeaderID = R.MemberID and L.Age < R.Age;
# 39
select * from XMemberT
union
select * from YMemberT;
# 40
use OrderDB;
select * from OrderT
union
select * from CorpT;