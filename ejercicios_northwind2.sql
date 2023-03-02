# 1.Crea una consulta que actualice el precio de todos los productos aumentándolas el 21% (multiplicamos el precio actual * 1,21)
	CREATE PROCEDURE xxxx
		BEGIN
			UPDATE products
			SET UnitPrice = UnitPrice * 1.21;
		END;
# 2.Crea una consulta que aumente en 30 unidades el número de unidades en stock de las categorías “Dairy Products” y “Seafood”
	CREATE PROCEDURE xxxx
		BEGIN
			UPDATE products
			SET UnitsInStock = UnitsInStock + 30
			WHERE CategoryID IN 
			(SELECT *
			FROM categories
			WHERE CategoryID = CategoryName = "Dairy Products" 
			AND CategoryID = CategoryName = "Seafood");
		END;