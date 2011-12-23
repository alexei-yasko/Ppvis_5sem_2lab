CREATE TABLE RECIPE(
	id_recipe INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	recipe VARCHAR(100),
	text VARCHAR(10000)
);

insert into RECIPE(recipe, text)
values('������� ������� ����� � �������', '� ������� ������ ����� ���� � �������� �����. ��������� 4 ����.
 ������ ���� ��������� �� 2 ����� - ������� ���� � ����� ����. ������� ���� ��������� ������������� �� ��� ������, �� �� ������� �� �����.
 �������� ���� �� ������� ��� �����.����� ��� �� ��������� � ����� ���� - ��������� ������������� � ��������.
��� ����������� ���� �������� ������� ����. �������� - �������� 1/4~1/3 � ����� ���� �� ���� ����.
�������� ������ ������ � ��������. ������ ����� �� ������ �����. ����� ������ ��� ������ �������� ������� �������.
��� �������, ����� ���� ������ ��� ���� � ������, ������� ����������� ���� ������� ��� �������� ���������.
��������� ���� ��������� �����. � ������� ���� ��������� ����� ����, ���������� ����.�� ���� ����������� ���� ��������� ���������� �����.
�������� ������ ������� ������.�������� �������. ��������� � ����������� �� 1~3 ����.����� ������� �� ������� � ��������� �����
� ������� ������� �������. ��������� ������ ������ ������� ����������� ��������� � ����������� �� ������ �������.
������� � �������� ��������� �� ����� ������� ������� �������.��� ������ ���������� ���������, ����������� �������. ��� ����� ������� ������ ��������� ��� �������.
��� ��������� ��� ����, ����� ������������ ������� �� ��������� ����. ����������� � ������� ��������� �� t=50�C.
������ ������� �������� ������� �����������. ���� ����, �� �������� ����� ����������. ������ ������ �� 4 �� 5 �����.');

insert into RECIPE(recipe, text)
values('��������� ����� � ���������������� �����', '������ �������� �� ������� � ������� ��������� ��� ������������� �����.
������ ��� ����� ��������. ������ �������� ���������� ��������. ���� ������ �� �����, ������� ����� � �������� �� �������.
� ��������� ������� ������� �����, ������� � �����. ��� ������� ����� �������� ������� �����. 
��� ������������ ������ ���������� � ������ ���������. �����������. ��� ������������� ��������. ');

insert into RECIPE(recipe, text)
values('��������� ��������, ���������� � �������', '��������� � ������� �������� � �������� ������� ��������.
���� ��������� � ������� ����� �������, �� ����� �������� ����- ��� �������� ��������.
���������� ��������� ������� �� �������� � �������� ����. ��� �������� ������� ����������������.
������ ������ 3~4%-�� �������� ������� � �������� �� 1 ������. ����� ����� ��������� �����.
������� ���������, ������� � ���. ��� ������� ����� �������� ����� ���������� �����.
������� ��� ����� � �/� �����.����� ���� ����� � �������� ����, ����� � �������. ����� ����� �������� ������ ������ �� �������.
����� ������, ��������� ������ ���������.�������� �����, ����� ������ �������������� ����������.
�������� ����� �� ������ � ������ ��� ���������; ����������.������ ��������� ���������� �����.��������� � ���������� �� t=200~220�C �������.
����� 15~20 �����, ����� ���� �� ������ ���������, ������� ����� ������ ������ ������.
��� ����� 20 ����� ����������� ��������� ��������� �����. ���� ��� ������ �����, �� ����� ������.
���� ��� ������ � ������� � � ��������������, �� �������� ����� � ������� ��� �� 10 ����� � �������� �������� �����.
�������� �� ��� ���, ���� ��������� �� ������ ������.');


CREATE TABLE INGREDIENT(
	id_recipe INTEGER,
	ingredient VARCHAR(50),
	quantity VARCHAR(50),
	dimension VARCHAR(20)
);

ALTER TABLE INGREDIENT ADD FOREIGN KEY (id_recipe)
REFERENCES RECIPE (id_recipe) ON DELETE CASCADE;

insert into INGREDIENT(id_recipe, ingredient, quantity, dimension)
values(1, '������� ������', '1', 'kg');

insert into INGREDIENT(id_recipe, ingredient, quantity, dimension)
values(1, '����� � �������', '150', 'g');

insert into INGREDIENT(id_recipe, ingredient, quantity, dimension)
values(1, '����, �����, �����, ��������', '~', '~');

insert into INGREDIENT(id_recipe, ingredient, quantity, dimension)
values(2, '����� ������', '350', 'g');


insert into INGREDIENT(id_recipe, ingredient, quantity, dimension)
values(2, '������', '150', 'g');

insert into INGREDIENT(id_recipe, ingredient, quantity, dimension)
values(2, '������ �������� ����', '30', 'g');

insert into INGREDIENT(id_recipe, ingredient, quantity, dimension)
values(2, '����� ������� ', '350', 'g');

insert into INGREDIENT(id_recipe, ingredient, quantity, dimension)
values(2, '2 �� ����� ������������� �����, 2 � ����� 3~4% ��������� ������, 1 � ����� �������, ����� ��� �������', '~', '~');

insert into INGREDIENT(id_recipe, ingredient, quantity, dimension)
values(3, '���������', '1,5', 'kg');

insert into INGREDIENT(id_recipe, ingredient, quantity, dimension)
values(3, '�������', '300', 'g');

insert into INGREDIENT(id_recipe, ingredient, quantity, dimension)
values(3, '���', '100', 'g');

insert into INGREDIENT(id_recipe, ingredient, quantity, dimension)
values(3, '�����', '350', 'g');

insert into INGREDIENT(id_recipe, ingredient, quantity, dimension)
values(3, '3 �� ����� ������������� �����, �������� �����, ����, �����, ������� �������, �����', '~', '~');



CREATE TABLE CATEGORY(
	id_recipe INTEGER,
	category VARCHAR(50)
);

ALTER TABLE CATEGORY ADD FOREIGN KEY (id_recipe)
REFERENCES RECIPE (id_recipe) ON DELETE CASCADE;

insert into CATEGORY(id_recipe, category)
values(1, '�������');

insert into CATEGORY(id_recipe, category)
values(4, '�������');

insert into CATEGORY(id_recipe, category)
values(2, '������');

insert into CATEGORY(id_recipe, category)
values(3, '������� �����');


CREATE TABLE ADVICE(
	id_recipe INTEGER,
	advice VARCHAR(100)
);

ALTER TABLE ADVICE ADD FOREIGN KEY (id_recipe)
REFERENCES RECIPE (id_recipe) ON DELETE CASCADE;

insert into ADVICE(id_recipe, advice)
values(2, 'fsdfsdfsdfsdffffffffffffffgtyrhrth');

insert into ADVICE(id_recipe, advice)
values(1, 'tertertertertertertreterterterterterte');

insert into ADVICE(id_recipe, advice)
values(2, 'l;lkjhggggggggggytuitiykjuhkhjkhjkhjkhj');