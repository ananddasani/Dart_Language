//to pass default paramter we can use --> : & =

void enableFlages({bool bold = false, bool hidden = false}) {
  if (bold) print("Bold");
  if (hidden) print("Hidden");
} // this is also kind of named optional parameter

void main() {
  enableFlages(bold: true);
  //so bold will be true and hidden will be false by default
}
