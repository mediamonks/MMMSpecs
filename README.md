# MMMSpecs

A CocoaPods spec repository for pods made by [MediaMonks](https://www.mediamonks.com/).

This is not meant to be a private repo. It was created for convenience of referencing our both published and published pods,  so instead of specifying a github URL for every unpublished pod like this:

```Ruby
pod 'MMMArrayChanges', :git => 'https://github.com/mediamonks/MMMArrayChanges.git'
...
```

you can now put a single line in the beginning of the `Podfile`:

```Ruby
source 'git@github.com:mediamonks/MMMSpecs.git'
```

And then continue referencing the pods by their names only:

```Ruby
pod 'MMMArrayChanges'
...
```

---
