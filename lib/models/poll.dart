class Poll {
  String question;
  List options;
  bool multiple;

  Poll(this.question, this.options, [this.multiple = false]);
}
