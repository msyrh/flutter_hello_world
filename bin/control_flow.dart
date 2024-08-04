// if
import 'function.dart';

  // exhaustiveness checking (sdk >>=3)
  // sealed class Shape{}
  // class Square implements Shape {
  //   final double length;
  //   Square(this.length);

  // }
  // class Circle implements Shape{
  //   final double radius;
  //   Circle(this.radius);
  // }

  // double calculateArea(Shape shape) => switch (shape) {
  //     Square(length: var l) => l * l,
  //     Circle(radius: var r) => math.pi * r * r
  //   };

void main() {
  // if (isRaining) {
  //   you.bringRainCoat();
  // } else if (isSnowing()) {
  //   you.wearJacket();
  // } else {
  //   car.putTopDown();
  // }

  // if-case (language version < 3)
  // if(pair case [int x, int y]) return Point(x,y);
  // Otherwise, control flow progresses to the else branch to execute, if there is one:
  // if( pair case [34, 35]){
  //   print('was coordinate array $x, $y');
  // } else {
  //   throw FormatException('Invalid coordinates.');
  // }

  // switch statements
  // var command = "OPEN";
  // switch (command) {
  //   case 'CLOSED':
  //     executeClosed();
  //   case 'PENDING':
  //     executePending();
  //   case 'APPROVED':
  //     executeApproved();
  //   case 'DENIED':
  //     executeDenied();
  //   case 'OPEN':
  //     executeOpen();
  //   default:
  //     executeUnknown();
  // }

  // Empty cases fall through to the next case, allowing cases to share a body. For an empty case that does not fall through, use break for its body. For non-sequential fall-through, you can use a continue statement and a label:

  // switch (command) {
  //   case 'OPEN':
  //     executeOpen();
  //     continue newCase; // Continues executing at the newCase label.

  //   case 'DENIED': // Empty case falls through.
  //   case 'CLOSED':
  //     executeClosed(); // Runs for both DENIED and CLOSED,

  //   newCase:
  //   case 'PENDING':
  //     executeNowClosed(); // Runs for both OPEN and PENDING.
  // }

  // switch expression (sdk v>=3)
  // switch statement change to expression
  // Where slash, star, comma, semicolon, etc., are constant variables...
  // switch (charCode) {
  //   case slash || star || plus || minus: // logical pattern
  //     token = operator(charCodes);
  //   case coma || semicolon: // logical-or pattern
  //     token = punctuation(charCodes);
  //   case >= digit0 && <= digit9: // relational and logical-and patterns
  //     token = number();
  //   default:
  //   throw FormatException('Invalid');
  // }
  // switch expression after made
  // var token = switch (charCode){
  //   slash|| star || plus || minus => operator(charCode),
  //   comma || semicolon =< punctuation(charCode),
  //   >= digit0 && <= digit9 => number(),
  //   _=> throw FormatException('Invalid');
  // }

  // Guard clause
  // Switch statement:
  // switch (something) {
  //   case somePattern when some || boolean || expressions:
  //   // guard clause
  //   body;
  // }

  // // Switch expression:
  // var value = switch (something) {
  //   somePattern when some || boolean || expression => body,
  //   // guard clause
  // }

  // // if-case statement:
  // if (something case somePattern when some || boolean || expression){
  //   // guard clause 
  //   body;
  // }

  

}
