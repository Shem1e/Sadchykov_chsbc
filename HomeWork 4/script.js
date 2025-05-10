document.getElementById('myForm').addEventListener('submit', function(event) {
            event.preventDefault();

            // Очищення попередніх помилок
            document.getElementById('nameError').textContent = '';
            document.getElementById('emailError').textContent = '';
            document.getElementById('ageError').textContent = '';

            let isValid = true;
            const name = document.getElementById('name').value.trim();
            const email = document.getElementById('email').value.trim();
            const age = parseInt(document.getElementById('age').value);

            // Валідація імені
            if (name === '') {
                document.getElementById('nameError').textContent = "Поле 'Ім'я' є обов'язковим.";
                isValid = false;
            }

            // Валідація email
            if (email === '' || !email.includes('@')) {
                document.getElementById('emailError').textContent = "Введіть коректний email (повинен містити '@').";
                isValid = false;
            }

            // Валідація віку
            if (isNaN(age) || age <= 0) {
                document.getElementById('ageError').textContent = "Вік повинен бути числом більше 0.";
                isValid = false;
            }

            // Якщо все валідно
            if (isValid) {
                alert("Form submitted!");
                // Тут можна додати реальне відправлення форми, якщо потрібно
                // this.submit();
            }
        });