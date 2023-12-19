import 'dart:io';
import 'book.dart';
import 'member.dart';
import 'loan.dart';

class Library {
  List<Book> books = [];
  List<Member> members = [];
  List<Loan> loans = [];

  void addBook(Book book) {
    books.add(book);
  }

  void addMember(Member member) {
    members.add(member);
  }

  void loanBook(int memberId, int bookId) {
    final member = members.firstWhere((m) => m.id == memberId);
    final book = books.firstWhere((b) => b.id == bookId);
    if (book.isAvailable) {
      final loan = Loan(member, book, DateTime.now());
      loans.add(loan);
      book.isAvailable = false;
    }
  }

  void returnBook(int bookId) {
    Loan? loan;
    try {
      loan = loans.firstWhere((l) => l.book.id == bookId);
    } catch (e) {
      // 대출 목록에 해당 bookId의 책이 없을 경우 처리
      loan = null;
    }

    if (loan != null) {
      loan.book.isAvailable = true;
      loans.remove(loan);
    }
  }

  List<Loan> getLoansSortedByDueDate() {
    loans.sort((a, b) => a.dueDate.compareTo(b.dueDate));
    return loans;
  }

  void saveToCSV(String filePath) {
    final file = File(filePath);
    final sink = file.openWrite();
    sink.writeln(
        'MemberId,MemberName,BookId,BookTitle,LoanDate,DueDate,IsExtended');
    for (final loan in loans) {
      sink.writeln(
          '${loan.member.id},${loan.member.name},${loan.book.id},${loan.book.title},${loan.loanDate},${loan.dueDate},${loan.isExtended}');
    }
    sink.close();
  }

  void loadFromCSV(String filePath) {
    final file = File(filePath);
    final lines = file.readAsLinesSync();
    for (final line in lines.skip(1)) {
      final parts = line.split(',');
    }
  }
}

void main() {
  final library = Library();

  // 테스트를 위한 몇 가지 회원 데이터 추가
  library.addMember(Member(
      1, '홍길동', '서울', '010-1234-5678', DateTime(1990, 1, 1), DateTime.now()));
  library.addMember(Member(
      2, '이순신', '부산', '010-2345-6789', DateTime(1980, 2, 2), DateTime.now()));

  while (true) {
    print('1. 회원관리 2. 회원등록 3. 회원수정 4. 회원삭제 5. 삭제취소');
    print('원하는 기능의 번호를 입력하세요: ');
    final input = stdin.readLineSync();

    switch (input) {
      case '1':
        // 회원 관리
        print('회원 목록:');
        library.members.forEach((member) {
          print('ID: ${member.id}, 이름: ${member.name}');
        });
        break;
      case '2':
        // 회원 등록
        print('회원 등록 기능은 아직 구현되지 않았습니다.');
        break;
      case '3':
        // 회원 수정
        print('회원 수정 기능은 아직 구현되지 않았습니다.');
        break;
      case '4':
        // 회원 삭제
        print('회원 삭제 기능은 아직 구현되지 않았습니다.');
        break;
      case '5':
        // 삭제 취소
        print('삭제 취소 기능은 아직 구현되지 않았습니다.');
        break;
      default:
        print('잘못된 입력입니다. 다시 시도해주세요.');
        break;
    }
  }
}
