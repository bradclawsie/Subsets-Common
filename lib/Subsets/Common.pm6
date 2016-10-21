use v6;

unit module Subsets::Common:auth<bradclawsie>:ver<0.0.1>;

my package EXPORT::DEFAULT {

    subset PosInt of Int where * > 0;
    subset NegInt of Int where * < 0;
    subset ZeroInt of Int where * == 0;
    subset Int32 of Int where 2147483647 >= * >= -2147483648;
    subset UInt32 of UInt where * <= 4294967295;

    subset Pos of Numeric where * > 0;
    subset Neg of Numeric where * < 0;
    subset Zero of Numeric where * == 0;
    subset UNumeric of Numeric where * >= 0;

    subset Even of Int where * % 2 == 0;
    subset Odd  of Int where * % 2;

    subset Time::Hour12 of PosInt where * ~~ 1 .. 12;
    subset Time::Hour24 of Int    where * ~~ 0 .. 23;
    subset Time::Minute of Int    where * ~~ 0 .. 59;
    subset Time::Second of Int    where * ~~ 0 .. 59;

    subset NonEmptyStr of Str where *.chars > 0;
    subset EmptyStr of Str where *.chars == 0;
    subset ValueStr of Str where /\S/;

}
