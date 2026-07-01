// URL API Backend
const API_URL = "http://localhost:3000/movies";

// Ketika halaman dibuka
window.onload = () => {
    loadMovies();
};

// =======================
// Ambil semua review
// =======================
async function loadMovies() {
    try {
        const response = await fetch(API_URL);
        const movies = await response.json();

        const movieList = document.getElementById("movieList");
        movieList.innerHTML = "";

        movies.forEach(movie => {

            movieList.innerHTML += `
                <div class="movie">

                    <h2>${movie.title}</h2>

                    <div class="rating">
                        ${"⭐".repeat(movie.rating)}
                    </div>

                    <div class="review">
                        ${movie.review}
                    </div>

                    <button
                        class="delete"
                        onclick="deleteMovie(${movie.id})">
                        Hapus
                    </button>

                </div>
            `;

        });

    } catch (error) {

        console.log(error);

    }
}

// =======================
// Tambah Review
// =======================
async function addMovie() {

    const title = document.getElementById("movieName").value;
    const rating = parseInt(document.getElementById("rating").value);
    const review = document.getElementById("review").value;

    if(title === "" || review === ""){

        alert("Lengkapi semua data!");

        return;

    }

    await fetch(API_URL, {

        method: "POST",

        headers: {

            "Content-Type":"application/json"

        },

        body: JSON.stringify({

            title,
            rating,
            review

        })

    });

    document.getElementById("movieName").value="";
    document.getElementById("rating").value="";
    document.getElementById("review").value="";

    loadMovies();

}

// =======================
// Hapus Review
// =======================
async function deleteMovie(id){

    await fetch(`${API_URL}/${id}`,{

        method:"DELETE"

    });

    loadMovies();

}