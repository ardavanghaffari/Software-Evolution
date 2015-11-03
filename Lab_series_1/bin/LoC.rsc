module LoC

import lang::java::m3::Core;
import lang::java::jdt::m3::Core;
import Relation;
import IO;

//smallsql0.21_src

public M3 myModel = createM3FromEclipseProject(|project://Test_Java_Project|);

/*

Make the total list a SET so there are no duplicates

we are going to make a list of:
- Allclasses = myModel@declarations, contains EVERYTHING <- TODO
- DocumentedClasses = the already exisiting list of myModel@documentations (- the comments <- TODO)

so we will do Allclasses - DocumentedCLasses in order to get the full list of ALL classes

*/


public rel[loc,loc] allClasses = myModel@declarations;

public rel[loc,loc] comments = myModel@documentation;


void testm4(rel[loc,loc] locas) {
	for(i<-locas){
	
		/*
		//this check has been made by the teacher in order to check for interface (e.g. not java+compilation units)
		if(i[0]
		
		if (x <- myModel@declarations[|java+interface:///InvalidQuantityListener|]) {
		
			println(readFile(x.top));
			
		}*/
		
		tempFile = readFile(i[0]);
		
		
		theComment = tempFile[i[1].offset..i[1].offset+i[1].length];
		println("<i[0]> \n <i[1].offset> <i[1].length> \n--\n<theComment>\n----------------------------------\n\n");
		
	}
}