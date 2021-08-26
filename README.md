Redmine plugin "archive issue categories"
=========================================

This plugin is a fork of https://github.com/tofi86/redmine_archive_issue_categories.
Since several files are more or less a copy with adaptions of the original redmine source, the plugin will only work for specific versions.

Currently this fork can run with 4.2.2. 

------------
Normal redmine behaviour when deleting unused/old issue categories is, that in old tickets that were once assigned to the now deleted category, you only see the category ID anymore instead of the category name.

So checking back on old issues is always a bit odd as you don't see all the information needed.

This Redmine plugin now allows you to archive issue categories. This means, to deactivate and hide them from the user without deleting them. This is nice because it doesn't break old tickets :smiley:

This plugin is an attempt to solve redmine issue [#16188](http://www.redmine.org/issues/16188).

* This plugin works with Redmine 4.2.2
  * *`master` branch contains plugin with support for Redmine 4.2.2*
  * *Checkout branch `redmine/version-4.2.2` if you want support for Redmine 4.2.2*
* The original plugin is listed in the [redmine.org plugin repository](http://www.redmine.org/plugins/redmine_archive_issue_categories), but breaks with Redmine 4.x

Installation
------------

* Clone or [download](https://github.com/tza/redmine_archive_issue_categories/releases) this repo into your **redmine_root/plugins/** folder

```
$ git clone https://github.com/tza/redmine_archive_issue_categories.git
```
* You have to run the plugin rake task *(from the Redmine root directory)* to provide the assets and migrate the database schema:

```
$ rake redmine:plugins:migrate RAILS_ENV=production
```

* Check redmine plugin installation guide for further plugin installation instructions
* Restart redmine


License
-------

*redmine_archive_categories* plugin is released under the MIT License.
