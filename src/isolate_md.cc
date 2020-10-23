/*
 * isolate_md.cpp
 *
 *  Created on: Aug 14, 2014
 *      Author: lafavemc
 */

#include <string>
#include <vector>

using std::string;
using std::vector;

#include "isolate_md.hh"

string isolate_md(const vector<string>& samline) {
  string md;

  for (int n = 11; n != samline.size(); ++n) {
    if (samline[n].substr(0, 5) == "MD:Z:") {
      md = samline[n].substr(5, samline[n].size() - 5);
    }
  }

  return md;
}
