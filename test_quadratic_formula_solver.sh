#!/bin/bash
# Compile and run QuadraticFormulaSolver tests only
# Compile source
javac -d build src/QuadraticFormulaSolver.java

# Compile tests with classpath
javac -d build -cp build tests/QuadraticFormulaSolverTest.java

# Run QuadraticFormulaSolver tests
if [ $? -eq 0 ]; then
    echo "Running QuadraticFormulaSolver tests..."
    java -cp build QuadraticFormulaSolverTest
else
    echo "Compilation failed (QuadraticFormulaSolver)"
    exit 1
fi
