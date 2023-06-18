#!/usr/bin/env bash

rm -rf bin
rm -rf publish
dotnet publish -f net7.0-android33.0 -r android-arm64 --self-contained true -c Release -p:AndroidSigningKeyAlias=mauiblazor -p:AndroidSigningKeyStore=MauiBlazor.keystore -p:AndroidKeyStore=true -p:AndroidSigningKeyPass=file:AndroidSigningPassword.txt -p:AndroidSigningStorePass=file:AndroidSigningPassword.txt --output ./publish/android/
dotnet publish -f net7.0-ios -r ios-arm64 --self-contained true -c Release --output ./publish/ios/