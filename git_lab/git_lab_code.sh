mkdir git_lab
cd git_lab
git init
git branch -m main
git status
echo "Первая версия файла" > notes.txt
cat notes.txt
git status
git add notes.txt
git status
git commit -m "Добавлен файл notes.txt"
git log
git log --oneline
echo -e "Вторая строка\nТретья строка" >> notes.txt
cat notes.txt
git status
git diff
git add notes.txt
git diff --staged
git commit -m "Добавлены две новые строки в notes.txt"
git log --oneline
echo "Четвёртая строка - описание проекта" >> notes.txt
git add notes.txt
git commit -m "Добавлено описание проекта"
echo "Пятая строка - цели лабораторной" >> notes.txt
git add notes.txt
git commit -m "Добавлены цели лабораторной работы"
echo "Шестая строка - итоги" >> notes.txt
git add notes.txt
git commit -m "Добавлены итоги работы"
cat notes.txt
git log --oneline
git switch -c experiment
echo "Это экспериментальный файл для тестирования веток в Git." > experiment.txt
cat experiment.txt
git add experiment.txt
git commit -m "Добавлен experiment.txt в ветке experiment"
git log --oneline
git switch main
ls -la
git merge experiment
ls -la
cat experiment.txt
git log --oneline --graph
echo "Временное незакоммиченное изменение" >> notes.txt
cat notes.txt
git diff
git restore notes.txt
git status
cat notes.txt
echo "Изменение для индекса" >> notes.txt
git add notes.txt
git status
git restore --staged notes.txt
git status
cat notes.txt
git restore notes.txt
echo "Экспериментальное изменение содержимого" >> notes.txt
git add notes.txt
git commit -m "Экспериментальное изменение"
git log --oneline
git revert --no-edit HEAD
git log --oneline --graph
git switch -c feature/self-work
echo "Файл для самостоятельной работы" > self_work.txt
cat self_work.txt
git add self_work.txt
git commit -m "Создан файл self_work.txt"
echo "Добавлена вторая версия с дополнительным текстом" >> self_work.txt
cat self_work.txt
git add self_work.txt
git commit -m "Обновлён self_work.txt - добавлен текст"
git log --oneline
git diff HEAD~1 HEAD
git switch main
git merge feature/self-work
ls -la
cat notes.txt
cat experiment.txt
cat self_work.txt
git log --oneline --graph
git status
git branch
