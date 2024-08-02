import redis

# Connect to the Redis service
r = redis.Redis(host='redis', port=6379)

# Set a key-value pair in Redis
r.set('key', 'value')

# Get the value for the key from Redis
value = r.get('key')
print(f'The value for "key" is {value.decode("utf-8")}')