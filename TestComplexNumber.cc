#include "TestComplexNumber.h"

CPPUNIT_TEST_SUITE_REGISTRATION(TestComplexNumber);
void TestComplexNumber::setUp() {
    a = new ComplexNumber(1.0, 2.0);
    b = new ComplexNumber(1.0, 2.0);
    c = new ComplexNumber(2.0, 4.0);
}
void TestComplexNumber::tearDown() {
    delete a;
    delete b;
    delete c;
}
void TestComplexNumber::testInit() {
    CPPUNIT_ASSERT(a -> realPart == 1.0);
}
void TestComplexNumber::testAdd() {
    CPPUNIT_ASSERT( *a + *b == *c);
}
void TestComplexNumber::testEquals() {
    CPPUNIT_ASSERT( *a  == *b);
    CPPUNIT_ASSERT(!( *a == *c));
}