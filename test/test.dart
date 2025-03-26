import 'package:test/test.dart';

void main() {
  // 예측되는 값을 여기서 미리 상수로 선언 할 수 있음
  final expected = '';

  // setUp: 각 테스트를 실행하기 이전에 반복적으로 실행할 준비 작업을 수행.
  setUp(() {
    // 테스트 실행 전의 준비 작업
  });

  group('테스트 코드 작성법', () {
    // test: 실제 테스트를 수행하는 메서드로, 개별 테스트 케이스 작성
    // - 첫 번째 매개변수는 테스트의 설명(문자열)
    // - 두 번째 매개변수는 테스트 로직을 포함하는 콜백 함수
    test('테스트 이름', () {
      // 특정 기능이나 메서드가 예상대로 동작하는지 테스트하는 코드
    });

    test('테스트 이름', () {
      // 특정 기능이나 메서드가 예상대로 동작하는지 테스트하는 코드
    });
  });

  // tearDown: 각 테스트 실행 후에 호출되어 자원 정리 작업을 수행.
  // - 예: 메모리 해제, 파일 닫기 등
  tearDown(() {
    // 테스트 실행 후의 정리 작업
  });
}
