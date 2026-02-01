function searchBooks() {
    let query = document.getElementById("searchBox").value;
    let xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4) {
            if (this.status == 200) {
                document.getElementById("results").innerHTML = this.responseText;
            } else {
                document.getElementById("results").innerHTML = "<p>Error loading results. Please try again.</p>";
            }
        }
    };
    xhttp.open("GET", "searchBook?q=" + encodeURIComponent(query), true);
    xhttp.send();
}

function validateBookForm() {
    let title = document.getElementById("title").value.trim();
    let author = document.getElementById("author").value.trim();
    let errorDiv = document.getElementById("error");
    if (title === "" || author === "") {
        if (errorDiv) {
            errorDiv.innerHTML = "Both title and author must be filled out.";
        } else {
            alert("Both title and author must be filled out.");
        }
        return false;
    }
    if (errorDiv) {
        errorDiv.innerHTML = "";
    }
    return true;
}