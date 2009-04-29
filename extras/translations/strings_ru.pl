use utf8;

use constant S_HOME => 'Домой';										# Forwards to home page
use constant S_ADMIN => 'Управление';									# Forwards to Management Panel
use constant S_RETURN => 'Назад';									# Returns to image board
use constant S_POSTING => 'Режим отправки: ответ';					# Prints message in red bar atop the reply screen

use constant S_NAME => 'Имя';										# Describes name field
use constant S_EMAIL => 'Ссылка';									# Describes e-mail field
use constant S_SUBJECT => 'Тема';								# Describes subject field
use constant S_SUBMIT => 'Отправить';									# Describes submit button
use constant S_COMMENT => 'Текст';								# Describes comment field
use constant S_UPLOADFILE => 'Файл';								# Describes file field
use constant S_NOFILE => 'Файла нет';									# Describes file/no file checkbox
use constant S_CAPTCHA => 'Подтверждение';							# Describes captcha field
use constant S_PARENT => 'Предок';									# Describes parent field on admin post page
use constant S_DELPASS => 'Пароль';								# Describes password field
use constant S_DELEXPL => '(для удаления поста и файлов)';			# Prints explanation for password box (to the right)
use constant S_SPAMTRAP => 'Оставь эти поля пустыми: ';

use constant S_THUMB => 'Изображение уменьшено, кликни для увеличения.';	# Prints instructions for viewing real source
use constant S_HIDDEN => 'Изображение скрыто, кликни имя файла для отображения.';	# Prints instructions for viewing hidden image reply
use constant S_NOTHUMB => 'Нет<br />изображения';								# Printed when there's no thumbnail
use constant S_PICNAME => 'Файл: ';											# Prints text before upload name/link
use constant S_REPLY => 'Ответить';											# Prints text for reply link
use constant S_OLD => 'Отмечено для удаления (устарел).';							# Prints text to be displayed before post is marked for deletion, see: retention
use constant S_ABBR => 'Пропущено постов: %d. Кликни Ответить для просмотра.';			# Prints text to be shown when replies are hidden
use constant S_ABBRIMG => 'Пропущено постов: %d, изображений: %d. Кликни Ответить для просмотра';	# Prints text to be shown when replies and images are hidden
use constant S_ABBRTEXT => 'Комментарий слишком длинный. Кликни <a href="%s">сюда</a> чтобы увидеть его весь.';

use constant S_REPDEL => 'Удалить пост ';							# Prints text next to S_DELPICONLY (left)
use constant S_DELPICONLY => 'Только файл';							# Prints text next to checkbox for file deletion (right)
use constant S_DELKEY => 'Пароль ';								# Prints text next to password field for deletion (left)
use constant S_DELETE => 'Удалить';									# Defines deletion button's name

use constant S_PREV => 'Предыдущие';									# Defines previous button
use constant S_FIRSTPG => 'Предыдущие';								# Defines previous button
use constant S_NEXT => 'Следующие';										# Defines next button
use constant S_LASTPG => 'Следующие';									# Defines next button

use constant S_WEEKDAYS => ('Вск','Пон','Втр','Срд','Чтв','Птн','Сбт');	# Defines abbreviated weekday names.

use constant S_MANARET => 'Назад';										# Returns to HTML file instead of PHP--thus no log/SQLDB update occurs
use constant S_MANAMODE => 'Режим управления';								# Prints heading on top of Manager page

use constant S_MANALOGIN => 'Вход администратора';							# Defines Management Panel radio button--allows the user to view the management panel (overview of all posts)
use constant S_ADMINPASS => 'Пароль администратора:';							# Prints login prompt

