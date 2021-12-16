# Srovnávací test latence PHP vs NodeJS
> __TL;DR__ NodeJS je lepší pro operace nenáročné na CPU. Pro CPU intezivní operace není jednoznačný vítěz – NodeJS má více konzistetní latenci, ale výrazně ztrácí již od P99.

Následující měření ukazuje latenci PHP a NodeJS na základní VPS od Linode. Do měření jsem zahrnul operace, které jsem potřeboval v připravovaném API, konkrétně: jednoduchý regex na dlouhém textu, objemný JSON a práci s MySQL.

Infrastruktura zahrnovala několik VPS v jdnom datacentru: 1x VPS PHP, 1x VPS NodeJS, 1x VPS MySQL, 1x výkonnější VPS s wrk. Jako operační systém jsem všude použil Ubuntu Server 20.04 LTS.

Kód a konfigurace je k vidění v příslušných složkách.

### Nenáročný úkol na CPU (Regex + MySQL)
`wrk -c50 -d120s --latency`
<table>
    <tr>
        <td></td>
        <td>Max. latency</td>
        <td>P99</td>
        <td>P90</td>
        <td>P75</td>
    </tr>
    <tr>
        <td>NodeJS v17.2.0</td>
        <td>348</td>
        <td>115</td>
        <td>78</td>
        <td>66</td>
    </tr>
    <tr>
        <td>PHP 8.1</td>
        <td>412</td>
        <td>235</td>
        <td>149</td>
        <td>112</td>
    </tr>
</table>

`wrk -c100 -d120s --latency`
<table>
    <tr>
        <td></td>
        <td>Max. latency</td>
        <td>P99</td>
        <td>P90</td>
        <td>P75</td>
    </tr>
    <tr>
        <td>NodeJS v17.2.0</td>
        <td>434</td>
        <td>187</td>
        <td>139</td>
        <td>121</td>
    </tr>
    <tr>
        <td>PHP 8.1</td>
        <td>712</td>
        <td>406</td>
        <td>285</td>
        <td>227</td>
    </tr>
</table>

### Náročný úkol na CPU (JSON + Regex + MySQL)
`wrk -c50 -d120s --latency`
<table>
    <tr>
        <td></td>
        <td>Max. latency</td>
        <td>P99</td>
        <td>P90</td>
        <td>P75</td>
    </tr>
    <tr>
        <td>NodeJS v17.2.0</td>
        <td>519</td>
        <td>367</td>
        <td>294</td>
        <td>249</td>
    </tr>
    <tr>
        <td>PHP 8.1</td>
        <td>467</td>
        <td>202</td>
        <td>164</td>
        <td>147</td>
    </tr>
</table>

`wrk -c100 -d120s --latency`
<table>
    <tr>
        <td></td>
        <td>Max. latency</td>
        <td>P99</td>
        <td>P90</td>
        <td>P75</td>
    </tr>
    <tr>
        <td>NodeJS v17.2.0</td>
        <td>963</td>
        <td>745</td>
        <td>586</td>
        <td>506</td>
    </tr>
    <tr>
        <td>PHP 8.1</td>
        <td>1530</td>
        <td>442</td>
        <td>355</td>
        <td>321</td>
    </tr>
</table>