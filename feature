---
layout: default
---

<div class="page-container page-container--policies">
    {% include page_header.html %}

    <div class="inner">
        {% for feature in page.features %}
        <section class="policy-section policy-section-{{ policy-section }}" id="policies-{{ policy.section }}">
            <header class="policy-section__header">
                <h2>{{ feature.sectionTitle }}</h2>
                <h3>{{ feature.sectionSubTitle }}</h3>
            </header>

            <div class="policy-section__item-wrapper">
                <ul class="policy-section__items flex flex-wrap -mx-4">
                    {% for item in feature.items %}
                    <li class="policy-section__tile w-full sm:w-1/2 md:w-1/3 mb-4 px-4">
                        <a href="{{ item.url }}" class="policy-section__link">
                            <div class="policy-section__link-content">
                                <img
                                        class="policy-section__icon"
                                        src="{% if item.icon %}{{ item.icon }}{% else %}/assets/images/icons/icon-script@2x.png{% endif %}"
                                        alt="Policy icon for {{ item.title }}"
                                >
                                {% if item.title %}
                                <h4>{{ item.title }}</h4>
                                {% else %}
                                <h4><strong>Please add a title for this policy.</strong></h4>
                                {% endif %}
                            </div>
                        </a>
                    </li>
                    {% endfor %}
                </ul>
            </div>
        </section>
        {% endfor %}
        <div>
            <center>
                Would you like to submit or request a new feature? Please open an issue at the <a
                    href="https://github.com/kumahq/kuma-website">kuma-website</a> repository.
            </center>
        </div>
    </div>
    <!-- .inner -->
</div>
