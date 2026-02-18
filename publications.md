---
layout: page
title: Publications
permalink: /publications/
---

<main class="row">
  <div class="col8">  

<h2>Journal Articles</h2>
{% assign pubs = site.publications | sort: "year" | reverse -%}
{% for pub in pubs -%}
  {%- if pub.category == "journal" -%}
    {% include publication.html pub=pub %}
  {%- endif -%}
{%- endfor %}

<h2>Conference Articles</h2>
{% for pub in pubs -%}
  {%- if pub.category == "conference" -%}
    {% include publication.html pub=pub %}
  {%- endif -%}
{%- endfor %}

<h2>Workshop and Poster Articles</h2>
{% for pub in pubs -%}
  {%- if pub.category == "poster" or pub.category == "workshop" -%}
    {% include publication.html pub=pub %}
  {%- endif -%}
{%- endfor %}

<h2>Patents</h2>
{% for pub in pubs -%}
  {%- if pub.category == "patent" -%}
    {% include publication.html pub=pub %}
  {% endif -%}
{%- endfor %}

<h2>Theses</h2>
{% for pub in pubs -%}
  {%- if pub.category == "thesis" -%}
    {% include publication.html pub=pub %}
  {%- endif -%}
{%- endfor %}

<h2>Other</h2>
{% for pub in pubs -%}
  {%- if pub.category == "other" -%}
    {% include publication.html pub=pub %}
  {%- endif -%}
{%- endfor %}

  </div>
  <div class="col4">
    <h2>About this list</h2>
    <p>This page lists all publications by Stefan Bischof, grouped by type. For more information, see the <a href="/">homepage</a>.</p>
  </div>
</main>
