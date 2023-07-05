
- Exercício de programação 8: E8
SELECT t.cdvdd, t.nmvdd
FROM tbvendedor t
WHERE t.cdvdd = (
    SELECT v.cdvdd
    FROM tbvendas v
    GROUP BY v.cdvdd
    ORDER BY COUNT(*) DESC
    LIMIT 1
);
