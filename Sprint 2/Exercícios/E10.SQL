- Exercício de programação 10: E10
select
    ve.nmvdd as vendedor,
    sum(v.qtd * v.vrunt) as valor_total_vendas,
    round(perccomissao/100.0 * sum(v.qtd * v.vrunt), 2) as comissao 
    
from tbvendedor ve 
left join tbvendas v on ve.cdvdd= v.cdvdd
where status = 'Concluído' 
group by ve.nmvdd
order by comissao desc;
