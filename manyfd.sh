#!/usr/bin/bash

echo "sortie␣de␣$USER"  >&1
echo "erreur␣de␣$USER"  >&2
echo "écriture␣de␣$USER"  >/tmp/fichiercds
cat</tmp/fichiercds  >&2
