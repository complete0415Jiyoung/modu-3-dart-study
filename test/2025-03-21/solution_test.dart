import 'package:test/test.dart';

import '../../assignments/2025-03-21/solution.dart';

void main() {
  group('obj 인스턴스기본', () {
    final Book book1 = Book(
      title: '생존코딩2',
      comment: 'flutter',
      publishDate: DateTime(2024, 1, 1),
    );

    final Book book2 = Book(
      title: '생존코딩1',
      comment: 'flutter',
      publishDate: DateTime(2023, 1, 1),
    );

    final Book book3 = Book(
      title: '생존코딩3',
      comment: 'flutter',
      publishDate: DateTime(2025, 1, 1),
    );

    final Book book4 = Book(
      title: '생존코딩3',
      comment: 'flutter',
      publishDate: DateTime(2025, 1, 1),
    );

    final List<Book> bookList = [book1, book2, book3, book4];
    test('operator', () {
      expect(book3 == book4, true);
    });
    test('hashCode', () {
      expect(book3.hashCode == book4.hashCode, true);
    });

    test('copyWith 검증', () {
      final Book book4 = book1.copyWith(title: '새로운 생존코딩');
      expect(book4.title, '새로운 생존코딩');
      expect(book4.comment, book1.comment);
      expect(book4.publishDate, book1.publishDate);
    });

    test('toString() 검증', () {
      expect(
        book1.toString(),
        'Book(title: 생존코딩1, publishDate: ${book1.publishDate}, comment: Dart)',
      );
    });

    test('최신순 정렬', () {
      bookList.sort((a, b) => b.publishDate.compareTo(a.publishDate));

      List<Book> expectedOrder = [book3, book4, book1, book2];
      expect(bookList, expectedOrder);
    });
  });
}
