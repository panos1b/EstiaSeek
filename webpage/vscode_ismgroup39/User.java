package vscode_ismgroup39;

public class User {
    
    private int userID;
    private String username;
	private String email;
	private String password;
    private String bio;

    /**
     * Full constuctor
     *  
     * @param userID
     * @param username 
     * @param email
     * @param password
     * @param bio
     */
    public User(int userID, String username, String email, String password, String bio) {        
        this.userID = userID;
        this.username = username;
        this.email = email;
        this.password = password;
        this.bio = bio;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public void setPassword(String password) {
        this.password = password;        
    }  

    public String getPassword() {
        return password;
    }

    public void setBio(String password) {
        this.password = password;        
    }  

    public String getBio() {
        return bio;
    }


}
