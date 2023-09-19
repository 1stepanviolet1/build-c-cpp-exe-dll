# Красивая компиляция С/С++ файлов (единичных)

Компиляция происходит с помощью clang (ТОЛЬКО для винды)


## Возможности

Компиляция возможна отдельно для С и С++, а также в разных вариациях, таких как exe и dll:

- cexe (компиляция exe из С)
- cppexe (компиляция exe из C++)
- cdll (компиляция dll из C)
- cppdll (компиляция dll из C++)


## Начало работы

Необходимо добавить папку includes в PATH (ТОЛЬКО для винды), там находятся консольные скрипты, на которых всё и построено (Да, все команды cexe, cppdll, .. являются консольными скриптами (НЕ exe) )

Можешь работать)


## Способ применения
(*) будет разобран только случай с cexe, остальные аналогичны.

1. В терминале в дериктории, в которой находится файл с исходным кодом, необходимо написать cexe
2. Далее команда попросит у вас имя важего файла с исходным кодом БЕЗ РАСШИРЕНИЯ
3. Следующим выводом команды будет либо ошибка компиляции (если код написан неверно), либо варминги и/или успешная компиляция
4. После чего команда запустит созданный exe и покажет результаты

(*) скомпиленая прога будет запускаться без аргументов, поэтому если вашей проге нужны аргументы, просто запустите exe с интересующими вас аргументами после выполнения команды
(*) команда не будет пытаться запустить скомпилированный dll)
