import inquirer
from inquirer import Checkbox as QuestionCheckbox
from inquirer import List as QuestionList

class Questions:
    questions = [
    inquirer.Checkbox('interests',
                        message="What are you interested in?",
                        choices=['Computers', 'Books', 'Science', 'Nature', 'Fantasy', 'History'],
                        ),
    ]
    answers = inquirer.prompt(questions)

print(answers)