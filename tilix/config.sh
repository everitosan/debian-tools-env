#!/bin/bash
tilix_profile_path="/etc/profile.d";
cd "${tilix_profile_path}";
tilix_vte_path=$(ls | grep "vte-" | grep ".sh");
ln -s "${tilix_profile_path}/${tilix_vte_path}" "./vte.sh";

