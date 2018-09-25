<div class="prodselectbox">
    <div class="floatleft cat">Category</div>
    <div class="floatleft catid">
        <select id="selectcat" name="categoryselected">
            <option class="rhth">Select Category</option>
            <option class="edibles" value="Edible Oils" id="selectionone">Edible Oils</option>
            <option class="vegfats" value="Vegetable Cooking Fats" id="selectiontwo">Vegetable Cooking Fats</option>
            <option value="Personal Care" id="selectionthree">Personal Care</option>
            <option class="marga" value="Margarines" id="selectionfour">Margarines</option>
            <option class='bak' value="Baking" id="selectionfive">Baking</option>
            <option class="launddet" value="Laundry Detergents" id="selectionsix">Laundry Detergents</option>
            <option class='laundsop' value="Laundry Soaps" id="selectionseven">Laundry Soaps</option>
        </select>
    </div>
    <div class="floatleft artid">Product</div>
    <div class="floatleft selectarticle">
        <select id="selectprod" name="articleID">
            <option value="" class="rhth23">Select Product</option>
            <option value="elianto" class="selectors edibles">Elianto</option>
            <option value="ufuta" class="hidden selectors edibles">Ufuta</option>
            <option value="bahari-fry" class="selectors edibles">Bahari Fry</option>
            <option value="golden-fry" class="selectors edibles">Golden Fry</option>
            <option value="olive-gold" class="selectors edibles">Olive Gold</option>
            <option value="soya-gold" class="selectors edibles">Soya Gold</option>
            <option value="sun-gold" class="selectors edibles">Sun Gold</option>
            <option value="chipo-pus-3" class="selectors vegfats">Chipo Plus 3</option>
            <option value="cowboy" class="selectors vegfats">Cowboy</option>
            <option value="kimbo" class="selectors vegfats">Kimbo</option>
            <option value="mallo" class="selectors vegfats">Mallo</option>
            <option value="veebol-vegetable-cooking-fat" class="selectors vegfats">Veebol Vegetable Fat</option>
            <option value="yello" class="selectors vegfats">Yello</option>
            <option value="pure-natural-active-man" class="selectors percare">Pure & Natural Active-Man</option>
            <option value="pure-natural-beauty-soap" class="selectors percare">Pure & Natural Beauty Soap</option>
            <option value="biddy" class="selectors marga">Biddy&#39;s</option>
            <option value="gold-band-margarine" class="selectors marga">Gold Band Margarine</option>
            <option value="veebol-pastry" class="selectors marga">Veebool Pastry</option>
            <option value="bake-rite" class="selectors bak">Bake&#39;rite</option>
            <option value="mariandazi" class="selectors bak">Mariandazi</option>
            <option value="gental-hand-wash" class="selectors launddet">Gental Hand Wash</option>
            <option value="powerboy-pro-activ-liquid-detergent" class="selectors launddet">Powerboy Pro-Activ Liquid Detergent</option>
            <option value="powerboy-washing-powder" class="selectors launddet">Powerboy Washing Powder</option>
            <option value="pure-and-natural-soap-flakes" class="selectors launddet">Pure And Natural Soap Flakes</option>
            <option value="bidco-cream" class="selectors laundsop">Bidco Cream</option>
            <option value="bidco-idp" class="selectors laundsop">BIDCO IDP</option>
            <option value="kuku" class="selectors laundsop">KUKU</option>
            <option value="msafi" class="selectors laundsop">Msafi</option>
            <option value="nuru-lemon-fresh-scouring-powder" class="selectors laundsop">Nuru Lemon Fresh Scouring Powder</option>
            <option value="nuru-multipurpose-soap" class="selectors laundsop">Nuru Multipurpose Soap</option>
            <option value="the-star-range-of-soaps" class="selectors laundsop">The Star Range Of Soaps</option>
            <option value="white-star-laundry-soap" class="selectors laundsop">White Star</option>
        </select>
    </div>
    <div class="clearfix"></div>
</div>
<script>
    $(document).ready(function () {    
    var allOptions = $('#selectprod option')
    $('#selectcat').change(function () {
        $('#selectprod option').remove()
        var classN = $('#selectcat option:selected').prop('class');
        var opts = allOptions.filter('.' + classN);
        $.each(opts, function (i, j) {
            $(j).appendTo('#selectprod');
        });
    });
});
</script>


