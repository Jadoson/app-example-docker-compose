import os
import time

print("Быстрый тест OOM-killer")
print("Выделяем всю доступную память...")

chunks = []
try:
    for i in range(100):  # 100 итераций
        print(f"Блок {i+1}: 100 MB")
        chunks.append(bytearray(100 * 1024 * 1024))  # 100MB
        time.sleep(0.1)
    
    print("\n✅ Память выделена! OOM-killer должен сработать.")
    print("Удерживаю память...")
    
    while True:
        time.sleep(1)
        
except MemoryError:
    print("\n🔥 MemoryError! OOM-killer скоро вмешается...")
    time.sleep(10)
except KeyboardInterrupt:
    print("\nОсвобождение памяти...")