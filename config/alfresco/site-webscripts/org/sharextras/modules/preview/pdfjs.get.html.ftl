<#-- This file is part of the Share Extras PdfJs Viewer project -->
<#assign el=args.htmlid?html>
    <div id="${el}-controls" class="controls flat-button">

      <div class="sidebarBtn">
          <button id="${el}-sidebarBtn" disabled="disabled">
            <img src="${url.context}/res/extras/components/preview/images/sidebar-show-16.png" align="top" height="16" title="${msg("button.sidebar")}" />
          </button>
      </div>

      <button id="${el}-previous" disabled="disabled">
        <img src="${url.context}/res/components/images/back-arrow.png" align="top" height="16"/>
        ${msg("button.previous")}
      </button>

      <button id="${el}-next" disabled="disabled">
        <img src="${url.context}/res/components/images/forward-arrow-16.png" align="top" height="16"/>
        ${msg("button.next")}
      </button>

      <input type="number" id="${el}-pageNumber" value="1" size="4" min="1" disabled="disabled" />

      <span>/</span>
      <span id="${el}-numPages" class="numPages">--</span>

      <div class="separator"></div>

      <button id="${el}-zoomOut" title="${msg("button.zoomout")}" disabled="disabled">
        <img src="${url.context}/res/extras/components/preview/images/zoom-out.svg" align="top" height="16"/>
      </button>
      <button id="${el}-zoomIn" title="${msg("button.zoomin")}" disabled="disabled">
        <img src="${url.context}/res/extras/components/preview/images/zoom-in.svg" align="top" height="16"/>
      </button>

      <button id="${el}-scaleSelectBtn" disabled="disabled"></button>
      <select id="${el}-scaleSelect">
        <option value="0.25">25%</option>
        <option value="0.5">50%</option>
        <option value="0.75">75%</option>
        <option value="1">100%</option>
        <option value="1.25">125%</option>
        <option value="1.5">150%</option>
        <option value="2">200%</option>
        <option value="4">400%</option>
        <option value="page-width">${msg("select.pagewidth")}</option>
        <option value="two-page-width">${msg("select.twopagewidth")}</option>
        <option value="page-fit">${msg("select.pagefit")}</option>
        <option value="two-page-fit">${msg("select.twopagefit")}</option>
        <option value="auto">${msg("select.auto")}</option>
      </select>

      <div class="separator"></div>

      <span class="maximizebutton">
         <button id="${el}-fullpage" title="">
           <img src="${url.context}/res/components/documentlibrary/actions/default-16.png" align="top" height="16"/>
           ${msg("button.maximize")}
         </button>

         <div class="separator"></div>
      </span>

	  <#--
      <button id="${el}-download" title="${msg("button.download")}">
        <img src="${url.context}/res/components/documentlibrary/actions/document-download-16.png" align="top" height="16"/>
        ${msg("button.download")}
      </button>
	  -->

      <span class="linkbutton">
         <button id="${el}-link" title="${msg("button.link")}">
           <img src="${url.context}/res/components/images/link-16.png" align="top" height="16"/>
         </button>
      </span>

      <span class="searchBarToggle">
         <div class="separator"></div>

         <button id="${el}-searchBarToggle" disabled="disabled">
           <img src="${url.context}/res/components/images/search-16.png" align="top" height="16"/>
           ${msg("button.search")}
         </button>
      </span>

    </div>

    <div id="${el}-searchDialog" class="searchDialog">
       <div class="hd"></div>
       <div class="bd">
          <div id="${el}-searchControls" class="controlssearch flat-button">
          <#-- Search bar -->
            <span class="yui-button">
               <label for="${el}-findInput">${msg("button.search")}:</label>
               <input id="${el}-findInput" type="search" size="30">
            </span>
            <button id="${el}-findPrevious">
              <img src="${url.context}/res/components/images/back-arrow.png" align="top" height="16" title="${msg("button.previoushit")}"/>
            </button>

            <button id="${el}-findNext">
              <img src="${url.context}/res/components/images/forward-arrow-16.png" align="top" height="16" title="${msg("button.nexthit")}"/>
            </button>
            <span class="buttonHighLightAll">
                <button id="${el}-findHighlightAll" title="${msg("button.highlightall")}">&nbsp;&nbsp;&nbsp;</button>
             </span>
             <span class="buttonMatchCase">
                <button id="${el}-findMatchCase" title="${msg("button.matchcase")}">&nbsp;&nbsp;&nbsp;</button>
             </span>
          </div>
       </div>
       <div class="ft"></div>
    </div>

    <div id="${el}-linkDialog" class="linkDialog">
        <div class="hd"></div>
        <div class="bd flat-button">
            <div id="${el}-linkDialog-bg" class="yui-buttongroup">
                <input type="radio" name="target" id="${el}-doc" value="${msg("link.document")}" />
                <input type="radio" name="target" id="${el}-page" value="${msg("link.page")}" checked="checked" />
            </div>
            <div>
                <input type="text" id="${el}-linkDialog-input" value="" />
            </div>
            <div>${msg("link.info")}</div>
        </div>
       <div class="ft"></div>
    </div>

    <div id="${el}-sidebar" class="sidebar">
        <div id="${el}-sidebarTabView" class="yui-navset">
            <ul class="yui-nav">
                <li class="selected"><a href="#${el}-thumbnailView"><em><img src="${url.context}/res/extras/components/preview/images/thumbnail-view-16.png" height="16" /></em></a></li>
                <li><a href="#${el}-outlineView"><em><img src="${url.context}/res/extras/components/preview/images/outline-view-16.png" height="16" /></em></a></li>
            </ul>
            <div class="yui-content">
                <div id="${el}-thumbnailView" class="thumbnailView documentView"></div>
                <div id="${el}-outlineView" class="outlineView"></div>
            </div>
        </div>
    </div>

    <div id="${el}-viewer" class="viewer documentView">
        <a name="${el}"></a>
    </div>