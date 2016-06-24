#!/bin/bash

POT_FILE=/var/www/hph/resources/local/messages.pot

#-----------------------------------------------------------------
DIR=ar_SA
OLD_PO=/var/www/hph/resources/local/$DIR/LC_MESSAGES/messages.po

# Mezclar el viejo con la plantilla nueva
msgmerge --update $OLD_PO $POT_FILE


#-----------------------------------------------------------------
DIR=pt_BR
OLD_PO=/var/www/hph/resources/local/$DIR/LC_MESSAGES/messages.po

# Mezclar el viejo con la plantilla nueva
msgmerge --update $OLD_PO $POT_FILE


#-----------------------------------------------------------------
DIR=de_DE
OLD_PO=/var/www/hph/resources/local/$DIR/LC_MESSAGES/messages.po

# Mezclar el viejo con la plantilla nueva
msgmerge --update $OLD_PO $POT_FILE


#-----------------------------------------------------------------
DIR=es_ES
OLD_PO=/var/www/hph/resources/local/$DIR/LC_MESSAGES/messages.po

# Mezclar el viejo con la plantilla nueva
msgmerge --update $OLD_PO $POT_FILE


#-----------------------------------------------------------------
DIR=fr_FR
OLD_PO=/var/www/hph/resources/local/$DIR/LC_MESSAGES/messages.po

# Mezclar el viejo con la plantilla nueva
msgmerge --update $OLD_PO $POT_FILE


#-----------------------------------------------------------------
DIR=it_IT
OLD_PO=/var/www/hph/resources/local/$DIR/LC_MESSAGES/messages.po

# Mezclar el viejo con la plantilla nueva
msgmerge --update $OLD_PO $POT_FILE
