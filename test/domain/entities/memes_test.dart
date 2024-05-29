import 'package:flutter_test/flutter_test.dart';

import '../../mocks/migrated_mocks.dart';

void main() {
  test('will test our memes entities fields', () {
    expect(mockMemesEntities.id, '1');
    expect(mockMemesEntities.name, 'Dhet');
    expect(mockMemesEntities.url, 'https://abcd.com');
    expect(mockMemesEntities.width, 1523);
    expect(mockMemesEntities.height, 234);
    expect(mockMemesEntities.boxCount, 2);
  });
}
