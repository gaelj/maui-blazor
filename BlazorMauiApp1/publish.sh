#!/usr/bin/env bash

dotnet publish -f net7.0-android33.0 -c Release -p:AndroidSigningKeyAlias=mauiblazor -p:AndroidSigningKeyStore=../MauiBlazor.keystore -p:AndroidKeyStore=true -p:AndroidSigningKeyPass=file:../AndroidSigningPassword.txt -p:AndroidSigningStorePass=file:../AndroidSigningPassword.txt