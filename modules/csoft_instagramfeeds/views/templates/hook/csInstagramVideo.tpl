{if isset($instagram_video) && $instagram_video|count > 0}
    <div class="instagram-rolls">
        <div class="instagram-rolls__header">
            <h2>
                <svg fill="none" height="44" viewBox="0 0 44 44" width="44" xmlns="http://www.w3.org/2000/svg">
                    <g fill="#98999b">
                        <path d="m31.9381 0h-19.8762c-6.65093 0-12.0619 5.41097-12.0619 12.062v19.8761c0 6.651 5.41097 12.0619 12.0619 12.0619h19.8762c6.651 0 12.0619-5.4109 12.0619-12.0619v-19.8761c0-6.65103-5.4109-12.062-12.0619-12.062zm9.4635 31.9381c0 5.2182-4.2452 9.4635-9.4635 9.4635h-19.8762c-5.21818 0-9.46349-4.2452-9.46349-9.4635v-19.8761c0-5.21828 4.24531-9.46359 9.46349-9.46359h19.8762c5.2183 0 9.4635 4.24531 9.4635 9.46359z"/>
                        <path d="m22.0001 9.93179c-6.6545 0-12.06834 5.41381-12.06834 12.06831s5.41374 12.0683 12.06834 12.0683c6.6544 0 12.0683-5.4139 12.0683-12.0684s-5.4139-12.06821-12.0683-12.06821zm0 21.53821c-5.2218 0-9.47-4.2483-9.47-9.47s4.2482-9.47 9.47-9.47 9.47 4.2483 9.47 9.4701c0 5.2217-4.2482 9.4699-9.47 9.4699z"/>
                        <path d="m34.7901 5.54321c-2.0217 0-3.6666 1.64493-3.6666 3.6667 0 2.02179 1.6449 3.66659 3.6666 3.66659 2.0218 0 3.6667-1.6449 3.6667-3.66668 0-2.02176-1.6449-3.66661-3.6667-3.66661zm0 4.73479c-.5889 0-1.0682-.47916-1.0682-1.06818 0-.58901.4793-1.0682 1.0682-1.0682.5891 0 1.0682.47927 1.0682 1.0682s-.4791 1.06818-1.0682 1.06818z"/>
                    </g>
                </svg>
                {l s='Instagram' d='Modules.Csoftinstagram.Front'}
            </h2>
            <span>{l s='@kaloszepoprosze' d='Modules.Csoftinstagram.Front'}</span>
            <svg width="182" height="20">
                <use xlink:href="#svg-icon-arrow"></use>
            </svg>
        </div>


        <div class="swiper js-instagram-video-images mx-4 mb-3">
            <span class="instaVideoSlider__title">{l s='Kalosze poprosze' d='Modules.Csoftinstagram.Front'}</span>
            <div class="mt-3 swiper-wrapper">
                {foreach $instagram_video as $video}
                    <div class="swiper-slide">
                        <a href="{$video.link}" title="{$video.caption|escape:'html':'UTF-8'}" target="_blank"
                           rel="nofollow">
                            <img src="{$video.image}" alt="{$video.caption|escape:'html':'UTF-8'}"/>
                        </a>
                    </div>
                {/foreach}
            </div>
        </div>
        <div thumbsSlider="" class="swiper js-instagram-video-thumbs mx-4 mb-4">
            <div class="swiper-wrapper">
                {foreach $instagram_video as $video}
                    <div class="swiper-slide">
                        <div class="swiper-slide__image">
                            <img src="{$video.image}" alt="{$video.caption|escape:'html':'UTF-8'}"/>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>


        <div class="text-center">
            <a href="{Configuration::get('BLOCKSOCIAL_INSTAGRAM', $language.id)}"
               class="btn btn-secondary">{l s='Observe us on Insta' d='Modules.Csoftinstagram.Front'}</a>
        </div>

    </div>
{/if}