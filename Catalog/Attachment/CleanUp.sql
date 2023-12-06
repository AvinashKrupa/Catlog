delete from catgroup where identifier in ('Mens Fashions','Womens Fashions','Pants','Shirts','Activewear','Accessory');
delete from catentry where partnumber like 'Cords%';
delete from catentry where partnumber like 'Classic pleated dress pant%';
delete from catentry where partnumber like 'Dress shirt%';
delete from catentry where partnumber like 'Casual shirt%';
delete from catentry where partnumber like 'Bodysuit%';
delete from catentry where partnumber like 'Soccer shorts%';
delete from catentry where partnumber like 'Belt%';
delete from catentry where partnumber like 'Evening bag%';
delete from catentry where partnumber like 'Gift Set%';

delete from atchrel where ATCHOBJTYP_ID=2 and atchtgt_id in (select atchtgt_id from atchtgt where identifier in ('Category Pants full image','Category Pants small image'));
delete from atchrel where ATCHOBJTYP_ID=3 and atchtgt_id in (select atchtgt_id from atchtgt where identifier in ('SKU Cords-Black-29W x 28L small image','SKU Cords-Brown-29W x 28L full image'));
         

delete from baseitem where partnumber like 'Cords%';
delete from baseitem where partnumber like 'Classic pleated dress pant%';
delete from baseitem where partnumber like 'Dress shirt%';
delete from baseitem where partnumber like 'Casual shirt%';
delete from baseitem where partnumber like 'Bodysuit%';
delete from baseitem where partnumber like 'Soccer shorts%';
delete from baseitem where partnumber like 'Belt%';
delete from baseitem where partnumber like 'Evening bag%';
delete from baseitem where partnumber like 'Gift Set%';

delete from itemspc where partnumber like 'Cords%';
delete from itemspc where partnumber like 'Classic pleated dress pant%';
delete from itemspc where partnumber like 'Dress shirt%';
delete from itemspc where partnumber like 'Casual shirt%';
delete from itemspc where partnumber like 'Bodysuit%';
delete from itemspc where partnumber like 'Soccer shorts%';
delete from itemspc where partnumber like 'Belt%';
delete from itemspc where partnumber like 'Evening bag%';
delete from itemspc where partnumber like 'Gift Set%';



