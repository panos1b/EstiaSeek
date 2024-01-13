package vscode_ismgroup39;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Panos Dask
 * @author Eqerem Hena
 */
public class JobPosition {
    private final int jobID;
    private String position, emailForCV, location, description, level;
    private final List<Application> applications = new ArrayList<>();

    public JobPosition(int jobID, String position, String emailForCV, String location, String description,
            String level) {
        this.jobID = jobID;
        this.position = position;
        this.emailForCV = emailForCV;
        this.location = location;
        this.description = description;
        this.level = level;
    }

    public JobPosition(int jobID, String emailForCV, String location, String description, String level) {
        this.jobID = jobID;
        this.emailForCV = emailForCV;
        this.location = location;
        this.description = description;
        this.level = level;
    }

    public void addApplication(Application application) {
        applications.add(application);
    }

    public void removeApplication(Application application) {
        applications.remove(application);
    }

    public List<Application> getApplications() {
        return applications;
    }

    // Getter and Setter for jobID
    public int getJobID() {
        return jobID;
    }

    // Getter and Setter for position
    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    // Getter and Setter for emailForCV
    public String getEmailForCV() {
        return emailForCV;
    }

    public void setEmailForCV(String emailForCV) {
        this.emailForCV = emailForCV;
    }

    // Getter and Setter for location
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    // Getter and Setter for description
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    // Getter and Setter for level
    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }
}