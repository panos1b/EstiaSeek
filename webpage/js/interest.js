const cards = document.querySelectorAll(".card");

//disable see more button when text is smaller than the minimum size
window.onload = function() {
    cards.forEach((card) => {
        let seeMoreBtn = card.querySelector(".see-more-btn");
        let textContent = card.querySelector(".card-content .text");
        let lista = card.querySelector(".list-unstyled");
        let successBtn = card.querySelector(".btn-success");

        if ((textContent.scrollHeight + lista.scrollHeight + successBtn.scrollHeight) == (lista.clientHeight + successBtn.clientHeight)) {
            seeMoreBtn.style.display = "none";
            textContent.style.height = "fit-content";
            lista.style.display = 'block';
            successBtn.style.display = 'block';

        } else {
            card.classList.add("gradient");
        }
        
        
    });
}

//See more
cards.forEach((card) => {
    let seeMoreBtn = card.querySelector(".see-more-btn");
    let textContent = card.querySelector(".card-content .text");
    let lista = card.querySelector(".list-unstyled");
    let successBtn = card.querySelector(".btn-success");

    seeMoreBtn.addEventListener("click", () => {
        card.classList.toggle("active");
        card.classList.toggle("gradient");

        if(card.classList.contains("active")) {
            seeMoreBtn.innerHTML = "See Less";
            textContent.style.height = textContent.scrollHeight + "px";
            lista.style.display = 'block';
            successBtn.style.display = 'block';


        } else {
            seeMoreBtn.innerHTML = "See More";
            textContent.style.height = "100px";
            lista.style.display = 'none';
            successBtn.style.display = 'none';
            
        }
    });
});

/*

const closeButton = document.getElementById("closeButton");

function redirectShowInterestPage() {
    window.location.href = "show_interest.jsp";
}

closeButton.addEventListener("click", redirectShowInterestPage);

var interestBtn = document.querySelectorAll(".btn-success");

interestBtn.forEach((button) => {
    button.addEventListener("click", function(event) {
    event.preventDefault(); // prevent the default form submission

    $('#staticBackdrop2').modal('show');

    });
});
*/

var msg = "You submitted your interest successfully!";

// Set the message in the element
document.getElementById("successMessage").innerHTML = msg;

// Automatically clear the message after 3 seconds (3000 milliseconds)
setTimeout(function(){
    document.getElementById("successMessage").innerHTML = '';

    successMessage.style.display = 'none';
}, 3000);


var msg1 = "Sorry, you have already submitted for this job!";

// Set the message in the element
document.getElementById("errorMessage").innerHTML = msg1;

// Automatically clear the message after 3 seconds (3000 milliseconds)
setTimeout(function(){
    document.getElementById("errorMessage").innerHTML = '';
    errorMessage.style.display = 'none';
}, 3000);

