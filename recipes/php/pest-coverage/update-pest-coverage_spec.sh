# shellcheck shell=sh

Describe 'Pest code coverage accessible badge recipe'
  It 'replaces Coverage: line in README.md with $PEST_COVERAGE value'
   
    # setup test /tmp dir
    rm -Rf /tmp/pestcoveragetest
    mkdir -p /tmp/pestcoveragetest

    # copy recipe files to /tmp
    cp ./recipes/php/pest-coverage/* /tmp/pestcoveragetest/

    # run script
    cd /tmp/pestcoveragetest

    # set expected env var
    PEST_COVERAGE="75%"

    # load expected README.md's contents
    EXPECTED_README_CONTENTS=`cat EXPECTED_README.md`

    When run source ./update-pest-coverage.sh
    The contents of file "README.md" should equal "$EXPECTED_README_CONTENTS"
  End

  It 'fails with error without required input var'
   
    # setup test /tmp dir
    rm -Rf /tmp/pestcoveragetest
    mkdir -p /tmp/pestcoveragetest

    # copy recipe files to /tmp
    cp ./recipes/php/pest-coverage/* /tmp/pestcoveragetest/

    # run script
    cd /tmp/pestcoveragetest

    # load expected README.md's contents
    EXPECTED_README_CONTENTS=`cat EXPECTED_README.md`

    When run source ./update-pest-coverage.sh
    The error should equal "Missing PEST_COVERAGE variable in your GitHub Action"
    The status should be failure
  End
End
