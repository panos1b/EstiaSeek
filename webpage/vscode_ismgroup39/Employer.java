package vscode_ismgroup39;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Employer extends User {

    private String organization;
    private final List<JobPosition> jobPositions;

    /**
     * Full constructor for Employer
     *
     * @param userID
     * @param username
     * @param email
     * @param password
     * @param bio
     * @param organization
     * @param jobPositions
     */
    public Employer(int userID, String username, String email, String password, String bio, String organization, JobPosition... jobPositions) {
        //takes an unspecified list of JobPositions as an atribute
        super(userID, username, email, password, bio);
        this.organization = organization;
        this.jobPositions = new ArrayList<>();
        this.jobPositions.addAll(Arrays.asList(jobPositions));
    }
    
    public Employer(int userID, String username, String email, String password, String bio, String organization, List<JobPosition> jobPositions) {
        //takes a List of jobPositions as an atribute
        super(userID, username, email, password, bio);
        this.organization = organization;
        this.jobPositions = new ArrayList<>(jobPositions);
    }   

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }
    
    public List<JobPosition> getJobPositions() {
        return jobPositions;
    }

    public void addJobPositions(JobPosition jobPosition) {
        jobPositions.add(jobPosition);
    }
    
    public void deleteJobPosition(JobPosition jobPosition){
        jobPositions.remove(jobPosition);
    }
            
}
