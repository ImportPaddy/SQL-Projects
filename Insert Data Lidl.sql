INSERT INTO
Suppliers
  (supplier_id, supplier_name, supplier_contact)
VALUES
  (1, 'BestFoodSupplier', '07123456789'),
  (2, 'BakeryTeam', '07987654321'),
  (3, 'LidlClothes', '07123789456'),
  (4, 'ExtraElectronics', '07987321654');

INSERT INTO 
Inventory 
  (product_id, product_name, product_category, price, stock, supplier_id)
VALUES
  (1, 'Bread', 'Food', 1.20, 100, 1),
  (2, 'Apples', 'Food', 1.25, 150, 1),
  (3, 'Donut', 'Bakery', 0.50, 75, 2),
  (4, 'Gloves', 'Clothing', 5.50, 40, 3),
  (5, 'AirFryer', 'Electronics', 0.50, 100, 4);