use constant S_MANAPANEL => 'Панель управления';							# Defines Management Panel radio button--allows the user to view the management panel (overview of all posts)
use constant S_MANABANS => 'Баны/Белый список';							# Defines Bans Panel button
use constant S_MANAPROXY => 'Прокси';
use constant S_MANASPAM => 'Спам';										# Defines Spam Panel button
use constant S_MANASQLDUMP => 'SQL Dump';								# Defines SQL dump button
use constant S_MANASQLINT => 'SQL Interface';							# Defines SQL interface button
use constant S_MANAPOST => 'Админский пост';								# Defines Manager Post radio button--allows the user to post using HTML code in the comment box
use constant S_MANAREBUILD => 'Пересоздать кеши';							# 
use constant S_MANANUKE => 'Уничтожить борду';								# 
use constant S_MANALOGOUT => 'Выйти';									# 
use constant S_MANASAVE => 'Запомнить меня на этой машине';				# Defines Label for the login cookie checbox
use constant S_MANASUB => 'Панеслася!';									# Defines name for submit button in Manager Mode

use constant S_NOTAGS => 'Теги HTML разрешены. Никакого форматирования не будет, ставь переводы строк и абзацы самостоятельно.'; # Prints message on Management Board

use constant S_MPDELETEIP => 'Удалить все';
use constant S_MPDELETE => 'Удалить';									# Defines for deletion button in Management Panel
use constant S_MPARCHIVE => 'Архив';
use constant S_MPRESET => 'Сброс';										# Defines name for field reset button in Management Panel
use constant S_MPONLYPIC => 'Только файл';								# Sets whether or not to delete only file, or entire post/thread
use constant S_MPDELETEALL => 'Удалить&nbsp;все';							# 
use constant S_MPBAN => 'Бан';											# Sets whether or not to delete only file, or entire post/thread
use constant S_MPTABLE => '<th>Пост №</th><th>Время</th><th>Тема</th>'.
                          '<th>Имя</th><th>Текст</th><th>IP</th>';	# Explains names for Management Panel
use constant S_IMGSPACEUSAGE => '[ Используется места: %d KB ]';				# Prints space used KB by the board under Management Panel

use constant S_BANTABLE => '<th>Тип</th><th>Значение</th><th>Текст</th><th>Действие</th>'; # Explains names for Ban Panel
use constant S_BANIPLABEL => 'IP';
use constant S_BANMASKLABEL => 'Маска';
use constant S_BANCOMMENTLABEL => 'Текст';
use constant S_BANWORDLABEL => 'Слово';
use constant S_BANIP => 'Бан по IP';
use constant S_BANWORD => 'Бан по слову';
use constant S_BANWHITELIST => 'Белый список';
use constant S_BANREMOVE => 'Удалить';
use constant S_BANCOMMENT => 'Текст';
use constant S_BANTRUST => 'Без каптчи';
use constant S_BANTRUSTTRIP => 'Tripcode';

use constant S_PROXYTABLE => '<th>Тип</th><th>IP</th><th>Годен до</th><th>Дата</th>'; # Explains names for Proxy Panel
use constant S_PROXYIPLABEL => 'IP';
use constant S_PROXYTIMELABEL => 'Секунд осталось';
use constant S_PROXYREMOVEBLACK => 'Удалить';
use constant S_PROXYWHITELIST => 'Белый список';
use constant S_PROXYDISABLED => 'Обнаружение прокси в данный момент отключено в настройках.';
use constant S_BADIP => 'Плохое значение IP';

use constant S_SPAMEXPL => 'This is the list of domain names Wakaba considers to be spam.<br />'.
                           'You can find an up-to-date version <a href="http://wakaba.c3.cx/antispam/antispam.pl?action=view&amp;format=wakaba">here</a>, '.
                           'or you can get the <code>spam.txt</code> file directly <a href="http://wakaba.c3.cx/antispam/spam.txt">here</a>.';
use constant S_SPAMSUBMIT => 'Сохранить';
use constant S_SPAMCLEAR => 'Очистить';
use constant S_SPAMRESET => 'Восстановить';

use constant S_SQLNUKE => 'Пароль удаления:';
use constant S_SQLEXECUTE => 'Выполнить';

