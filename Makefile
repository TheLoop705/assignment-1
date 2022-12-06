mkdir -p data
ifeq ($(OS),Windows_NT)
		# Windows
		download dataset:
		Invoke-WebRequest -Uri "https://archive.ics.uci.edu/ml/machine-learning-databases/00199/MiniBooNE_PID.txt" -OutFile "./data/MiniBooNE_PID.txt"

else
		# Linux 
		download dataset:
		wget https://archive.ics.uci.edu/ml/machine-learning-databases/00199/MiniBooNE_PID.txt -O "./data/MiniBooNE_PID.txt"
endif
