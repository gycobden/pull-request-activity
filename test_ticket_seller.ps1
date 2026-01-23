# Compile and run TicketSeller tests only
# Compile source
javac -d build src/TicketSeller.java

# Compile tests with classpath
javac -d build -cp build tests/TicketSellerTest.java

# Run TicketSeller tests
if ($LASTEXITCODE -eq 0) {
    Write-Host "Running TicketSeller tests..."
    java -cp build TicketSellerTest
} else {
    Write-Host "Compilation failed (TicketSeller)" -ForegroundColor Red
    exit 1
}
