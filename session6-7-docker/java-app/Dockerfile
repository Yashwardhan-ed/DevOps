# Use official lightweight OpenJDK image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside container
WORKDIR /app

# Copy Java source code
COPY Main.java .

# Compile the Java application
RUN javac Main.java

# Expose container port
EXPOSE 8080

# Run the compiled Java program
CMD ["java", "Main"]
