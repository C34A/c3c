
fn void test()
{
    $switch (3):
        $case 2:
            return;
        $default:
        $default: // #error: More than one $default is not allowed
            return;
    $endswitch;
}

fn void test1()
{
    $switch (-1):
        $case -1:
            return;
        $case -1: // #error: '-1' appears more than once
            return;
        $default:
            return;
    $endswitch;
}


fn void test3()
{
    $switch (3):
        $case 3:
            return;
        $case 123.0: // #error: Implicitly casting 'double' to 'int' is not permitted
            return;
        $default:
            return;
    $endswitch;
}