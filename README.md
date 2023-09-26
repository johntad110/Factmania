# FactMania

FactMania is a feature-rich web application built with Django that manages user preferences, stores data facts, and performs complex queries and transactions in a MySQL database. It incorporates Django's built-in forms authentication, command management, and unit testing for robust functionality. With a responsive design and modern UI/UX, FactMania offers an enjoyable user experience. This README provides an overview of the project, installation instructions, contribution guidelines, and contact information.

## Features

FactMania comes with the following features:

1. User Management:
   - User registration and authentication
   - User profile management and preferences

2. Data Facts:
   - Create, read, update, and delete data facts
   - Categorize facts for easy navigation
   - Search and filter facts based on various criteria

3. Complex Queries and Transactions:
   - Perform advanced queries on the MySQL database
   - Execute complex transactions to maintain data integrity

4. Responsive Design:
   - A modern and responsive layout that adapts to different screen sizes and devices

5. Beautiful UI/Modern UX:
   - Thoughtfully designed user interface for an aesthetically pleasing experience
   - Intuitive navigation and user-friendly interactions

6. Command Management:
   - Custom management commands for performing administrative tasks
   - Simplify common workflows and automate routine operations

7. Unit Testing:
   - Comprehensive unit tests to verify the functionality of the application
   - Ensures code quality and reduces the risk of regression bugs

## Installation

To install and run FactMania, follow these steps:

1. Clone the repository:

   ```shell
   git clone https://github.com/johntad110/Factmania.git
   ```

2. Navigate to the project directory:

   ```shell
   cd Factmania
   ```

3. Create and activate a virtual environment:

   ````shell
   python3 -m venv venv
   source venv/bin/activate
   ```

4. Install the dependencies:

   ````shell
   pip install -r requirements.txt
   ```

5. Set up the database:
   - Ensure you have a MySQL server running and credentials handy.
   - Update the database configuration in `settings.py` to match your MySQL server settings. (there is a `database_dump.sql` file in the project folder to get u started with dummy data.)

6. Apply migrations:

   ```shell
   python manage.py migrate
   ```

7. Start the development server:

   ```shell
   python manage.py runserver
   ```

8. Access FactMania in your web browser at `http://localhost:8000`.


## Contribution Guidelines

Contributions to FactMania are welcome! If you'd like to contribute, please follow these guidelines:

1. Fork this repository and create a new branch for your feature or bug fix.
2. Make your changes and ensure they adhere to the project's coding style and guidelines.
3. Write appropriate unit tests to validate your changes.
4. Commit your changes and push them to your forked repository.
5. Submit a pull request, describing your changes and the problem they solve.

## Contact

If you have any questions, suggestions, or feedback regarding FactMania, feel free to reach out to me:

- Email: johntad110@example.com
- GitHub: [John Tad](https://github.com/johntad)

I appreciate your interest and involvement in advancing FactMania!