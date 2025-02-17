# Unhandled Exception in `http.get` Request

This repository demonstrates a common but frustrating issue in Dart's `http` package:  unhandled exceptions during `http.get` requests that lack informative error messages. The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a more robust solution.

## Problem

The original code uses a `try-catch` block, but the exceptions thrown by `http.get` can be vague.  This makes diagnosing network errors or API issues extremely challenging.

## Solution

The improved code adds more detailed error handling to provide better context when an error occurs. This includes checking the response status code for non-200 responses and logging the full exception details for debugging.