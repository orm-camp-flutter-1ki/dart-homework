import 'member.dart';
import 'book.dart';

class Loan {
  Member member;
  Book book;
  DateTime loanDate;
  late DateTime dueDate;
  bool isExtended;

  Loan(this.member, this.book, this.loanDate, {this.isExtended = false}) {
    dueDate = loanDate.add(Duration(days: 14));
  }

  void extendLoan() {
    if (!isExtended) {
      dueDate = dueDate.add(Duration(days: 7));
      isExtended = true;
    }
  }

  @override
  String toString() {
    return 'Loan{member: ${member.name}, book: ${book.title}, loanDate: $loanDate, dueDate: $dueDate, isExtended: $isExtended}';
  }
}
