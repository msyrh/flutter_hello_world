void main(List<String> args) {
  // aritmathic operator
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); //result is a double
  assert(5 ~/ 2 == 2); // resutl is an int
  assert(5 % 2 == 1); // remainder
  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

  int a;
  int b;

  a = 0;
  b = ++a; // increment a before b gets its value
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // increment a after b gets its value
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // decrement a before b gets its value
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // decrement a after b gets its value
  assert(a != b); // -1 != 0

  // eauality and relational operators
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 2);
  assert(2 <= 3);

  // type test operator
  // as untuk memasukan object ke tipe tertentu jika anda yakin object tersebut meerupakan typenya

  // (employee as Person).firsName = 'Bob';

  // jika tidak yakin object adalah type t

  // if (employee is Person) {
  //   // type check
  //   employee.firstName = 'Bob';
  // }

  // assignment operators
  // a = value;
  // b ??= value;

  // =	*=	%=	>>>=	^=
  // +=	/=	<<=	&=	|=
  // -=	~/=	>>=

  var c = 2;
  c *= 3;
  assert(c == 6);

  // logical operator
  // !expr	inverts the following expression (changes false to true, and vice versa)
  // ||	logical OR
  // &&	logical AND

  // if(!done && (col == 0 || col ==3)){
  //   //do some
  // }

  // bitwise operator
  final value = 0x22;
  final bitmask = 0x0f;

  assert((value & bitmask) == 0x02); // AND
  assert((value & ~bitmask) == 0x20); // AND NOT
  assert((value | bitmask) == 0x2f); // OR
  assert((value ^ bitmask) == 0x2d); // XOR

  assert((value << 4) == 0x220); // Shift left
  assert((value >> 4) == 0x02); // Shift right

  // Shift right example that results in different behavior on web
  // because the operand value changes when masked to 32 bits:
  assert((-value >> 4) == -0x03);

  assert((value >>> 4) == 0x02); // Unsigned shift right
  assert((-value >>> 4) > 0); // Unsigned shift right

  // conditional expression
  // var visibilty = isPublic ? 'public' : 'private';
  // for check null
  // String playerName(String? name) => name ?? 'Guest';

  // slightly longer version uses ?: operator
  // String playerName(String? name) => name != null ? name : 'Guest';
  //very long version with if statement
  // String playerName(String? name) {
  //   if (name != null) {
  //     return name;
  //   } else {
  //     return 'Guest';
  //   }
  // }

  // cascade notation
  // var paint = Paint()
  // ..color = Colors.black
  // ..strokeCap = StrokeCap.round
  // ..strokeWidth = 5.0;

  // diatas sama dengan yang dibawah
  // var paint = Paint();
  // paint.color = Colors.black;
  // paint.strokeCap = StrokeCap.round;
  // paint.strokeWidth = 5.0;

  // jika disertai dengan null
  // querySelector('#confirm') // Get an object.
  // ?..text = 'Confirm' // Use its members.
  // ..classes.add('important')
  // ..onClick.listen((e) => window.alert('Confirmed!'))
  // ..scrollIntoView();

  // diatas nya sama dengan
  // var button = querySelector('#confirm');
  // button?.text = 'Confirm';
  // button?.classes.add('important');
  // button?.onClick.listen((e) => window.alert('Confirmed!'));
  // button?.scrollIntoView();

  // jika dengan cascade
  // final addressBook = (AddressBookBuilder()
  //     ..name = 'jenny'
  //     ..email = 'jenny@example.com'
  //     ..phone = (PhoneNumberBuilder()
  //           ..number = '415-555-0100'
  //           ..label = 'home')
  //         .build())
  //   .build();

  // hati hati tidak dapat dilakukan untuk void
  // var sb = StringBuffer();
  // sb.write('foo')
  //   ..write('bar'); // Error: method 'write' isn't defined for 'void'.

  // spread operator
  // untuk memecah list
  var a2 = [1, 2, 3];
  var b1 = [...a2, 5];

  // pther operators
  // () Function
  // [] subscript fooList[1]
  // ?[] conditional subscript access fooList?[1]
  // . member access foo.bar
  // ?. conditional member access foo?.bar
  // ! non-null assetation op foo!.bar
}
