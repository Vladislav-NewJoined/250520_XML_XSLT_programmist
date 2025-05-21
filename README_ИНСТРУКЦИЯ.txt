Проект: Тестовое задание для вакансии: XML / XSLT‑программист
https://saransk.hh.ru/vacancy/120604409?hhtmFrom=chat

Автор: Созин Владислав
Контакты:
Telegram: https://t.me/tess_SV
Email: sozin.vladislav@mail.ru

Содержание проекта
В проекте реализованы решения тестового задания по JavaScript и XSLT 1.0:

Папка js/ — решения на JavaScript (файл test.js)

Папка xslt/ — решения на XSLT и тестовые данные:

Groups.xml, List.xml, Tree.xml, Flat.txt — входные и эталонные выходные файлы

groups_to_list.xslt — Groups.xml → List.xml

list_to_groups.xslt — List.xml → Groups.xml

tree_to_flat.xslt — Tree.xml → Flat.txt

numbers_template.xslt — шаблон для вывода чисел от 0 до M

Как проверить решения
1. Проверка JavaScript
Файл: js/test.js

Откройте файл в любом редакторе или скопируйте его содержимое.

Запустите файл в Node.js или браузере (F12 → Console → вставить код).

В файле уже есть встроенные проверки (console.assert). Если ошибок нет — значит, всё работает правильно.

При запуске вы увидите сообщения:

text
getFact работает корректно
capitalize работает корректно
getNFunctions работает корректно
getTotalPrice работает корректно
2. Проверка XSLT-преобразований
Вариант А: Через онлайн-сервис
Откройте сайт: https://www.utilities-online.info/xsltransformation

Вставьте содержимое нужного XML-файла в поле "XML Input".

Вставьте содержимое нужного XSLT-файла в поле "XSL Input".

Нажмите "Transform XML with XSL".

В поле "Result" появится результат. Сравните его с эталонным файлом.

Вариант Б: Через XML Notepad 2007 (Windows)
Скачайте и установите XML Notepad 2007.

Откройте нужный XML-файл.

В меню выберите "XSL Transform".

Укажите нужный XSLT-файл.

Нажмите "Transform" — результат появится в новом окне.

Вариант В: Через Saxon-HE (универсально)
Скачайте Saxon-HE JAR.

Убедитесь, что установлен Java.

Откройте командную строку в папке с файлами.

Выполните команду:

text
java -jar saxon-he-12.4.jar -s:Groups.xml -xsl:groups_to_list.xslt -o:result.xml
(замените имена файлов по необходимости)

Откройте result.xml и сравните с эталонным файлом.

3. Описание файлов
Groups.xml — описание групп и их элементов

List.xml — линейный список элементов с указанием группы

Tree.xml — древовидная структура

Flat.txt — плоский список путей из дерева

groups_to_list.xslt — XSLT для преобразования Groups.xml → List.xml

list_to_groups.xslt — XSLT для преобразования List.xml → Groups.xml

tree_to_flat.xslt — XSLT для преобразования Tree.xml → Flat.txt

numbers_template.xslt — XSLT-шаблон для вывода строки чисел от 0 до M

Вопросы и поддержка
Если у вас возникнут вопросы по запуску, проверке или доработке решений — пишите мне в Telegram или на почту, я оперативно помогу.

Примечания
Все XSLT-файлы написаны для версии 1.0.

JS-код совместим с современными браузерами и Node.js.

Если онлайн-сервисы временно недоступны, используйте локальные программы (XML Notepad, Saxon-HE).

Примечание:
Важно:
Во всех XSLT-преобразованиях, если создаются элементы без содержимого (например, <item .../>), используется синтаксис с фигурными скобками для подстановки атрибутов:
<item name="{@name}" group="{...}" />
Это гарантирует корректный и валидный XML на выходе.

С уважением, Созин Владислав
+7 909 328-59-88 (WhatsApp) 
https://t.me/tess_SV (Telegram) 
sozin.vladislav@mail.ru
