<h1>Uso de vistas en Plantillero</h1>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium numquam sapiente blanditiis voluptas provident facilis quibusdam magni adipisci dolorem, doloribus est ut totam veniam nam accusamus atque molestiae maxime exercitationem?</p>
<table>
    <thead>
        <tr>
            <th>Nombre</th>
            <th>Mensaje</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                {{nombre}}
            </td>
            <td>
                {{mensaje}}
            </td>
        </tr>
    </tbody>
    <section>
        {{foreach pulseras}}
        <div>
            <strong>{{sku}} {{nombre}} {{precio}}</strong>
        </div>
        {{endfor pulseras}}
    </section>
</table>