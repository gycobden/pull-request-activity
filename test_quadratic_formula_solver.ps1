# Compile and run QuadraticFormulaSolver tests only
# Compile source
javac -d build src/QuadraticFormulaSolver.java

# Compile tests with classpath
javac -d build -cp build tests/QuadraticFormulaSolverTest.java

# Run QuadraticFormulaSolver tests
if ($LASTEXITCODE -eq 0) {
    Write-Host "Running QuadraticFormulaSolver tests..."
    java -cp build QuadraticFormulaSolverTest
} else {
    Write-Host "Compilation failed (QuadraticFormulaSolver)" -ForegroundColor Red
    exit 1
}
