# Jekyll Git Last Modified
_A simple plugin that adds `last_modified` dates to every page._

This plugin will add a data element to each post and page stating the time the entity was last modified, as determined by looking at the last commit affecting the source file.

This can be handy when generating sitemaps or simply reporting to users when you modified a file.

## Usage
To use this plugin include it in your plugins folder (generally `_plugins/`, Octopress uses `plugins/`).

You may then access the last modified date using whatever method you wish. The date will be returned as a `string`.

### Liquid
```liquid
{{ page.last_modified }}

go crazy with it
{{ page.last_modified | date_to_string }}
```

### Ruby
```rb
page.data["last_modified"]

# go crazy with it
require "time"
last_modified = DateTime.parse(page.data["last_modified"])
```


## License
[WTFPL v2](http://www.wtfpl.net/about/)