use constant S_TOOBIG => 'Изображение слишком большое! Залей что-нибудь поменьше!';
use constant S_TOOBIGORNONE => 'Либо изображение слишком большое, либо его вообще не было. Ага.';
use constant S_REPORTERR => 'Ошибка: Не могу найти ответ.';					# Returns error when a reply (res) cannot be found
use constant S_UPFAIL => 'Ошибка: Сбой при загрузке.';							# Returns error for failed upload (reason: unknown?)
use constant S_NOREC => 'Ошибка: Не могу найти запись.';						# Returns error when record cannot be found
use constant S_NOCAPTCHA => 'Ошибка: Нет этого кода подтверждения, наверное он просрочен.';	# Returns error when there's no captcha in the database for this IP/key
use constant S_BADCAPTCHA => 'Ошибка: Код подтверждения неверен.';		# Returns error when the captcha is wrong
use constant S_BADFORMAT => 'Ошибка: Формат файла не поддерживается.';			# Returns error when the file is not in a supported format.
use constant S_STRREF => 'Ошибка: Не принимаю строку.';							# Returns error when a string is refused
use constant S_UNJUST => 'Ошибка: Хреновый POST.';								# Returns error on an unjust POST - prevents floodbots or ways not using POST method?
use constant S_NOPIC => 'Ошибка: Файл не выбран. Забыл клацнуть "Ответить"?';	# Returns error for no file selected and override unchecked
use constant S_NOTEXT => 'Ошибка: Текст не введён.';						# Returns error for no text entered in to subject/comment
use constant S_TOOLONG => 'Ошибка: Слишком много символов в текстовом поле.';		# Returns error for too many characters in a given field
use constant S_NOTALLOWED => 'Ошибка: Отправка не разрешена.';					# Returns error for non-allowed post types
use constant S_UNUSUAL => 'Ошибка: Аномальный ответ.';							# Returns error for abnormal reply? (this is a mystery!)
use constant S_BADHOST => 'Ошибка: Хост забанен.';							# Returns error for banned host ($badip string)
use constant S_BADHOSTPROXY => 'Ошибка: Прокси забанено.';	# Returns error for banned proxy ($badip string)
use constant S_RENZOKU => 'Ошибка: Обнаружен флуд, пост отвергнут.';			# Returns error for $sec/post spam filter
use constant S_RENZOKU2 => 'Ошибка: Обнаружен флуд, файл отвергнут.';		# Returns error for $sec/upload spam filter
use constant S_RENZOKU3 => 'Ошибка: Обнаружен флуд.';						# Returns error for $sec/similar posts spam filter.
use constant S_PROXY => 'Ошибка: Обнаружен открытый прокси.';						# Returns error for proxy detection.
use constant S_DUPE => 'Ошибка: Файл уже залит <a href="%s">здесь</a>.';	# Returns error when an md5 checksum already exists.
use constant S_DUPENAME => 'Ошибка: Файл с тем же именем уже есть.';	# Returns error when an filename already exists.
use constant S_NOTHREADERR => 'Ошибка: Темы нет.';				# Returns error when a non-existant thread is accessed
use constant S_BADDELPASS => 'Ошибка: Неверный пароль на удаление.';		# Returns error for wrong password (when user tries to delete file)
use constant S_WRONGPASS => 'Ошибка: Неверный пароль на управление.';		# Returns error for wrong password (when trying to access Manager modes)
use constant S_VIRUS => 'Ошибка: Файл может быть инфицирован.';				# Returns error for malformed files suspected of being virus-infected.
use constant S_NOTWRITE => 'Ошибка: Не могу писать в каталог.';				# Returns error when the script cannot write to the directory, the chmod (777) is wrong
use constant S_SPAM => 'Спамеры идут лесом.';					# Returns error when detecting spam

use constant S_SQLCONF => 'Ошибка подключения SQL';							# Database connection failure
use constant S_SQLFAIL => 'Критическая ошибка SQL!';							# SQL Failure

use constant S_REDIR => 'Если перенаправление не сработало, выбери какое-нибудь из следующих зеркал:';    # Redir message for html in REDIR_DIR

1;

