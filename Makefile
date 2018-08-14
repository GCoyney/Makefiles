.PHONY = deltxt echotxt readfile variable githash home
#txtinput = ${shell read txtinput} 
MESSAGE = good evening message
hash = ${shell git rev-parse --verify HEAD}
homepath = ${shell whoami}

deltxt:
	rm -f *.txt
echotxt:
	@echo "hello my friend" >> textfile
readfile:
	@cat textfile
variable:
	@echo "${MESSAGE}"
githash:
	@echo "${hash}"	
home:
	@echo "${homepath}" 
ifneq (,$(findstring Z,${homepath}))
	@echo "$/home/${homepath}"
else
	${error "Broketing"}
endif
