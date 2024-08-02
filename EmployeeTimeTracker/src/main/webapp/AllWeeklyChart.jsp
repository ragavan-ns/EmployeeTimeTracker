<!DOCTYPE html>
<html>
<head>
    <title>Weekly Tasks/Hours Bar Chart</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> <!-- Font Awesome for icons -->
    <style>
        @keyframes formalBackgroundAnimation {
            0% { background-position: 0% 0%; }
            50% { background-position: 100% 100%; }
            100% { background-position: 0% 0%; }
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(45deg, #4a90e2, #d0d0d0, #4a90e2, #d0d0d0);
            background-size: 400% 400%;
            animation: formalBackgroundAnimation 20s ease infinite;
            color: #333;
            text-align: center;
            padding: 50px;
            margin: 0;
            position: relative;
            overflow-x: hidden;
            overflow-y: auto; /* Enable vertical scrolling */
        }

        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://www.example.com/background-illustration.svg') no-repeat center center;
            background-size: cover;
            opacity: 0.1;
            z-index: -1;
        }

        h2 {
            color: #333;
            margin-bottom: 30px;
            font-size: 2.5em;
            font-weight: 600;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
        }

        .chart-container {
            position: relative;
            width: 100%;
            max-width: 800px; /* Adjust as needed */
            margin: 0 auto;
            padding: 20px;
        }

        canvas {
            width: 100% !important; /* Ensure the canvas scales with the container */
            height: auto !important; /* Maintain aspect ratio */
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.3);
        }

        a {
            color: #fff;
            text-decoration: none;
            font-size: 1.2em;
            font-weight: bold;
            display: inline-flex;
            align-items: center;
            padding: 15px 25px;
            border-radius: 8px;
            background-color: #007bff;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
        }

        a i {
            margin-right: 8px;
        }

        a::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300%;
            height: 300%;
            background: rgba(0,0,0,0.1);
            transition: all 0.4s ease;
            transform: translate(-50%, -50%) scale(0);
            border-radius: 50%;
            z-index: 0;
        }

        a:hover::before {
            transform: translate(-50%, -50%) scale(1);
        }

        a:hover {
            background-color: #0056b3;
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0,0,0,0.3);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2><span class="icon">&#128197;</span>Weekly Tasks/Hours Bar Chart</h2>
        <canvas id="AllWeeklyChart" width="800" height="400"></canvas>
        <a href="dashboard.jsp">Back to Dashboard</a>
    </div>
    <script>
        fetch('AllWeeklyChartServlet')
        .then(response => response.json())
        .then(data => {
            const ctx = document.getElementById('AllWeeklyChart').getContext('2d');

            const labels = [];
            const datasetMap = {};

            data.datasets.forEach(item => {
                if (!labels.includes(item.day)) {
                    labels.push(item.day);
                }
                if (!datasetMap[item.username]) {
                    datasetMap[item.username] = [];
                }
                datasetMap[item.username].push({
                    x: item.day,
                    y: item.duration
                });
            });

            const datasets = Object.keys(datasetMap).map(username => ({
                label: username,
                data: datasetMap[username],
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderColor: 'rgba(255, 99, 132, 1)',
                borderWidth: 1,
                barPercentage: 0.6,
                categoryPercentage: 0.5,
                hoverBackgroundColor: 'rgba(255, 99, 132, 0.4)',
                hoverBorderColor: 'rgba(255, 99, 132, 1)',
                animation: {
                    duration: 1000,
                    easing: 'easeOutBounce'
                }
            }));

            new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: labels,
                    datasets: datasets
                },
                options: {
                    scales: {
                        x: {
                            beginAtZero: true,
                            ticks: {
                                color: '#fff'
                            },
                            grid: {
                                color: 'rgba(255, 255, 255, 0.5)'
                            }
                        },
                        y: {
                            beginAtZero: true,
                            ticks: {
                                color: '#fff'
                            },
                            grid: {
                                color: 'rgba(255, 255, 255, 0.5)'
                            }
                        }
                    },
                    plugins: {
                        legend: {
                            labels: {
                                color: '#fff'
                            }
                        }
                    },
                    animation: {
                        duration: 1500,
                        easing: 'easeOutBounce'
                    }
                }
            });
        });
    </script>
</body>
</html>
	