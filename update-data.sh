https://docs.google.com/spreadsheets/d/e/2PACX-1vQe-Rz1wk0QEYf-IxnBvT-D_wnVRKuU9ENBy-w7ZHuYJvOMFWqNHKnNSQJuxAI0mRXF7ADQH5wvohxq/pub?gid=0&single=true&output=csv


echo "Updating register data!"

rm ./data/registerData.csv

wget --output-file="./logs.csv" "https://docs.google.com/spreadsheets/d/e/2PACX-1vQe-Rz1wk0QEYf-IxnBvT-D_wnVRKuU9ENBy-w7ZHuYJvOMFWqNHKnNSQJuxAI0mRXF7ADQH5wvohxq/pub?gid=0&single=true&output=csv" -O "./data/registerData.csv"

