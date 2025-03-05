CREATE OR REPLACE FUNCTION apply_discount()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.total_amount > 1000 THEN
        NEW.total_amount := NEW.total_amount * 0.90;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER discount_trigger
BEFORE INSERT ON Orders
FOR EACH ROW EXECUTE FUNCTION apply_discount();

CREATE OR REPLACE FUNCTION update_stock()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Products
    SET stock = stock - NEW.quantity
    WHERE product_id = NEW.product_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER stock_update_trigger
AFTER INSERT ON Order_Items
FOR EACH ROW EXECUTE FUNCTION update_stock();