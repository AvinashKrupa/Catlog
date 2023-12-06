----------------------------------------------------------------------------------------------------------------------------------------------------------------
Prepare: Update store and database setting for dataload
----------------------------------------------------------------------------------------------------------------------------------------------------------------

1) Please refer to <WC_installdir>\samples\DataLoad\Inventory\ReadMe.txt
2) CatalogEntryMediator load catalog entry data under DOM store
3) Load data under <WC_installdir>\samples\DataLoad\Inventory\DOM

----------------------------------------------------------------------------------------------------------------------------------------------------------------
Scenario: Loading inventory cache for DOM inventory
----------------------------------------------------------------------------------------------------------------------------------------------------------------

This scenario loads inventory cache for DOM inventory. 
Each record stands for an inventory availability record for a particular CatalogEntry cached from DOM system.
The catalog entry can be identified by the PartNumber, and the store identifiers can be identified by OnlineStoreUniqueID and ContextStoreId In DOM_inventory.csv.

1) In the command-line interface, navigate to the <WC_installdir>/bin directory. 
2) Enter the following command: 
   AIX:
   ./dataload.sh ../samples/DataLoad/Inventory/DOM/wc-dataload-dom.xml
   Windows:
   dataload.cmd ..\samples\DataLoad\Inventory\DOM\wc-dataload-dom.xml

Verify that the data has been loaded by running the following SQL statement:

select * from INVAVL where CATENTRY_ID in 
           (SELECT CATENTRY_ID
					  FROM CATENTRY 
					  WHERE partnumber = 'FULO-0101'
							or partnumber = 'FULO-0201'
							or partnumber = 'FULO-0301'
							or partnumber = 'AC_1701');

If you want to update after initial load, you can update in the CSV file and run the load again.

To clean up the data loaded in the database, run the following SQL statement:
delete from INVAVL where CATENTRY_ID in 
           (SELECT CATENTRY_ID
					  FROM CATENTRY 
					  WHERE partnumber = 'FULO-0101'
							or partnumber = 'FULO-0201'
							or partnumber = 'FULO-0301'
							or partnumber = 'AC_1701');