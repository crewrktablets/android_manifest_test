#!/bin/bash
if [ ! -s ".repo" ];
then
    repo init -u https://github.com/CyanogenMod/android.git -b cm-10.1
fi
if [ ! -s ".repo/local_manifests" ];
then 
    mkdir .repo/local_manifests
fi
if [ ! -L ".repo/local_manifests/crewrktablets_manifest.xml" ];
then 
   ln -s ../../local_manifest.xml .repo/local_manifests/crewrktablets_manifest.xml
fi