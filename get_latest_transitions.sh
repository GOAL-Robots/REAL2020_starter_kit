wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1_xpvadb2UR40Lu9ld3Ms6MDQoX144h80' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1_xpvadb2UR40Lu9ld3Ms6MDQoX144h80" -O transitions_355428.npz && rm -rf /tmp/cookies.txt
#unzip best_transitions.zip

#wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1_0t7P8OTa1u7CHZ5POv4GzTYeh_6WAg_' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1_0t7P8OTa1u7CHZ5POv4GzTYeh_6WAg_" -O VAE.zip && rm -rf /tmp/cookies.txt

#unzip VAE.zip

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1c-zFBm7Gtf1CzaeIN4NDU9YEgAo9Xilf' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1c-zFBm7Gtf1CzaeIN4NDU9YEgAo9Xilf" -O VAE_1080.zip && rm -rf /tmp/cookies.txt

unzip VAE_1080.zip
