package vscode_ismgroup39;

public class Applicant extends User {

    private String experience;
    private String location;

    /**
     * Full constructor for Applicant
     *
     * @param userID
     * @param username
     * @param email
     * @param password
     * @param bio
     * @param experience
     * @param location
     */
    public Applicant(int userID, String username, String email, String password, String bio, String experience, String location) {
        super(userID, username, email, password, bio);
        this.experience = experience;
        this.location = location;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}
