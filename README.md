# Insufficient Error Handling in Dart Async Function

This example demonstrates a common error in Dart asynchronous programming: insufficient error handling.  The provided `fetchData` function uses a `try-catch` block, but only prints the error to the console. This approach lacks robustness. A more robust solution is needed for production applications.

## Problem

The `fetchData` function fetches data from an API.  If an error occurs, the error message is printed to the console using `print`, but no other action is taken. This can lead to unexpected behavior or crashes in a production environment.

## Solution

The solution involves a more robust error-handling mechanism, potentially including logging to a service and providing user-friendly feedback to the user.