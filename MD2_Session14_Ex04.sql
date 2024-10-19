use quanlykho;

select v.tenVT, sum(p.soluongxuat) as banchaynhat
from vattu v
inner join phieuxuatchitiet p on v.maVT = p.maVT
group by v.maVT
order by banchaynhat desc
limit 1;

select v.tenVT, sum(pn.soluongnhap)-sum(p.soluongxuat) as tonkhonhieunhat
from vattu v
inner join phieunhapchitiet pn on v.maVT = pn.maVT
inner join phieuxuatchitiet p on v.maVT = p.maVT
group by v.maVT
order by tonkhonhieunhat desc
limit 1;

select *
from nhacungcap n
inner join dondathang d on n.maNCC = d.maNCC
-- where d.ngayDH >="2024/9/1" and d.ngayDH <= "2024/9/12";
where d.ngayDH between"2024/9/1" and "2024/9/12";

select *
from vattu v
inner join chitietdonhang c on v.maVT = c.maVT
inner join dondathang d on c.soDH = d.soDH
inner join nhacungcap n on d.maNCC = n.maNCC
where d.ngayDH between "2024/9/1" and "2024/9/12";
