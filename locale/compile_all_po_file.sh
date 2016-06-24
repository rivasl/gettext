#!/bin/bash


PO_FILE_arAE=/var/www/gettext/locale/ar_AE/LC_MESSAGES/messages.po
MO_FILE_arAE=/var/www/gettext/locale/ar_AE/LC_MESSAGES/messages.mo
msgfmt $PO_FILE_arAE --output-file=$MO_FILE_arAE


PO_FILE_ptBR=/var/www/gettext/locale/pt_BR/LC_MESSAGES/messages.po
MO_FILE_ptBR=/var/www/gettext/locale/pt_BR/LC_MESSAGES/messages.mo
msgfmt $PO_FILE_ptBR --output-file=$MO_FILE_ptBR


PO_FILE_esES=/var/www/gettext/locale/es_ES/LC_MESSAGES/messages.po
MO_FILE_esES=/var/www/gettext/locale/es_ES/LC_MESSAGES/messages.mo
msgfmt $PO_FILE_esES --output-file=$MO_FILE_esES





