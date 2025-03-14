import java.util.Date;

public class KYCRecord {
    private String fullName;
    private Date dateOfBirth;
    private String address;
    private String ssn;
    private double income;
    private double allocatedCredit;
    private String status;

    public KYCRecord(String fullName, Date dateOfBirth, String address, String ssn, double income) {
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.address = address;
        this.ssn = ssn;
        this.income = income;
        this.calculateCreditAllocation();
        this.status = "PENDING";
    }

    private void calculateCreditAllocation() {
        // Simple credit allocation logic based on income
        if (income < 30000) {
            allocatedCredit = income * 0.5;
        } else if (income < 60000) {
            allocatedCredit = income * 0.7;
        } else {
            allocatedCredit = income * 0.9;
        }
    }

    public String toJSON() {
        return String.format(
            "{\"fullName\":\"%s\"," +
            "\"dateOfBirth\":\"%s\"," +
            "\"address\":\"%s\"," +
            "\"ssn\":\"%s\"," +
            "\"income\":%.2f," +
            "\"allocatedCredit\":%.2f," +
            "\"status\":\"%s\"}",
            fullName,
            dateOfBirth.toString(),
            address.replace("\"", "\\\""),
            ssn,
            income,
            allocatedCredit,
            status
        );
    }

    // Getters and Setters
    public String getFullName() { return fullName; }
    public Date getDateOfBirth() { return dateOfBirth; }
    public String getAddress() { return address; }
    public String getSsn() { return ssn; }
    public double getIncome() { return income; }
    public double getAllocatedCredit() { return allocatedCredit; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
