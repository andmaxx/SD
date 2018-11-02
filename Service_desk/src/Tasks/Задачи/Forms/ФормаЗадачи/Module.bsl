
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	Если НЕ ЗначениеЗаполнено(Объект.Ссылка) Тогда
		ТекИсполнитель = Справочники.Исполнители.НайтиПоНаименованию(ПользователиИнформационнойБазы.ТекущийПользователь().Имя);

		Объект.Дата = ТекущаяДата();
		Объект.Исполнитель = ТекИсполнитель;
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
Процедура OK(Команда)
	Записать();
	Закрыть();
КонецПроцедуры

&НаКлиенте
Процедура НеВыполненоЗакрыть(Команда)
	Объект.Выполнена = Ложь;
	Записать();
	Закрыть();
КонецПроцедуры
