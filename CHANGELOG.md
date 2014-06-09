## 1.2.0

* Enhancement: Support Ubuntu 14.04+ C++ packages

## 1.1.0

* [#1][]: Migrating from yum::epel to new yum-epel cookbook

## 1.0.1

* minitest fixes

## 1.0.0

* Use `node['protobuf']['install_type']` to override auto-detection (defaults to nil -- auto-detection)

## 0.2.0

* Recipes for correctly installing (via archive or package) C++, Java, or Python per platform, platform_version, and if `node['protobuf']['install_type']` is "archive"
* Remove package recipe (split recipes do better job)

## 0.1.2

* Notify ldconfig immediately on archive install

## 0.1.1

* Move apt/yum::epel dependency handling to each package recipe

## 0.1.0

* Initial release

[#1]: https://github.com/bflad/chef-protobuf/issues/1
