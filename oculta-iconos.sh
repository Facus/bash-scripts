#!/bin/bash
# Script para Mostrar/Ocultar iconos del Escritorio (Gnome 3).
# Creado por Facus <facundo@podhead.com.ar>

ICONOS=`gsettings get org.gnome.desktop.background show-desktop-icons`
if [ "$ICONOS" = "true" ]
then
gsettings set org.gnome.desktop.background show-desktop-icons false
else
gsettings set org.gnome.desktop.background show-desktop-icons true
fi
