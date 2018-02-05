The default filters in Opencart uses logic "OR" for all values, regardless of the filter group.

FixFilter modifies the default Opencart 2.0 filters to filter products with "OR" (products in group) and "AND" (for GROUPS) logic.

Designed for Opencart versions 2.0.0.0 - 3.0.2.x
Does not change core files or DB, works through OCMOD

This fix is not necessary if you use a third-party filter (such as FilterPro, MegaFilter etc)


Based on this solution for Opencart 1.5.x
http://www.opencart.com/index.php?route=extension/extension/info&extension_id=11707


Install 2x:
-----------
1. Upload file fix_filter.ocmod.xml from folder 2x in Extensions->Installer
2. Refresh the modifications cache (press Refresh button) in Extensions->Modifications


Install 3x:
-----------
1. Upload file fix_filter.ocmod.zip from folder 3x in Extensions->Installer
2. Refresh the modifications cache (press Refresh button) in Extensions->Modifications

Don't forget to refresh modifications cache after install!



=======================
Thanks for your choise!

More extensions:
https://www.opencart.com/index.php?route=marketplace/extension&filter_member=AlexDW