package vscode_ismgroup39;

public class Employer extends User {

    private String organization;

    /**
     * Full constructor for Employer
     *
     * @param userID
     * @param username
     * @param email
     * @param password
     * @param bio
     * @param organization
     */
    public Employer(int userID, String username, String email, String password, String bio, String organization) {
        super(userID, username, email, password, bio);
        this.organization = organization;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }
}
