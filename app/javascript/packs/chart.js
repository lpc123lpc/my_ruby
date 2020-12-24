const Chart = require('chart.js');

function getDataFromElement(eid) {
    const element = document.getElementById(eid);
    //const test = JSON.parse(element.dataset)
    const data = JSON.parse(element.dataset.chartdata)
    const cdata = Object.keys(data).map(x => ({"x": x, "y": data[x]}));
    return [element, cdata];
}

function drawSimpleChart(data, name, color) {
    const [element, outByDate] = data;
    new Chart(element, {
        type: 'line',
        data: {
            datasets: [
                {
                    label: name,
                    data: outByDate,
                    //borderColor: `rgba(${color}, 1)`,
                    backgroundColor: `rgba(${color}, 0.8)`
                }
            ]
        },
        options: {
            scales: {
                xAxes: [{
                    type: 'time',
                    time: {
                        unit: 'day'
                    },
                }],
                yAxes: [{
                    ticks: {
                        beginAtZero: true,
                        stepSize: 2,
                    }
                }]
            }
        },
    });

}

(function () {
    drawSimpleChart(getDataFromElement('chart-out-by-date'), '借阅图书情况', '255, 99, 200');
})();
