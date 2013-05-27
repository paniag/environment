// .rootalias.C
// Mac Radigan
//
#include <stdio.h>
#include <stdlib.h>

#include "TNtuple.h"
#include "TBrowser.h"
#include "TASImage.h"

void test() {
  TNtuple *tuple = new TNtuple("test", "test", "x:y:z");
  tuple->ReadFile("AB.dat", "", ',');
  tuple->Draw("x:y", "z", "surf");
}

bool fexists(const char* filename) {
  return fopen(filename, "r");
}

TNtuple* loadStock(char *symbol) {
  char filename[255];
  sprintf(filename, "%s.dat", symbol);
  TNtuple *tuple = new TNtuple(symbol, symbol, "open:close:high:low:volume");
  tuple->ReadFile(filename, "", ',');
  fprintf(stdout, "loading %s\n", filename);
  return tuple;
}

void loadShared() {
  if(fexists("shared.o") && !fexists("shared_c.d")) {
    gSystem->CompileMacro("shared.c");
  }
  //gSystem->Load(“shared.h+”);
  //gSystem->CompileMacro("/Users/mac/temp/root/shared.c", "kO-", "", ".");
  //gSystem->CompileMacro("shared.c");
}

TASImage* imread(char *filename) {
  return new TASImage(filename);
}

TBrowser* browse() {
  return new TBrowser();
}

//TFile *f = TFile::Open("test.root", "update");
// *EOF*
