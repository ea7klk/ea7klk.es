---
title: Who am I ?!
date: 2020-01-01
tags: ["stoicism"]
image : "/img/posts/img-0.jpg"
Description  : "Who am I ?! This is the most asked question in my life. Yet no clear answer has yet been found..."
---
Who am I ?! This is the most asked question in my life. Yet no clear answer has yet been found.


{{< rawhtml >}}
<div id="calculator-container" style="font-family: var(--bs-body-font-family); text-align: center;"></div>

<script>
document.addEventListener("DOMContentLoaded", () => {
    const app = document.getElementById("calculator-container");
    if (!app) return;

    app.innerHTML = `
        <h1 style="font-weight: bold;">Calculadora de pérdida de potencia radiada por ROE</h1>
        <form id="eirpCalculatorForm" style="font-weight: normal;">
            <label for="inputPower">Potencia transmitida (P<sub>in</sub>): </label>
            <input type="number" id="inputPower" step="any" required> W<br><br>

            <label for="swr">ROE: </label>
            <input type="number" id="swr" step="any" required><br><br>

            <button type="button" id="calculateEIRPButton">Calcula</button>
        </form>

        <h2 style="font-weight: normal;">Resultado</h2>
        <p id="eirpResult" style="font-weight: bold;">La potencia radiada después de las pérdidas por ROE es de: </p>
    `;

    document.getElementById("calculateEIRPButton").addEventListener("click", () => {
        const inputPower = parseFloat(document.getElementById("inputPower").value);
        const swr = parseFloat(document.getElementById("swr").value);

        if (isNaN(inputPower) || inputPower <= 0) {
            alert("Por favor, introduce una potencia válida.");
            return;
        }

        if (isNaN(swr) || swr < 1) {
            alert("Por favor, introduce una ROE válida (>= 1).");
            return;
        }

        // Calculate reflected power ratio
        const reflectionCoefficient = (swr - 1) / (swr + 1);
        const reflectedPowerRatio = reflectionCoefficient ** 2;

        // Calculate EIRP loss
        const eirpLoss = inputPower * (1 - reflectedPowerRatio);

        document.getElementById("eirpResult").innerHTML = `La potencia radiada después de las pérdidas por ROE es de: ${eirpLoss.toFixed(2)} W`;
    });
});
</script>
{{< /rawhtml >}}
  
As a child, the answer to this question was simple. Say my name to the question of who. Aha ..! Simple and beautiful. In that answer, parents and siblings in adolescence. I thought to myself that the answer was too clear. 

When I started asking myself this question at a young age when I was beginning to recognize many things, I began to feel that the answer was becoming less clear. Who am I ?! If you ask me who I am. Anyone else. Still no answer to the question. Who am I?

Seek, that is the way to find the answer. Knock, and it shall be opened unto you !! The investigation has begun. 

There is no doubt where to start. From me. I began to search the bottom of my heart in the silence. From there the search went on to the printed books. Couldn't figure it out from there. No suitable gurus could be found to answer this question.

The search continued, and the only sound in my heart was to go ahead. The answer is nowhere to be found. So I'm still looking around, and the answer to my question is hidden somewhere.

I do not know, some questions take time to answer. The meaning of a single word question is getting bigger and bigger. Who am I ?! What is my identity ?! What are my missions ?! Can I know the light of the answers ?!

Those who ask the same questions go up the steps of consciousness and seem to be enlightened and insane. What will I become at the end of this question? !! Buddha or mad !! Anyone should have a small smile left at the end. The smile of recognition.

Who am I, let the question continue. 
<!--Photo by Robert Katzki on Unsplash-->
