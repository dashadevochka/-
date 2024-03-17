---
layout: default
---
<main class="page">
  {% include version_alert.html %}

  <div class="theme-default-content content__default {% if page.doc %} doc {% endif %}">
    {% if page.doc %}
      <h1 id="{{ page.title | downcase | replace: ' ', '-' }}">{{ page.title }}</h1>
    {% endif %}

    {{ content }}
  </div>

  <footer class="page-edit">
    {% if page.last_modified_at %}
      <div class="last-updated">
        <span class="prefix">Last Updated: </span>
        <span class="time">
          {{ page.last_modified_at | date: '%-m/%-d/%Y, %H:%M:%S %p' }}
        </span>
      </div>
    {% endif %}
  </footer>

  {% if page.prev or page.next %}
    <div class="page-nav">
      <p class="inner">
        {% if page.prev %}
          <span class="prev">
            ←
            <a class="prev" href="{% unless page.prev['absolute_url']%}/docs/{{ page.version }}{% endunless %}{{ page.prev['url'] }}">{{ page.prev['text'] }}</a>
          </span>
        {% endif %}

        {% if page.next %}
          <span class="next">
            <a href="{% unless page.next['absolute_url']%}/docs/{{ page.version }}{% endunless %}{{ page.next['url'] }}">{{ page.next['text'] }}</a>
            →
          </span>
        {% endif %}
      </p>
    </div>
  {% endif %}
</main>
