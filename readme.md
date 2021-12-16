# Latency Benchmark PHP vs NodeJS
> __TL;DR__ NodeJS is better for CPU-easy operations and has more consistent latency overall. For CPU-intensive operations, there is no clear winner - NodeJS again has more consistent latency, but loses out significantly from P99 onwards.

The following measurement shows the latency of PHP and NodeJS on a basic VPS from Linode. In the measurement I included operations that I needed in my API, namely: simple regex on long text, bulky JSON and working with MySQL.

The infrastructure included several VPSs in the same datacenter: 1x PHP VPS, 1x NodeJS VPS, 1x MySQL VPS, 1x higher performance VPS with wrk. As an operating system I used Ubuntu Server 20.04 LTS everywhere.

Code and configuration can be seen in the respective folders.

### CPU Easy Task (Regex + MySQL)
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

### CPU Intesive Task (JSON + Regex + MySQL)
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