
<div class="row page-margin-top ">
    <form class="contact-form" id="contact-form" method="post" action="/contact">
        {{ csrf_field() }}
        <div class="row">
            <fieldset class="column column-1-2">
                <input class="text-input" name="name" type="text"   placeholder="Ваше имя *" required>
                <input class="text-input" name="email" type="text"  placeholder="Ваш Email *" required>
                <input class="text-input" name="phone" type="text"  placeholder="Ваш телефон *" required>
            </fieldset>
            <fieldset class="column column-1-2">
                <textarea name="message" placeholder="Сообщение *"></textarea>
            </fieldset>
        </div>
        <div class="row margin-top-30">
            <div class="column column-1-2">
                <p>Мы свяжемся с вами в течение одного рабочего дня.</p>
            </div>
            <div class="column column-1-2 align-right">
                <input type="hidden" name="action" value="contact_form" />
                <div class="row margin-top-20 padding-bottom-20">
                    <input type="submit" class="more submit-contact-form" value="ОТПРАВИТЬ">
                </div>
            </div>
        </div>
    </form>
</div>