
SELECT p.FIRST_NAME, p.LAST_NAME
FROM patients p
LEFT JOIN visit_info v ON p.PATIENT_ID = v.PATIENT_ID
LEFT JOIN doctor d ON v.DOCTOR_ID = d.DOCTOR_ID
WHERE d.SPECIALIZATION = 'Cardiologist';
SELECT * FROM DOCTOR;
SELECT p.FIRST_NAME, p.LAST_NAME
FROM patients p
LEFT JOIN cliams c ON p.PATIENT_ID = c.PATIENT_ID
LEFT JOIN insurence ins ON c.INSURENCE_ID = ins.INSURENCE_ID
WHERE ins.DISCOUNT = 30;
SELECT ph.name, SUM(i.amount) AS total_amount 
FROM invoices i 
JOIN visit_info v ON i.invoice_id = v.invoice_id 
JOIN prescription_info p ON v.visit_id = p.visit_id 
JOIN pharmacies ph ON p.pharmacy_id = ph.pharmacy_id 
WHERE v.patient_id = '23' 
GROUP BY ph.name;

SELECT SUM(amount) AS total_amount FROM invoices WHERE invoice_id IN 
(SELECT invoice_id FROM visit_info WHERE patient_id BETWEEN 15 AND 25);

SELECT * FROM COMPANIES WHERE COMPANY_id  BETWEEN 10 AND 20;