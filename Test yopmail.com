*** Settings ***                                     //коментарии нужно удалять-все, что после двух slash'ей удалить
Library	Selenium2Library                             //подключение библиотеки для работы с Web-приложениями
#Test Teardown	Close All Browsers                   //строка выполнения кейворда закрыть все броузеры по завершению тестов




*** Testcase ***                                     //название таблицы, в которую входят тесты
Check login yopmail and go to the mailbox            //название самого теста 
	Open Browser	http://www.yopmail.com/ru/	firefox  //кейворд для открытия броузера 
	Maximize Browser Window                            //кейворд, расширяющий окно на максимум 
	Input Text		login					testmailat             //кейворд-ввод текста testmailat(тут пишется любой логин) в поле login
	Click Button	Проверить почту                      //кейворд нажатия кнопки "Проверить почту"
  #Test Teardown	Close All Browsers стоит пот тэгом, чтобы была возможность посмотреть результат
