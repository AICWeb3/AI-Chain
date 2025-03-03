from phe import paillier
import numpy as np

# Generate encryption keys
public_key, private_key = paillier.generate_paillier_keypair()

# Encrypt data
data = [10, 20, 30]
encrypted_data = [public_key.encrypt(x) for x in data]

# Homomorphic computation (encrypted summation)
encrypted_sum = sum(encrypted_data)

# Decrypt result
decrypted_sum = private_key.decrypt(encrypted_sum)
print("Decrypted sum:", decrypted_sum)