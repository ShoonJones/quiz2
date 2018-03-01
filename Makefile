all: build doczip

build: collegemain.cc college.cc course.cc
	g++ collegemain.cc college.cc course.cc 
doc:
	@doxygen -g quiz2.conf
	@doxygen quiz2.conf

myexe: collegemain.cc college.cc course.cc
	g++ collegemain.cc college.cc course.cc

doczip: 
	tar -cvf quiz2_archive.tar html latex
	
clean:
	rm quiz2_archive.tar quiz2.conf a.out
