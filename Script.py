import pandas as pd
import random
from faker import Faker

# Initialize Faker
fake = Faker()

# Perfume catalog (Creed inspired)
perfumes = [
    {"PerfumeName": "Creed Aventus", "FragranceFamily": "Woody", "Price": 350},
    {"PerfumeName": "Creed Green Irish Tweed", "FragranceFamily": "Fresh", "Price": 320},
    {"PerfumeName": "Creed Silver Mountain Water", "FragranceFamily": "Citrus", "Price": 330},
    {"PerfumeName": "Creed Viking", "FragranceFamily": "Spicy", "Price": 340},
    {"PerfumeName": "Creed Millesime Imperial", "FragranceFamily": "Floral", "Price": 360},
]

# Purchase channels
channels = ["Online", "In-store", "Reseller"]

# Generate synthetic dataset
data = []
for _ in range(500):  # number of rows
    perfume = random.choice(perfumes)
    quantity = random.randint(1, 3)
    discount = random.choice([0, 0, 5, 10, 15])  # most sales without discount
    total_amount = perfume["Price"] * quantity * (1 - discount / 100)

    record = {
        "CustomerID": fake.uuid4(),
        "Name": fake.name(),
        "Gender": random.choice(["Male", "Female"]),
        "AgeGroup": random.choice(["18-25", "26-35", "36-45", "46-60"]),
        "City": fake.city(),
        "Country": fake.country(),
        "PerfumeName": perfume["PerfumeName"],
        "FragranceFamily": perfume["FragranceFamily"],
        "Price": perfume["Price"],
        "Quantity": quantity,
        "Discount(%)": discount,
        "TotalAmount": round(total_amount, 2),
        "PurchaseChannel": random.choice(channels),
        "PurchaseDate": fake.date_between(start_date="-1y", end_date="today"),
    }
    data.append(record)

# Create DataFrame
df = pd.DataFrame(data)

# Save to CSV
df.to_csv("creed_perfume_sales.csv", index=False)

print("✅ Creed perfume dataset saved as creed_perfume_sales.csv")
