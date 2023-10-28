// Check the user's authentication status
const userIsSignedIn = false;

// Get references to the navigation bars
const navbarSignedIn = document.getElementById('navbar-signed-in');
const navbarNotSignedIn = document.getElementById('navbar-not-signed-in');

// Toggle the visibility of navigation bars
if (userIsSignedIn) {
    navbarSignedIn.style.display = 'block';
    navbarNotSignedIn.style.display = 'none';
} else {
    navbarSignedIn.style.display = 'none';
    navbarNotSignedIn.style.display = 'block';
}
