# Solid-Principals-Template
This repository demonstrates the implementation of several important design principles in software development. The principles covered are:

## 1. Single Responsibility Principle (SRP)
The Single Responsibility Principle states that a class should have only one reason to change. In the code, the UserInvoice class is responsible for generating invoice details, and the EmailSender class handles sending emails. Each class focuses on a specific responsibility, adhering to the SRP.

## 2. Open-Closed Principle (OCP)
The Open-Closed Principle states that software entities should be open for extension but closed for modification. In the code, the TaxPayment class is open for extension by allowing subclasses to implement their own calculate_tax method. This means that if a new type of tax needs to be added, a new subclass can be created without changing the existing TaxPayment class.

## 3. Liskov Substitution Principle (LSP)
The Liskov Substitution Principle states that objects of a superclass should be substitutable with objects of its subclasses without affecting the correctness of the program. The code demonstrates LSP by having the AdminStatistic class as a subclass of UserStatistic, with additional behavior and an overridden method. The subclasses can be used interchangeably with the superclass.

## 4. Interface Segregation Principle (ISP)
The Interface Segregation Principle emphasizes that clients should not be forced to depend on interfaces they do not use. The code demonstrates ISP by segregating the functionality into separate modules. For example, the EngineStartable module contains methods related to engine management, and the Drivable module includes methods relevant to driving.

## 5. Dependency Inversion Principle (DIP)
The Dependency Inversion Principle states that high-level modules should not depend on low-level modules; both should depend on abstractions. The code follows DIP by introducing abstractions like the IPayment class, which is implemented by its subclasses (ProductPayment and UserPayments). The GetPayments class depends on the abstraction, promoting flexibility and decoupling.