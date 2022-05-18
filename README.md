# MMMSpecs

A CocoaPods spec repository for pods made by [Media.Monks](https://www.mediamonks.com/).

This is not meant to be a private repo. It was created for convenience of referencing our both published and not yet published (in the official Cocoapods repo) pods. So instead of specifying a github URL for every unpublished pod like this:

```Ruby
pod 'MMMArrayChanges', :git => 'https://github.com/mediamonks/MMMArrayChanges.git'
...
```

you can now put two lines in the beginning of the `Podfile`:

```Ruby
source 'https://github.com/mediamonks/MMMSpecs.git'
source 'https://cdn.cocoapods.org/'
```

(The second line is the main/default CocoaPods spec repo that has to be mentioned when custom sources are used.)

And then reference our pods by their names only:

```Ruby
pod 'MMMArrayChanges'
...
```

---
