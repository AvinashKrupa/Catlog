delete from catgroup where identifier in ('Mens Fashions','Womens Fashions','Pants','Shirts','Activewear','Accessory');
delete from catentry where partnumber like 'Cords%';

delete from baseitem where partnumber like 'Cords%';

delete from itemspc where partnumber like 'Cords%';

