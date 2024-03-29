<h2>{{modeDesc}}</h2>
<section>
    <form action="index.php?page=Products_CategoryForm&mode={{mode}}&category_id={{category_id}}" method="post">
        <input type="hidden" name="category_id" value="{{category_id}}">
        <div class="row">
        <label for="category_id">ID</label>
        <input type="text" name="category_id" id="category_id" value="{{category_id}}" disabled>
        </div>&nbsp;
        <div class="row">
        <label for="category_name">Categoria</label>
        <input type="text" name="category_name" id="category_name" value="{{category_name}}">
        </div>&nbsp;
        <div class="row">
            <label for="category_smal_desc">Descripcion</label>
            <input type="text" name="category_smal_desc" id="category_smal_desc" value="{{category_smal_desc}}">
        </div>&nbsp;
        <div class="row">
            <label for="category_status">Status</label>
            <select name="category_status" id="category_status">
                {{foreach category_status_list}}
                    <option value="{{value}}" {{selected}}>{{text}}</option>
                {{endfor category_status_list}}
            </select>
        </div>&nbsp;
        <div class="row">
            <button type="submit" name="btnGuardar" id="btnGuardar">Guardar</button>
            &nbsp;
            <button name="btnCancelar" id="btnCancelar">Cancelar</button>
        </div>
    </form>
</section>

<script>
    document.addEventListener('DOMContentLoaded', function(){
        const btnCancelar = document.getElementById('btnCancelar');
        btnCancelar.addEventListener('click', function(e){
            e.preventDefault();
            e.stopPropagation();
            window.location.href = 'index.php?page=Products_CategoriesList';
        });
    });
</script>