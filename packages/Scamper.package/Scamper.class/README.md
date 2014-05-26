a basic web browser.

It downloads things in a background thread; the background thread puts downloaded objects onto downloadQueue as they arrive.  The queue is checked in the step method.

A custom start page is provided for.  It's not as convenient as bookmarks are, but it does have a lot of flexibility--the user can put anything on the start page that is desired.

There is a hook for displaying the "lint" of a page; currently it's not a very effective linter.