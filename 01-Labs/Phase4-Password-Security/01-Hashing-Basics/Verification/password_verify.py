import hashlib

#Simulated stored password hash
stored_hash = hashlib.sha256("Password123!".encode()).hexdigest()

print ("=== Password Verification Demo ===")
print (f"Stored SHA256 Hash:\n{stored_hash}\n")

#Simulated user login attempt
user_input = input("Enter password to verify: ")

#Hash the entered password
input_hash = hashlib.sha256(user_input.encode()).hexdigest()

print ("\nGenerated Hash:")
print (input_hash)

#Compare hashes
if input_hash == stored_hash:
    print ("\n[+] Password verification successful.")
else:
    print("\n[-] Password verification failed.")
