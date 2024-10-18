<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuestionario ODS 5</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            background-image: url(https://www.proyectaimpacto.com/wp-content/uploads/2024/05/A80_ODS5_Banner-1.png); /* Cambia esta ruta por una imagen relacionada con ODS 5 */
            background-size: cover;
            color: #333;
            padding: 20px;
            text-align: center;
        }
        h1 {
            font-size: 2.5em;
        }
        label {
            font-size: 1.5em;
            display: block;
            margin: 10px 0;
        }
        input {
            margin: 10px;
            transform: scale(1.5);
        }
        .resultado {
            margin-top: 20px;
            font-size: 1.5em;
            font-weight: bold;
        }
        .pregunta {
            display: none;
        }
        #creditos {
            margin-top: 20px;
            font-weight: bold;
            font-size: 1.5em;
        }
        #tamborContainer {
            display: none;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h1>Cuestionario sobre el ODS 5</h1>
    <form id="quizForm">
        <div class="pregunta" id="pregunta1">
            <label>1. ¿Cuál es el objetivo principal del ODS 5?</label>
            <input type="radio" name="q1" value="1" onclick="nextQuestion(1)">Eliminar la pobreza<br>
            <input type="radio" name="q1" value="2" onclick="nextQuestion(1)">Lograr la igualdad de género<br>
            <input type="radio" name="q1" value="3" onclick="nextQuestion(1)">Asegurar la educación de calidad<br>
        </div>
        
        <div class="pregunta" id="pregunta2">
            <label>2. ¿Qué significa ODS?</label>
            <input type="radio" name="q2" value="1" onclick="nextQuestion(2)">Objetivos de Desarrollo Sostenible<br>
            <input type="radio" name="q2" value="2" onclick="nextQuestion(2)">Organización de Desarrollo Sostenible<br>
            <input type="radio" name="q2" value="3" onclick="nextQuestion(2)">Objetivos de Desarrollo Social<br>
        </div>
        
        <div class="pregunta" id="pregunta3">
            <label>3. ¿Qué porcentaje de mujeres en el mundo son víctimas de violencia de género?</label>
            <input type="radio" name="q3" value="1" onclick="nextQuestion(3)">20%<br>
            <input type="radio" name="q3" value="2" onclick="nextQuestion(3)">30%<br>
            <input type="radio" name="q3" value="3" onclick="nextQuestion(3)">35%<br>
        </div>

        <div class="pregunta" id="pregunta4">
            <label>4. ¿Qué país es líder en la igualdad de género según el informe del Foro Económico Mundial?</label>
            <input type="radio" name="q4" value="1" onclick="nextQuestion(4)">Islandia<br>
            <input type="radio" name="q4" value="2" onclick="nextQuestion(4)">Suecia<br>
            <input type="radio" name="q4" value="3" onclick="nextQuestion(4)">Noruega<br>
        </div>

        <div class="pregunta" id="pregunta5">
            <label>5. ¿Cuál es uno de los indicadores del ODS 5?</label>
            <input type="radio" name="q5" value="1" onclick="nextQuestion(5)">Proporción de mujeres en puestos de liderazgo<br>
            <input type="radio" name="q5" value="2" onclick="nextQuestion(5)">Número de escuelas<br>
            <input type="radio" name="q5" value="3" onclick="nextQuestion(5)">Tasa de alfabetización<br>
        </div>

        <div class="pregunta" id="pregunta6">
            <label>6. ¿Qué tipo de violencia se busca eliminar según el ODS 5?</label>
            <input type="radio" name="q6" value="1" onclick="nextQuestion(6)">Violencia física<br>
            <input type="radio" name="q6" value="2" onclick="nextQuestion(6)">Violencia emocional<br>
            <input type="radio" name="q6" value="3" onclick="nextQuestion(6)">Todas las anteriores<br>
        </div>

        <div class="pregunta" id="pregunta7">
            <label>7. ¿Cuál de las siguientes afirmaciones es cierta sobre el ODS 5?</label>
            <input type="radio" name="q7" value="1" onclick="nextQuestion(7)">Promueve el empoderamiento económico de las mujeres<br>
            <input type="radio" name="q7" value="2" onclick="nextQuestion(7)">Busca la reducción de la población<br>
            <input type="radio" name="q7" value="3" onclick="nextQuestion(7)">Fomenta el aumento de la violencia de género<br>
        </div>

        <div class="pregunta" id="pregunta8">
            <label>8. ¿Cuántos objetivos de desarrollo sostenible hay en total?</label>
            <input type="radio" name="q8" value="1" onclick="nextQuestion(8)">15<br>
            <input type="radio" name="q8" value="2" onclick="nextQuestion(8)">17<br>
            <input type="radio" name="q8" value="3" onclick="nextQuestion(8)">19<br>
        </div>

        <div class="pregunta" id="pregunta9">
            <label>9. ¿Qué tipo de salud se promueve en el ODS 5?</label>
            <input type="radio" name="q9" value="1" onclick="nextQuestion(9)">Salud mental<br>
            <input type="radio" name="q9" value="2" onclick="nextQuestion(9)">Salud sexual y reproductiva<br>
            <input type="radio" name="q9" value="3" onclick="nextQuestion(9)">Salud general<br>
        </div>

        <div class="pregunta" id="pregunta10">
            <label>10. ¿Qué es la violencia de género?</label>
            <input type="radio" name="q10" value="1" onclick="calcularNota()">Violencia en el hogar<br>
            <input type="radio" name="q10" value="2" onclick="calcularNota()">Violencia basada en el género<br>
            <input type="radio" name="q10" value="3" onclick="calcularNota()">Ambas anteriores<br>
        </div>
    </form>

    <div id="tamborContainer">
        <h2>Tu nota es...</h2>
        <img src="data:image/png;base64,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" alt="Tambores" style="width: 300px; height: auto;"> <!-- Cambia esta ruta por una imagen de tambores -->
        <audio id="audio" src="https://www.youtube.com/watch?v=zAnC_qrsskM" autoplay></audio> <!-- Cambia esta ruta por la música de tambores -->
    </div>

    <div class="resultado" id="resultado"></div>
    <div id="creditos">Hecho por Lucas y Sam</div>

    <script>
        let currentQuestion = 1;
        const totalQuestions = 10;

        // Mostrar la primera pregunta al cargar
        document.getElementById(`pregunta${currentQuestion}`).style.display = 'block';

        function nextQuestion(questionNumber) {
            const selectedAnswer = document.querySelector(`input[name="q${questionNumber}"]:checked`);
            if (!selectedAnswer) {
                return; // No hacer nada si no hay respuesta seleccionada
            }

            // Ocultar la pregunta actual
            document.getElementById(`pregunta${questionNumber}`).style.display = 'none';
            currentQuestion++;

            // Mostrar la siguiente pregunta o calcular la nota
            if (currentQuestion <= totalQuestions) {
                document.getElementById(`pregunta${currentQuestion}`).style.display = 'block';
            } else {
                mostrarTambores();
            }
        }

        function mostrarTambores() {
            document.getElementById('tamborContainer').style.display = 'block';
            setTimeout(calcularNota, 6000); // Esperar 6 segundos antes de calcular la nota
        }

        function calcularNota() {
            let nota = 0;
            const respuestasCorrectas = {
                q1: '2',
                q2: '1',
                q3: '3',
                q4: '1',
                q5: '1',
                q6: '3',
                q7: '1',
                q8: '2',
                q9: '2',
                q10: '3'
            };

            for (let i = 1; i <= totalQuestions; i++) {
                const selectedAnswer = document.querySelector(`input[name="q${i}"]:checked`);
                if (selectedAnswer && selectedAnswer.value === respuestasCorrectas[`q${i}`]) {
                    nota++;
                }
            }

            let mensaje = '';
            if (nota <= 2) {
                mensaje = "No sabeis nada sobre el ODS 5.";
            } else if (nota <= 5) {
                mensaje = "Sabeis poco sobre el ODS 5.";
            } else if (nota <= 7) {
                mensaje = "Sabeis algo sobre el ODS 5.";
            } else if (nota <= 8) {
                mensaje = "Sabeis mucho sobre el ODS 5.";
            } else if (nota === 9) {
                mensaje = "Sabeis muchoooo sobre el ODS 5.";
            } else {
                mensaje = "Wowowowowo, sois sigmas que sabeis demasiado sobre el ODS 5.";
            }

            document.getElementById('resultado').innerText = `Tu nota: ${nota} / 10. ${mensaje}`;
        }
    </script>
</body>
</html>
