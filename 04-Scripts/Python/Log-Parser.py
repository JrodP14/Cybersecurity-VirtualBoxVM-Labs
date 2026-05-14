#!/usr/bin/env python3

# ==========================================
# Log-Parser.py
# Simple log analysis and keyword detection
# ==========================================

from collections import Counter

print("=========================================")
print("             Log Parser Tool             ")
print("=========================================\n")

# Ask for log file
log_file = input("Enter path to log file: ")

# Suspicious keywords
keywords = [
    "failed",
    "error",
    "denied",
    "unauthorized",
    "invalid",
    "attack",
    "malware",
    "root",
    "admin"
]

try:

    with open(log_file, "r", encoding="utf-8", errors="ignore") as file:
        lines = file.readlines()

    print("\n=========================================")
    print("             Log Statistics              ")
    print("=========================================")

    print(f"\nTotal log entries: {len(lines)}")

    # Keyword analysis
    keyword_hits = Counter()

    print("\n=========================================")
    print("       Suspicious Keyword Matches        ")
    print("=========================================\n")

    for line_number, line in enumerate(lines, start=1):

        lower_line = line.lower()

        for keyword in keywords:

            if keyword in lower_line:

                keyword_hits[keyword] += 1

                print(f"[Line {line_number}] Keyword: '{keyword}'")
                print(line.strip())
                print()

    # Summary section
    print("=========================================")
    print("             Keyword Summary             ")
    print("=========================================\n")

    if keyword_hits:

        for keyword, count in keyword_hits.items():
            print(f"{keyword:<15} : {count}")

    else:
        print("No suspicious keywords detected.")

    print("\n=========================================")
    print("           Log parsing complete          ")
    print("=========================================")

except FileNotFoundError:
    print("\n[-] Log file not found.")

except Exception as error:
    print(f"\n[-] Error: {error}")
