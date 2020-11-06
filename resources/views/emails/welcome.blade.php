
<div class="modal-content">
    <div class="modal-header">
        <h3 class="heading my15">
            Cher {{ $data['name'] }},
        </h3>
    </div>
    <div class="modal-body">
        <div class="spaceline">
            <p>
                Nous vous souhaitons la bienvenue sur bricolya.com. Pour vous connecter lors de vos visites
                sur notre site, cliquez sur connexion ou Mon compte en haut de chaque page, puis saisissez
                votre adress electronique et votre mot de passe.
            </p>
        </div>
        @if($data['user_type'] == 'seller')
        <div class="spaceline">
            <p> Utilisez les valeurs suivants lorsque vous etes invite a vous connecter: </p>
            <p> Courriel: {{ $data['email'] }}</p>
            <p> Mot de passe: xxxxxxxx </p>
        </div>
        <div class="spaceline">
            <p> En vous connectant a votre compte, vous pourrez: </p>
            <br>
            <ul>
                <li><p>Passez vos commandes plus repidement</p></li>
                <li><p>Suivez I'evolution de vos commandes</p></li>
                <li><p>Consultez vos commandes passees</p></li>
                <li><p>Modifier Les informations de votre compte</p></li>
                <li><p>changer votre mot de passe</p></li>
                <li><p>Enregistrement de plusieurs adresses</p></li>
            </ul>
            <br>
            <p> Si vous avez des questions concernant votre compte ou toute autre question, n'hesitez pas a nous contacter a
                I'adresse contact@bricolya.com ou par telephone au 05 22 450 077865872314</p>
        </div>
        @endif
    </div>
</div>