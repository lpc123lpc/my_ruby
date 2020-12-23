const Chart = require('chart.js');

function getDataFromElement(eid) {
    const element = document.getElementById(eid);
    const data = JSON.parse(element.dataset.chartdata)
    const cdata = Object.keys(data).map(x => ({"x": x, "y": data[x]}));
    //const cdata = Object.keys(element.dataset.chartdata).map(x => ({"x": x, "y": y}));
    return [element, cdata];
    //return element;
}

function drawSimpleChart(data, name, color) {
    const [element, outByDate] = data;
    new Chart(element, {
        type: 'bar',
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
