<!DOCTYPE html>
<html>
<head>
    <title>Video Rental Store</title>
</head>
<body>
<h1>Video Rental Store Inventory</h1>

<?php
$servername = "db";
$username = "webuser";
$password = "NashWU2025?!"; // Replace with your password
$dbname = "video_rental_store";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get all unique genres for dropdown
$genreResult = $conn->query("SELECT DISTINCT genre FROM inventory ORDER BY genre ASC");
$genres = [];
while ($row = $genreResult->fetch_assoc()) {
    $genres[] = $row['genre'];
}

// Capture filters
$searchTerm = isset($_GET['search']) ? $_GET['search'] : '';
$selectedGenre = isset($_GET['genre']) ? $_GET['genre'] : '';
?>

<!-- Search + Genre Filter Form -->
<form method="GET" action="">
    <input type="text" name="search" placeholder="Search by title or director"
           value="<?php echo htmlspecialchars($searchTerm); ?>">

    <select name="genre">
        <option value="">All Genres</option>
        <?php foreach ($genres as $genre): ?>
            <option value="<?php echo htmlspecialchars($genre); ?>" 
                <?php if ($genre == $selectedGenre) echo 'selected'; ?>>
                <?php echo htmlspecialchars($genre); ?>
            </option>
        <?php endforeach; ?>
    </select>

    <input type="submit" value="Search">
</form>
<hr>

<?php
// Build query dynamically based on filters
$sql = "SELECT title, director, release_date, box_office_gross, genre 
        FROM inventory 
        WHERE 1=1";
$params = [];
$types = "";

if (!empty($searchTerm)) {
    $sql .= " AND (title LIKE ? OR director LIKE ?)";
    $likeTerm = "%$searchTerm%";
    $params[] = $likeTerm;
    $params[] = $likeTerm;
    $types .= "ss";
}

if (!empty($selectedGenre)) {
    $sql .= " AND genre = ?";
    $params[] = $selectedGenre;
    $types .= "s";
}

$sql .= " ORDER BY release_date DESC";

// Prepare and execute query
$stmt = $conn->prepare($sql);
if (!empty($params)) {
    $stmt->bind_param($types, ...$params);
}
$stmt->execute();
$result = $stmt->get_result();

// Display results
if ($result->num_rows > 0) {
    echo "<p>Total movies found: " . $result->num_rows . "</p>";
    echo "<table border='1' cellpadding='5'>
            <tr>
                <th>Title</th>
                <th>Director</th>
                <th>Genre</th>
                <th>Release Date</th>
                <th>Box Office ($)</th>
            </tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . htmlspecialchars($row["title"]) . "</td>
                <td>" . htmlspecialchars($row["director"]) . "</td>
                <td>" . htmlspecialchars($row["genre"]) . "</td>
                <td>" . htmlspecialchars($row["release_date"]) . "</td>
                <td>" . number_format($row["box_office_gross"]) . "</td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "<p>No movies match your filters.</p>";
}

$conn->close();
?>
</body>
</html>
