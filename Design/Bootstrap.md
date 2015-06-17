###Bootstrap###
##CSS##
**Grid Structure**
container -> row -> column -> content

- .container for fixed width,.container-fluid for full responseive page, neither nestable.
-  xs: < 768px; sm: 768 < size < 992; md: 992 < size < 1200; lg: size > 1200
- vertical cols in parallel rows. like col-xs-2, col-md|lg|sm-2 , col-md-offset-2, col-md-push|pull-3
- .lead make a paragraph standout
- <mark> to high light  a txt
- <del> to delete
- <s> to strike
- <ins> to indicate addition content of document
- <u> underlined
- <smal>, <strong>, <em>, <b> , <i> 
- .txt-left|right|center|justify|no-wrap| lowercase| uppercase| capitalize
- <abbr title="the abb content">abbr</abbr

- <blockquote class="blockquote-reverse"> <p>the words text</p> <footer>someon in <cite title="somebook">somebook</cite></footer> </blockquote>
- .list-style, .list-unstyled, list-inline
-  description <dl class="dl-horizontal"> <dt>title</dt> <dd>description</dd> <dl>
- preformated <pre class="pre-scrollable"></pre>
- table ,table-responsive, table-striped with row line, table-bordered with border, table-hover to enable hover, table-condensed to compact table
- .active, .info, .success ,.warning, .danger

##Script##
- slide
>>>> `<div id="carousel" class="carousel" data-ride="carousel" data-pause="hover">
				<!--  <ol class="carousel-indicator">
					  <ol class="carousel-indicators">
					<li data-target="#carousel" data-slide-to="0" class="active"></li>
					<li data-target="#carousel" data-slide-to="1"></li>
				  </ol> -->
				   <div class="carousel-inner" role="listbox">
					   <div class="item active"><img src="{{media url="wysiwyg/profile/hicross-page-3010-1.jpg"}}" alt="" /></div>
					   <div class="item"><img src="{{media url="wysiwyg/profile/hicross-page-3010-2.jpg"}}" alt="" /></div>
				   </div>
				  <a class="left carousel-control" role="button" href="#carousel" data-slide="prev"> 
					   <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					   <span class="sr-only">Prev</span>
				  </a>
				  <a class="right carousel-control" role="button" href="#carousel" data-slide="next">
					  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					  <span class="sr-only">Next</span>
				  </a>
				</div>

				<script>
				jQuery(".carousel").carousel();
				</script>`