<!DOCTYPE html>
<html>
<head>
    <title>My Web Application</title>
    <script>
        // Function to fetch server uptime
        function getServerUptime() {
            // Send an AJAX request to a server endpoint to get the uptime
            // For demonstration purposes, let's assume the server returns the uptime in seconds
            // You need to replace 'uptime_endpoint' with the actual endpoint URL
            fetch('uptime_endpoint')
                .then(response => response.json())
                .then(data => {
                    // Update the content of the 'uptime' element with the server uptime
                    document.getElementById('uptime').innerText = `Server Uptime: ${data.uptime} seconds`;
                })
                .catch(error => console.error('Error fetching server uptime:', error));
        }

        // Function to update the current date and time
        function updateDateTime() {
            // Get the current date and time
            const now = new Date();
            // Update the content of the 'datetime' element with the current date and time
            document.getElementById('datetime').innerText = `Current Date and Time: ${now}`;
        }

        // Call the functions when the page loads
        window.onload = function () {
            getServerUptime();
            updateDateTime();
        };
    </script>
</head>
<body>
    <h1>Welcome to My Web Application</h1>
    <p id="uptime"></p> <!-- Element to display server uptime -->
    <p id="datetime"></p> <!-- Element to display current date and time -->
</body>
</html>
