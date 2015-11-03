module LoC

import lang::java::m3::Core;
import lang::java::jdt::m3::Core;
import Relation;
import IO;

//smallsql0.21_src

public M3 myModel = createM3FromEclipseProject(|project://Test_Java_Project|);

public rel[loc,loc] comments = myModel@documentation;

void testm4(rel[loc,loc] locas) {
	for(i<-locas){
	
		tempFile = readFile(i[0]);
		println("<i> \n <i[1].offset> <i[1].length> \n--\n<tempFile[i[1].offset..i[1].offset+i[1].length]>\n--");
	}
}