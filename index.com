
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>My School Sandipani</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    background: #f4f7fb;
    color: #333;
}

header {
    background: #073b70;
    color: white;
    padding: 25px;
    text-align: center;
}

header h1 {
    font-size: 35px;
}

nav {
    background: #05294d;
    padding: 15px;
    text-align: center;
}

nav a {
    color: white;
    text-decoration: none;
    margin: 12px;
    font-weight: bold;
}

nav a:hover {
    color: yellow;
}

.hero {
    background: linear-gradient(
        rgba(0,0,0,.5),
        rgba(0,0,0,.5)
    ),
    url('https://images.unsplash.com/photo-1580582932707-520aed937b7b');

    background-size: cover;
    background-position: center;
    padding: 120px 20px;
    color: white;
    text-align: center;
}

.hero h2 {
    font-size: 42px;
    margin-bottom: 15px;
}

.hero button {
    padding: 12px 25px;
    background: #ffb703;
    border: none;
    border-radius: 5px;
    margin-top: 20px;
    cursor: pointer;
}

section {
    padding: 50px 8%;
    text-align: center;
}

section h2 {
    color: #073b70;
    margin-bottom: 25px;
}

.cards {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 20px;
}

.card {
    background: white;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0 3px 12px #ccc;
}

.card h3 {
    color: #073b70;
    margin-bottom: 15px;
}

.card p {
    line-height: 1.6;
}

.about {
    line-height: 1.8;
}

.gallery img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-radius: 10px;
}

.contact {
    background: #e5eef8;
}

footer {
    background: #05294d;
    color: white;
    text-align: center;
    padding: 20px;
}

@media(max-width:600px) {
    nav a {
        display: inline-block;
        margin: 8px;
    }

    .hero h2 {
        font-size: 28px;
    }
}
</style>
</head>

<body>

<header>
    <h1>MY SCHOOL SANDIPANI</h1>
    <p>Education is the Key to Success</p>
</header>

<nav>
    <a href="#home">Home</a>
    <a href="#about">About</a>
    <a href="#facilities">Facilities</a>
    <a href="#teachers">Teachers</a>
    <a href="#gallery">Gallery</a>
    <a href="#contact">Contact</a>
</nav>

<div class="hero" id="home">
    <h2>Welcome to My School Sandipani</h2>
    <p>Learn Today, Lead Tomorrow</p>
    <button onclick="welcome()">Explore Our School</button>
</div>

<section id="about" class="about">
    <h2>About Our School</h2>
    <p>
        My School Sandipani is a place where students
        learn new things, develop their skills and build
        a bright future. Our aim is to provide quality
        education and create responsible citizens.
    </p>
</section>

<section id="facilities">
    <h2>Our Facilities</h2>

    <div class="cards">
        <div class="card">
            <h3>📚 Library</h3>
            <p>A library with books to improve knowledge.</p>
        </div>

        <div class="card">
            <h3>💻 Computer Lab</h3>
            <p>Computer learning and digital education.</p>
        </div>

        <div class="card">
            <h3>⚽ Sports</h3>
            <p>Sports and physical activities for students.</p>
        </div>

        <div class="card">
            <h3>🔬 Science Lab</h3>
            <p>Practical learning through experiments.</p>
        </div>
    </div>
</section>

<section id="teachers">
    <h2>Our Teachers</h2>

    <div class="cards">
        <div class="card">
            <h3>Principal</h3>
            <p>School Principal</p>
        </div>

        <div class="card">
            <h3>Teaching Staff</h3>
            <p>Experienced and dedicated teachers.</p>
        </div>

        <div class="card">
            <h3>Students</h3>
            <p>Future leaders and bright minds.</p>
        </div>
    </div>
</section>

<section id="gallery">
    <h2>School Gallery</h2>

    <div class="cards gallery">
        <img src="https://images.unsplash.com/photo-1580582932707-520aed937b7b" alt="School building">
        <img src="https://images.unsplash.com/photo-1509062522246-3755977927d7" alt="Classroom">
        <img src="https://images.unsplash.com/photo-1523050854058-8df90110c9f1" alt="Students">
    </div>
</section>

<section id="contact" class="contact">
    <h2>Contact Us</h2>
    <p>School Name: My School Sandipani</p>
    <p>Address: Add Your School Address Here</p>
    <p>Email: Add School Email Here</p>
</section>

<footer>
    <p>© 2026 My School Sandipani | All Rights Reserved</p>
    <p>Designed by Student</p>
</footer>

<script>
function welcome() {
    alert("Welcome to My School Sandipani!");
    document.getElementById("about").scrollIntoView({
        behavior: "smooth"
    });
}
</script>

</body>
</html>
