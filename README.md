# Heap of students pt 1
## Pseudocode

```plaintext
CLASS Address
    PRIVATE:
        street: string
        city: string
        state: string
        zip: string
    PUBLIC:
        FUNCTION Constructor()
            SET street, city, state, zip TO empty strings
        FUNCTION init(s, c, st, z)
            SET street TO s
            SET city TO c
            SET state TO st
            SET zip TO z
        FUNCTION printAddress()
            PRINT street
            PRINT city + " " + state + ", " + zip
END CLASS

CLASS Date
    PRIVATE:
        day: integer
        month: integer
        year: integer
    PUBLIC:
        FUNCTION Constructor()
            SET day TO 1
            SET month TO 1
            SET year TO 2000
        FUNCTION init(dateString)
            EXTRACT month, day, year from dateString
            STORE values in month, day, year
        FUNCTION printDate()
            PRINT month + "/" + day + "/" + year
END CLASS

CLASS Student
    PRIVATE:
        firstName: string
        lastName: string
        address: Address
        birthDate: Date
        gradDate: Date
        creditHours: integer
    PUBLIC:
        FUNCTION Constructor()
            SET firstName, lastName TO empty strings
            INITIALIZE address object
            INITIALIZE birthDate object
            INITIALIZE gradDate object
            SET creditHours TO 0
        FUNCTION init(studentData)
            SPLIT studentData by commas
            SET firstName, lastName FROM studentData
            CALL address.init() with extracted address data
            CALL birthDate.init() with birth date string
            CALL gradDate.init() with graduation date string
            SET creditHours FROM studentData
        FUNCTION printStudent()
            PRINT firstName + " " + lastName
            CALL address.printAddress()
            PRINT "DOB: " + CALL birthDate.printDate()
            PRINT "Grad: " + CALL gradDate.printDate()
            PRINT "Credits: " + creditHours
        FUNCTION getLastFirst()
            RETURN lastName + ", " + firstName
END CLASS

FUNCTION testAddress()
    CREATE Address object a
    CALL a.init("123 W Main St", "Muncie", "IN", "47303")
    CALL a.printAddress()

FUNCTION testDate()
    CREATE Date object d
    CALL d.init("01/27/1997")
    CALL d.printDate()

FUNCTION testStudent()
    studentString = "Danielle,Johnson,32181 Johnson Course Apt. 389,New Jamesside,IN,59379,02/17/2004,05/15/2027,65"
    CREATE Student object student
    CALL student.init(studentString)
    CALL student.printStudent()
    PRINT student.getLastFirst()

FUNCTION main()
    PRINT "Hello!"
    CALL testAddress()
    CALL testDate()
    CALL testStudent()
END FUNCTION
