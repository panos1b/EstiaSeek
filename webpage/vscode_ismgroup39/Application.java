package vscode_ismgroup39;


/**
 *
 * @author Panos Dask
 */
public class Application {
    private final Applicant applicant;
    private final JobPosition jobPosition;

    private Application(Applicant applicant, JobPosition jobPosition) {
        this.applicant = applicant;
        this.jobPosition = jobPosition;
    }
    
    //Factory method for construction. To avoid construction leaks
    public static Application createInstance(Applicant applicant, JobPosition jobPosition){
        Application application = new Application(applicant, jobPosition);
        applicant.addApplication(application);
        jobPosition.addApplication(application);
        return application;
  
    }

    // Getter and Setter for Applicant
    public Applicant getApplicant() {
        return applicant;
    }

    // Getter and Setter for JobPosition
    public JobPosition getJobPosition() {
        return jobPosition;
    }

}
