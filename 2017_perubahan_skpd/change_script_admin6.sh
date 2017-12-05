#!/bin/sh
#script untuk change script edit_admin


cat edit_admin_persediaan6.sh | sed -e s/Dispu/DPUPR/g | sed -e s/dispu/dpupr/g \
	| sed -e s/KPDAD/Perpustakaan/g | sed -e s/kpdad/perpustakaan/g \
        | sed -e s/SNT/Sosial/g | sed -e s/snt/sosial/g \
        | sed -e s/BPMPD/DPMD/g | sed -e s/bpmpd/dpmd/g \
        | sed -e s/BPPAKB/DPPPA/g | sed -e s/bppakb/dpppa/g \
        | sed -e s/BPPKP/DKP/g | sed -e s/bppkp/dkp/g \
        | sed -e s/Perindagkop/DKUKMP/g | sed -e s/perindagkop/dkukmp/g \
        | sed -e s/KP2TPM/DPMPTSP/g | sed -e s/kp2tpm/dpmptsp/g \
        | sed -e s/BKD/BKPPD/g | sed -e s/bkd/bkppd/g \
        | sed -e s/DPPKAD/BKD/g | sed -e s/dppkad/bkd/g \
        | sed -e s/BLHK/DLH/g | sed -e s/blhk/dlh/g \
        | sed -e s/Disporaparbud/DKO/g | sed -e s/disporaparbud/dko/g \
        | sed -e s/B40/DPKP/g | sed -e s/b40/dpkp/g \
        | sed -e s/B41/Disnakertrans/g | sed -e s/b41/disnakertrans/g \
        | sed -e s/B42/DPPKB/g | sed -e s/b42/dppkb/g \
        | sed -e s/B43/Kominfo/g | sed -e s/b43/kominfo/g \
        | sed -e s/B44/Kearsipan/g | sed -e s/b44/kearsipan/g \
        | sed -e s/B45/Perikanan/g | sed -e s/b45/perikanan/g \
        | sed -e s/B46/Pariwisata/g | sed -e s/b46/pariwisata/g \
        | sed -e s/B47/Perdagangan/g | sed -e s/b47/perdagangan/g \
        | sed -e s/B48/BPPD/g | sed -e s/b48/bppd/g > edit_admin_persediaan8.sh
