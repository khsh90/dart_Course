void main() {
  var emails = [
    'khaled@gmail.com',
    'ahmad@yahoo.com',
    'ahmad@gmaail.com',
    'wqq@llol.com'
  ];

  var knownDomains = ['gmail.com', 'yahoo.com'];

  var filter = filterDomains(emails, knownDomains);

  print(filter);
  // ---------------------------------------------
  // another way using for in loop complex way

  var unknownDomain = [];
  for (var email in emails) {
    var lastEmailDomain = email.split('@').last;
    if (!knownDomains.contains(lastEmailDomain))
      unknownDomain.add(lastEmailDomain);
  }

  print(unknownDomain);
  // -----------------------------------------------------------
}
// the soimplest way.
Iterable<String> filterDomains(
        List<String> emails, List<String> knownDomains) =>
    emails
        .map((e) => e.split('@').last)
        .where((element) => !knownDomains.contains(element));
