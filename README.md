# JellyFin_Overall_MetadataRemover

# SvalbazNet: Overall_MetaDataRemover.ps1

## Target
TV & Movies

## Description
This script scans all folders in `$rootTV` and `$rootMovies` for metadata files (e.g., *.nfo, *.jpg, *.png, *.xml) and removes them. It helps clear out unnecessary files that may have been generated during a previous library setup or renaming process.

## Purpose
After a messy start with JellyFin, this script was created to remove metadata and image files left behind in the TV and Movie library folders. The goal is to clear these files before rescanning the entire library in JellyFin.

## Safe Mode
This script runs in "SAFE MODE" by default. It will only display the items it intends to delete (i.e. using the `Write-Host`) without actually deleting them. To apply the changes, remove the `-WhatIf` parameter. You'll still get your Write-Host but it will actually remove them this time.

## Usage
Run the script to remove metadata and image files from your TV and movie folders. The script will show which files it will remove, and only once you disable `-WhatIf` will it perform the deletions.
