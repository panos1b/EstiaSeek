const cards = document.querySelectorAll(".card");

//disable see more button when text is smaller than the minimum size
window.onload = function() {
    cards.forEach((card) => {
        let seeMoreBtn = card.querySelector(".see-more-btn");
        let textContent = card.querySelector(".card-content .text");

        if (textContent.scrollHeight == textContent.clientHeight){
            seeMoreBtn.style.display = "none";
            textContent.style.height = "fit-content";
        } else {
            card.classList.add("gradient");
        }
        
        
    });
}

//See more
cards.forEach((card) => {
    let seeMoreBtn = card.querySelector(".see-more-btn");
    let textContent = card.querySelector(".card-content .text");

    seeMoreBtn.addEventListener("click", () => {
        card.classList.toggle("active");
        card.classList.toggle("gradient");

        if(card.classList.contains("active")) {
            seeMoreBtn.innerHTML = "See Less";
            textContent.style.height = textContent.scrollHeight + "px";

        } else {
            seeMoreBtn.innerHTML = "See More";
            textContent.style.height = "100px";
            
        }
    });
});

function toggleList() {
    var list = document.querySelector('.list-unstyled');
    if (list.style.display === 'none' || list.style.display === '') {
        list.style.display = 'block';
    } else {
        list.style.display = 'none';
    }
    var list = document.querySelector('.btn-success');
    if (list.style.display === 'none' || list.style.display === '') {
        list.style.display = 'block';
    } else {
        list.style.display = 'none';
    }
    
}

const closeButton = document.getElementById("closeButton");

function redirectShowInterestPage() {
    window.location.href = "show_interest3.jsp";
}

closeButton.addEventListener("click", redirectShowInterestPage);

var interestBtn = document.getElementById("interestBtn");
interestBtn.addEventListener("click", function(event) {
event.preventDefault(); // prevent the default form submission

$('#staticBackdrop2').modal('show');

});
