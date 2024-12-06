import psycopg2
import pandas as pd

# Define your database connection parameters
host = 'localhost'         # or your DB host
database = 'Auto_rental'
user = 'postgres'           # or your DB user
password = 'Luffy10$'       # your DB password
port = '5432'               # default PostgreSQL port

# Connect to your PostgreSQL database
try:
    connection = psycopg2.connect(
        host=host,
        database=database,
        user=user,
        password=password,
        port=port
    )
    print("Connection successful!")

    # Create a cursor object to interact with the database
    cursor = connection.cursor()

    # Define your SQL query
    query = "SELECT * FROM VEHICLES;"  # Example query to fetch data from 'customers' table

    # Execute the query
    cursor.execute(query)

    # Fetch all results from the executed query
    results = cursor.fetchall()

    # Convert the results to a pandas DataFrame for easy viewing
    df = pd.DataFrame(results, columns=['CustomerID', 'FirstName', 'LastName', 'Email', 'Phone', 'Address', 'DateOfBirth', 'LicenseNumber', 'CreatedAt'])
    
    # Display the data
    print(df)

except Exception as error:
    print(f"Error connecting to the database: {error}")

finally:
    # Close the cursor and connection to free up resources
    if connection:
        cursor.close()
        connection.close()
        print("Connection closed.")
