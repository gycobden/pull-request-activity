#!/bin/bash
# Compile and run TicketSeller tests only
# Compile source
javac -d build src/TicketSeller.java

# Compile tests with classpath
javac -d build -cp build tests/TicketSellerTest.java

# Run TicketSeller tests
if [ $? -eq 0 ]; then
    echo "Running TicketSeller tests..."
    java -cp build TicketSellerTest
else
    echo "Compilation failed (TicketSeller)"
    exit 1
fi
