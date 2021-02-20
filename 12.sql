/* 1 */
use OrderDB;
select * from DetailT;
/* 2 */
use MemberDB;
select * from XMemberT where MemberID = GLeaderID;
/* 3 */
use OrderDB;
select * from DetailT where Item = 'パソコン';
/* 4 */
select * from DetailT where Price <=10;
/* 5 */
select * from DetailT
where Item = 'パソコン' and Price < 100;
/* 6 */
select * from OrderT
where ODate between '2008-05-01' and '2008-05-31';
/* 7 */
select * from DetailT
where Item in ('パソコン', 'ノートパソコン');
/* 8 */
select * from CorpT
where CorpAddr like '秦野市%';
/* 9 */
select * from CorpT
where CorpAddr is null;
/* 10 */
select OrderID, Item, Price * 1000 as '価格', Qty
from DetailT;
/* 11 */
select OrderID, Item, Price, '千円' as '単位', Qty
from DetailT;
/* 12 */
select * from DetailT
where Price * Qty >= 150;
/* 13 */
select OrderID, Item, Price * Qty
from DetailT
where Item = 'ディスプレイ';
/* 14 */
select Item
from DetailT
where Price >= 50;
/* 15 */
select distinct Item
from DetailT
where Price >= 50;
/* 16 */
select OrderID, Item, Price
from DetailT
order by Price;
/* 17 */
select OrderID, Item, Price
from DetailT
order by Price desc;
