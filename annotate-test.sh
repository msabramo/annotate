#!/usr/bin/env roundup

describe "annotate"

it_displays_started_message() {
  first_line=$(./annotate echo "Hello world" | head -n 1)
  [[ $first_line == ??:??:??" "*"I: Started"* ]]
}

it_displays_annotated_output() {
  first_line=$(./annotate echo "Hello world" | grep 'Hello world')
  [[ $first_line == ??:??:??" "*"O: Hello world" ]]
}

it_displays_finished_message() {
  last_line=$(./annotate echo "Hello world" | tail -n 1)
  [[ $last_line == ??:??:??" "*"I: Finished with exitcode 0"* ]]
}
