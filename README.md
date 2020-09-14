# About

## What is this?

This is the Haxe API to load **LEd Project JSON** files.

*LEd is a modern and open-source 2D level editor.*

[LEd official page](https://deepnight.net/tools/led-2d-level-editor)


## Features

 - **Completely typed at compilation**: if you rename any element in your project (ie. level, layer, entity, etc.), the corresponding references in your code will break accordingly, avoiding typical errors or mistypings.

## Documentation

You can check the sample HX files in ``samples`` folder.

Read full documentation and tutorials here:

https://deepnight.net/docs/led-documentation/json-format/haxe-api/

## Samples

Step 1: Generate the HXML files for each sample:

```
haxe genSamples.hxml
```

Step 2: Build & test a sample (requires HashLink):

```
cd samples
haxe SomeSampleName.hxml
```