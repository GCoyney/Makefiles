.PHONY = zipit 

zipit:
	zip files *.py

scopy: zipit
	scp files.zip jenkins@10.0.10.19:/home/jenkins
unzipit: scopy
	ssh jenkins@10.0.10.19 'unzip -o /home/jenkins/files.zip'
run: unzipit
	ssh jenkins@10.0.10.19 'python pythonscript1.py'
