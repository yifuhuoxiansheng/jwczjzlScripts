





<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
  <link rel="dns-prefetch" href="https://github.githubassets.com">
  <link rel="dns-prefetch" href="https://avatars0.githubusercontent.com">
  <link rel="dns-prefetch" href="https://avatars1.githubusercontent.com">
  <link rel="dns-prefetch" href="https://avatars2.githubusercontent.com">
  <link rel="dns-prefetch" href="https://avatars3.githubusercontent.com">
  <link rel="dns-prefetch" href="https://github-cloud.s3.amazonaws.com">
  <link rel="dns-prefetch" href="https://user-images.githubusercontent.com/">



  <link crossorigin="anonymous" media="all" integrity="sha512-R+Vpkv86him5JZcqAEuQRUGOKqH897w6q7uJ1P65tQR+9Hxar5vU4wpEd4uvcXT8ooRZ7zsNftrjnCemEt2u2Q==" rel="stylesheet" href="https://github.githubassets.com/assets/frameworks-f4557b27209914aa4705202b188165b5.css" />
  
    <link crossorigin="anonymous" media="all" integrity="sha512-KEU81s6VSQsWSYL9G7CIF3KfhcC/TA95vNfUJblMHowAYWYVidT8OwKZbk3cwed4lgSrWGI9C6HiSwa9InPqJA==" rel="stylesheet" href="https://github.githubassets.com/assets/github-da3c6f2fea2a2b141160341f730a74e7.css" />
    
    
    
    

  <meta name="viewport" content="width=device-width">
  
  <title>jumpserver/setup_by_centos7.rst at docs · jumpserver/jumpserver</title>
    <meta name="description" content="Jumpserver是全球首款完全开源的堡垒机，是符合 4A 的专业运维审计系统。. Contribute to jumpserver/jumpserver development by creating an account on GitHub.">
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
  <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
  <meta property="fb:app_id" content="1401488693436528">

    
    <meta property="og:image" content="https://avatars3.githubusercontent.com/u/6006570?s=400&amp;v=4" /><meta property="og:site_name" content="GitHub" /><meta property="og:type" content="object" /><meta property="og:title" content="jumpserver/jumpserver" /><meta property="og:url" content="https://github.com/jumpserver/jumpserver" /><meta property="og:description" content="Jumpserver是全球首款完全开源的堡垒机，是符合 4A 的专业运维审计系统。. Contribute to jumpserver/jumpserver development by creating an account on GitHub." />

  <link rel="assets" href="https://github.githubassets.com/">
  <link rel="web-socket" href="wss://live.github.com/_sockets/VjI6MzgxNzk3NjEyOjUwNzU3YjA0OGYyZWE5NDNkMTE2N2EwNWM2MTk4YTEwMTFlNzY4NmI3YTM2ZjAzZTY3ODUyMWJjNmFmYTkzOGM=--f431bf1991503a1625e4a449adaf1a9f97a28ef4">
  <meta name="pjax-timeout" content="1000">
  <link rel="sudo-modal" href="/sessions/sudo_modal">
  <meta name="request-id" content="DF2B:15A0:4933B6:623076:5C87CA74" data-pjax-transient>


  

  <meta name="selected-link" value="repo_source" data-pjax-transient>

      <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
    <meta name="google-site-verification" content="ZzhVyEFwb7w3e0-uOTltm8Jsck2F5StVihD0exw2fsA">
    <meta name="google-site-verification" content="GXs5KoUUkNCoaAZn7wPN-t01Pywp9M3sEjnt_3_ZWPc">

  <meta name="octolytics-host" content="collector.githubapp.com" /><meta name="octolytics-app-id" content="github" /><meta name="octolytics-event-url" content="https://collector.githubapp.com/github-external/browser_event" /><meta name="octolytics-dimension-request_id" content="DF2B:15A0:4933B6:623076:5C87CA74" /><meta name="octolytics-dimension-region_edge" content="ap-southeast-1" /><meta name="octolytics-dimension-region_render" content="iad" /><meta name="octolytics-actor-id" content="26277316" /><meta name="octolytics-actor-login" content="yeahJwczjzlTest" /><meta name="octolytics-actor-hash" content="18f920e27bba2c3df96fe8fa0fc615969ed675a903156619c9166ce76469b545" />
<meta name="analytics-location" content="/&lt;user-name&gt;/&lt;repo-name&gt;/blob/show" data-pjax-transient="true" />



    <meta name="google-analytics" content="UA-3769691-2">

  <meta class="js-ga-set" name="userId" content="dbc30f6b18d0c075e4f975e603a61862">

<meta class="js-ga-set" name="dimension1" content="Logged In">



  

      <meta name="hostname" content="github.com">
    <meta name="user-login" content="yeahJwczjzlTest">

      <meta name="expected-hostname" content="github.com">
    <meta name="js-proxy-site-detection-payload" content="MmY5NzFkMmNiY2Y5NmQyMDEzYTc1NDhlZjJkNjA5OGMwMzlmMzE5ZDJiNjFhYTc2ZDEwNTA1Y2IwMDdkNGVlZnx7InJlbW90ZV9hZGRyZXNzIjoiMTE0LjI1Mi4xNTQuOTgiLCJyZXF1ZXN0X2lkIjoiREYyQjoxNUEwOjQ5MzNCNjo2MjMwNzY6NUM4N0NBNzQiLCJ0aW1lc3RhbXAiOjE1NTI0MDMwNjgsImhvc3QiOiJnaXRodWIuY29tIn0=">

    <meta name="enabled-features" content="UNIVERSE_BANNER,MARKETPLACE_SOCIAL_PROOF,MARKETPLACE_PLAN_RESTRICTION_EDITOR,NOTIFY_ON_BLOCK,RELATED_ISSUES,MARKETPLACE_BROWSING_V2">

  <meta name="html-safe-nonce" content="ac8f3b6be6d7f432dc62a0b3bc2a855dabc56038">

  <meta http-equiv="x-pjax-version" content="7e7edc50af8fff76d140cd21ae2cdf21">
  

      <link href="https://github.com/jumpserver/jumpserver/commits/docs.atom" rel="alternate" title="Recent Commits to jumpserver:docs" type="application/atom+xml">

  <meta name="go-import" content="github.com/jumpserver/jumpserver git https://github.com/jumpserver/jumpserver.git">

  <meta name="octolytics-dimension-user_id" content="6006570" /><meta name="octolytics-dimension-user_login" content="jumpserver" /><meta name="octolytics-dimension-repository_id" content="21484781" /><meta name="octolytics-dimension-repository_nwo" content="jumpserver/jumpserver" /><meta name="octolytics-dimension-repository_public" content="true" /><meta name="octolytics-dimension-repository_is_fork" content="false" /><meta name="octolytics-dimension-repository_network_root_id" content="21484781" /><meta name="octolytics-dimension-repository_network_root_nwo" content="jumpserver/jumpserver" /><meta name="octolytics-dimension-repository_explore_github_marketplace_ci_cta_shown" content="false" />


    <link rel="canonical" href="https://github.com/jumpserver/jumpserver/blob/docs/docs/setup_by_centos7.rst" data-pjax-transient>


  <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">

  <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">

  <link rel="mask-icon" href="https://github.githubassets.com/pinned-octocat.svg" color="#000000">
  <link rel="icon" type="image/x-icon" class="js-site-favicon" href="https://github.githubassets.com/favicon.ico">

<meta name="theme-color" content="#1e2327">


  <meta name="u2f-support" content="true">


  <link rel="manifest" href="/manifest.json" crossOrigin="use-credentials">

  </head>

  <body class="logged-in env-production emoji-size-boost page-blob">
    

  <div class="position-relative js-header-wrapper ">
    <a href="#start-of-content" tabindex="1" class="p-3 bg-blue text-white show-on-focus js-skip-to-content">Skip to content</a>
    <div id="js-pjax-loader-bar" class="pjax-loader-bar"><div class="progress"></div></div>

    
    
    


        
<header class="Header  f5" role="banner">
  <div class="d-flex flex-justify-between px-3 ">
    <div class="d-flex flex-justify-between ">
      <div class="">
        <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <svg height="32" class="octicon octicon-mark-github" viewBox="0 0 16 16" version="1.1" width="32" aria-hidden="true"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
</a>

      </div>

    </div>

    <div class="HeaderMenu d-flex flex-justify-between flex-auto">
      <nav class="d-flex" aria-label="Global">
            <div class="">
              <div class="header-search scoped-search site-scoped-search js-site-search position-relative js-jump-to"
  role="combobox"
  aria-owns="jump-to-results"
  aria-label="Search or jump to"
  aria-haspopup="listbox"
  aria-expanded="false"
>
  <div class="position-relative">
    <!-- '"` --><!-- </textarea></xmp> --></option></form><form class="js-site-search-form" role="search" aria-label="Site" data-scope-type="Repository" data-scope-id="21484781" data-scoped-search-url="/jumpserver/jumpserver/search" data-unscoped-search-url="/search" action="/jumpserver/jumpserver/search" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" />
      <label class="form-control header-search-wrapper header-search-wrapper-jump-to position-relative d-flex flex-justify-between flex-items-center js-chromeless-input-container">
        <input type="text"
          class="form-control header-search-input jump-to-field js-jump-to-field js-site-search-focus js-site-search-field is-clearable"
          data-hotkey="s,/"
          name="q"
          value=""
          placeholder="Search or jump to…"
          data-unscoped-placeholder="Search or jump to…"
          data-scoped-placeholder="Search or jump to…"
          autocapitalize="off"
          aria-autocomplete="list"
          aria-controls="jump-to-results"
          aria-label="Search or jump to…"
          data-jump-to-suggestions-path="/_graphql/GetSuggestedNavigationDestinations#csrf-token=/8Po/dEdJPyLleoh/THrH89obuzKdNqi+FVraYHgQkaMHsDvKJNkLP60UV3ZYC4ELj9qVaM118sz8i6M0vsagw=="
          spellcheck="false"
          autocomplete="off"
          >
          <input type="hidden" class="js-site-search-type-field" name="type" >
            <img src="https://github.githubassets.com/images/search-key-slash.svg" alt="" class="mr-2 header-search-key-slash">

            <div class="Box position-absolute overflow-hidden d-none jump-to-suggestions js-jump-to-suggestions-container">
              
<ul class="d-none js-jump-to-suggestions-template-container">
  

<li class="d-flex flex-justify-start flex-items-center p-0 f5 navigation-item js-navigation-item js-jump-to-suggestion" role="option">
  <a tabindex="-1" class="no-underline d-flex flex-auto flex-items-center jump-to-suggestions-path js-jump-to-suggestion-path js-navigation-open p-2" href="">
    <div class="jump-to-octicon js-jump-to-octicon flex-shrink-0 mr-2 text-center d-none">
      <svg height="16" width="16" class="octicon octicon-repo flex-shrink-0 js-jump-to-octicon-repo d-none" title="Repository" aria-label="Repository" viewBox="0 0 12 16" version="1.1" role="img"><path fill-rule="evenodd" d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"/></svg>
      <svg height="16" width="16" class="octicon octicon-project flex-shrink-0 js-jump-to-octicon-project d-none" title="Project" aria-label="Project" viewBox="0 0 15 16" version="1.1" role="img"><path fill-rule="evenodd" d="M10 12h3V2h-3v10zm-4-2h3V2H6v8zm-4 4h3V2H2v12zm-1 1h13V1H1v14zM14 0H1a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h13a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1z"/></svg>
      <svg height="16" width="16" class="octicon octicon-search flex-shrink-0 js-jump-to-octicon-search d-none" title="Search" aria-label="Search" viewBox="0 0 16 16" version="1.1" role="img"><path fill-rule="evenodd" d="M15.7 13.3l-3.81-3.83A5.93 5.93 0 0 0 13 6c0-3.31-2.69-6-6-6S1 2.69 1 6s2.69 6 6 6c1.3 0 2.48-.41 3.47-1.11l3.83 3.81c.19.2.45.3.7.3.25 0 .52-.09.7-.3a.996.996 0 0 0 0-1.41v.01zM7 10.7c-2.59 0-4.7-2.11-4.7-4.7 0-2.59 2.11-4.7 4.7-4.7 2.59 0 4.7 2.11 4.7 4.7 0 2.59-2.11 4.7-4.7 4.7z"/></svg>
    </div>

    <img class="avatar mr-2 flex-shrink-0 js-jump-to-suggestion-avatar d-none" alt="" aria-label="Team" src="" width="28" height="28">

    <div class="jump-to-suggestion-name js-jump-to-suggestion-name flex-auto overflow-hidden text-left no-wrap css-truncate css-truncate-target">
    </div>

    <div class="border rounded-1 flex-shrink-0 bg-gray px-1 text-gray-light ml-1 f6 d-none js-jump-to-badge-search">
      <span class="js-jump-to-badge-search-text-default d-none" aria-label="in this repository">
        In this repository
      </span>
      <span class="js-jump-to-badge-search-text-global d-none" aria-label="in all of GitHub">
        All GitHub
      </span>
      <span aria-hidden="true" class="d-inline-block ml-1 v-align-middle">↵</span>
    </div>

    <div aria-hidden="true" class="border rounded-1 flex-shrink-0 bg-gray px-1 text-gray-light ml-1 f6 d-none d-on-nav-focus js-jump-to-badge-jump">
      Jump to
      <span class="d-inline-block ml-1 v-align-middle">↵</span>
    </div>
  </a>
</li>

</ul>

<ul class="d-none js-jump-to-no-results-template-container">
  <li class="d-flex flex-justify-center flex-items-center f5 d-none js-jump-to-suggestion p-2">
    <span class="text-gray">No suggested jump to results</span>
  </li>
</ul>

<ul id="jump-to-results" role="listbox" class="p-0 m-0 js-navigation-container jump-to-suggestions-results-container js-jump-to-suggestions-results-container">
  

<li class="d-flex flex-justify-start flex-items-center p-0 f5 navigation-item js-navigation-item js-jump-to-scoped-search d-none" role="option">
  <a tabindex="-1" class="no-underline d-flex flex-auto flex-items-center jump-to-suggestions-path js-jump-to-suggestion-path js-navigation-open p-2" href="">
    <div class="jump-to-octicon js-jump-to-octicon flex-shrink-0 mr-2 text-center d-none">
      <svg height="16" width="16" class="octicon octicon-repo flex-shrink-0 js-jump-to-octicon-repo d-none" title="Repository" aria-label="Repository" viewBox="0 0 12 16" version="1.1" role="img"><path fill-rule="evenodd" d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"/></svg>
      <svg height="16" width="16" class="octicon octicon-project flex-shrink-0 js-jump-to-octicon-project d-none" title="Project" aria-label="Project" viewBox="0 0 15 16" version="1.1" role="img"><path fill-rule="evenodd" d="M10 12h3V2h-3v10zm-4-2h3V2H6v8zm-4 4h3V2H2v12zm-1 1h13V1H1v14zM14 0H1a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h13a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1z"/></svg>
      <svg height="16" width="16" class="octicon octicon-search flex-shrink-0 js-jump-to-octicon-search d-none" title="Search" aria-label="Search" viewBox="0 0 16 16" version="1.1" role="img"><path fill-rule="evenodd" d="M15.7 13.3l-3.81-3.83A5.93 5.93 0 0 0 13 6c0-3.31-2.69-6-6-6S1 2.69 1 6s2.69 6 6 6c1.3 0 2.48-.41 3.47-1.11l3.83 3.81c.19.2.45.3.7.3.25 0 .52-.09.7-.3a.996.996 0 0 0 0-1.41v.01zM7 10.7c-2.59 0-4.7-2.11-4.7-4.7 0-2.59 2.11-4.7 4.7-4.7 2.59 0 4.7 2.11 4.7 4.7 0 2.59-2.11 4.7-4.7 4.7z"/></svg>
    </div>

    <img class="avatar mr-2 flex-shrink-0 js-jump-to-suggestion-avatar d-none" alt="" aria-label="Team" src="" width="28" height="28">

    <div class="jump-to-suggestion-name js-jump-to-suggestion-name flex-auto overflow-hidden text-left no-wrap css-truncate css-truncate-target">
    </div>

    <div class="border rounded-1 flex-shrink-0 bg-gray px-1 text-gray-light ml-1 f6 d-none js-jump-to-badge-search">
      <span class="js-jump-to-badge-search-text-default d-none" aria-label="in this repository">
        In this repository
      </span>
      <span class="js-jump-to-badge-search-text-global d-none" aria-label="in all of GitHub">
        All GitHub
      </span>
      <span aria-hidden="true" class="d-inline-block ml-1 v-align-middle">↵</span>
    </div>

    <div aria-hidden="true" class="border rounded-1 flex-shrink-0 bg-gray px-1 text-gray-light ml-1 f6 d-none d-on-nav-focus js-jump-to-badge-jump">
      Jump to
      <span class="d-inline-block ml-1 v-align-middle">↵</span>
    </div>
  </a>
</li>

  

<li class="d-flex flex-justify-start flex-items-center p-0 f5 navigation-item js-navigation-item js-jump-to-global-search d-none" role="option">
  <a tabindex="-1" class="no-underline d-flex flex-auto flex-items-center jump-to-suggestions-path js-jump-to-suggestion-path js-navigation-open p-2" href="">
    <div class="jump-to-octicon js-jump-to-octicon flex-shrink-0 mr-2 text-center d-none">
      <svg height="16" width="16" class="octicon octicon-repo flex-shrink-0 js-jump-to-octicon-repo d-none" title="Repository" aria-label="Repository" viewBox="0 0 12 16" version="1.1" role="img"><path fill-rule="evenodd" d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"/></svg>
      <svg height="16" width="16" class="octicon octicon-project flex-shrink-0 js-jump-to-octicon-project d-none" title="Project" aria-label="Project" viewBox="0 0 15 16" version="1.1" role="img"><path fill-rule="evenodd" d="M10 12h3V2h-3v10zm-4-2h3V2H6v8zm-4 4h3V2H2v12zm-1 1h13V1H1v14zM14 0H1a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h13a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1z"/></svg>
      <svg height="16" width="16" class="octicon octicon-search flex-shrink-0 js-jump-to-octicon-search d-none" title="Search" aria-label="Search" viewBox="0 0 16 16" version="1.1" role="img"><path fill-rule="evenodd" d="M15.7 13.3l-3.81-3.83A5.93 5.93 0 0 0 13 6c0-3.31-2.69-6-6-6S1 2.69 1 6s2.69 6 6 6c1.3 0 2.48-.41 3.47-1.11l3.83 3.81c.19.2.45.3.7.3.25 0 .52-.09.7-.3a.996.996 0 0 0 0-1.41v.01zM7 10.7c-2.59 0-4.7-2.11-4.7-4.7 0-2.59 2.11-4.7 4.7-4.7 2.59 0 4.7 2.11 4.7 4.7 0 2.59-2.11 4.7-4.7 4.7z"/></svg>
    </div>

    <img class="avatar mr-2 flex-shrink-0 js-jump-to-suggestion-avatar d-none" alt="" aria-label="Team" src="" width="28" height="28">

    <div class="jump-to-suggestion-name js-jump-to-suggestion-name flex-auto overflow-hidden text-left no-wrap css-truncate css-truncate-target">
    </div>

    <div class="border rounded-1 flex-shrink-0 bg-gray px-1 text-gray-light ml-1 f6 d-none js-jump-to-badge-search">
      <span class="js-jump-to-badge-search-text-default d-none" aria-label="in this repository">
        In this repository
      </span>
      <span class="js-jump-to-badge-search-text-global d-none" aria-label="in all of GitHub">
        All GitHub
      </span>
      <span aria-hidden="true" class="d-inline-block ml-1 v-align-middle">↵</span>
    </div>

    <div aria-hidden="true" class="border rounded-1 flex-shrink-0 bg-gray px-1 text-gray-light ml-1 f6 d-none d-on-nav-focus js-jump-to-badge-jump">
      Jump to
      <span class="d-inline-block ml-1 v-align-middle">↵</span>
    </div>
  </a>
</li>


    <li class="d-flex flex-justify-center flex-items-center p-0 f5 js-jump-to-suggestion">
      <img src="https://github.githubassets.com/images/spinners/octocat-spinner-128.gif" alt="Octocat Spinner Icon" class="m-2" width="28">
    </li>
</ul>

            </div>
      </label>
</form>  </div>
</div>

            </div>

          <ul class="d-flex pl-2 flex-items-center text-bold list-style-none">
            <li>
              <a class="js-selected-navigation-item HeaderNavlink px-2" data-hotkey="g p" data-ga-click="Header, click, Nav menu - item:pulls context:user" aria-label="Pull requests you created" data-selected-links="/pulls /pulls/assigned /pulls/mentioned /pulls" href="/pulls">
                Pull requests
</a>            </li>
            <li>
              <a class="js-selected-navigation-item HeaderNavlink px-2" data-hotkey="g i" data-ga-click="Header, click, Nav menu - item:issues context:user" aria-label="Issues you created" data-selected-links="/issues /issues/assigned /issues/mentioned /issues" href="/issues">
                Issues
</a>            </li>
              <li class="position-relative">
                <a class="js-selected-navigation-item HeaderNavlink px-2" data-ga-click="Header, click, Nav menu - item:marketplace context:user" data-octo-click="marketplace_click" data-octo-dimensions="location:nav_bar" data-selected-links=" /marketplace" href="/marketplace">
                   Marketplace
</a>                  
              </li>
            <li>
              <a class="js-selected-navigation-item HeaderNavlink px-2" data-ga-click="Header, click, Nav menu - item:explore" data-selected-links="/explore /trending /trending/developers /integrations /integrations/feature/code /integrations/feature/collaborate /integrations/feature/ship showcases showcases_search showcases_landing /explore" href="/explore">
                Explore
</a>            </li>
          </ul>
      </nav>

      <div class="d-flex">
        
<ul class="user-nav d-flex flex-items-center list-style-none" id="user-links">
  <li class="dropdown">
    <span class="d-inline-block  px-2">
      
    <a aria-label="You have no unread notifications" class="notification-indicator tooltipped tooltipped-s  js-socket-channel js-notification-indicator" data-hotkey="g n" data-ga-click="Header, go to notifications, icon:read" data-channel="notification-changed:26277316" href="/notifications">
        <span class="mail-status "></span>
        <svg class="octicon octicon-bell" viewBox="0 0 14 16" version="1.1" width="14" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M14 12v1H0v-1l.73-.58c.77-.77.81-2.55 1.19-4.42C2.69 3.23 6 2 6 2c0-.55.45-1 1-1s1 .45 1 1c0 0 3.39 1.23 4.16 5 .38 1.88.42 3.66 1.19 4.42l.66.58H14zm-7 4c1.11 0 2-.89 2-2H5c0 1.11.89 2 2 2z"/></svg>
</a>
    </span>
  </li>

  <li class="dropdown">
    <details class="details-overlay details-reset d-flex px-2 flex-items-center">
      <summary class="HeaderNavlink"
         aria-label="Create new…"
         data-ga-click="Header, create new, icon:add">
        <svg class="octicon octicon-plus float-left mr-1 mt-1" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 9H7v5H5V9H0V7h5V2h2v5h5v2z"/></svg>
        <span class="dropdown-caret mt-1"></span>
      </summary>
      <details-menu class="dropdown-menu dropdown-menu-sw">
        
<a role="menuitem" class="dropdown-item" href="/new" data-ga-click="Header, create new repository">
  New repository
</a>

  <a role="menuitem" class="dropdown-item" href="/new/import" data-ga-click="Header, import a repository">
    Import repository
  </a>

<a role="menuitem" class="dropdown-item" href="https://gist.github.com/" data-ga-click="Header, create new gist">
  New gist
</a>

  <a role="menuitem" class="dropdown-item" href="/organizations/new" data-ga-click="Header, create new organization">
    New organization
  </a>


  <div class="dropdown-divider"></div>
  <div class="dropdown-header">
    <span title="jumpserver/jumpserver">This repository</span>
  </div>
    <a role="menuitem" class="dropdown-item" href="/jumpserver/jumpserver/issues/new" data-ga-click="Header, create new issue" >
      New issue
    </a>


      </details-menu>
    </details>
  </li>

  <li class="dropdown">

    <details class="details-overlay details-reset d-flex pl-2 flex-items-center">
      <summary class="HeaderNavlink name mt-1"
        aria-label="View profile and more"
        data-ga-click="Header, show menu, icon:avatar">
        <img alt="@yeahJwczjzlTest" class="avatar float-left mr-1" src="https://avatars0.githubusercontent.com/u/26277316?s=40&amp;v=4" height="20" width="20">
        <span class="dropdown-caret"></span>
      </summary>
      <details-menu class="dropdown-menu dropdown-menu-sw">
        <div class="header-nav-current-user css-truncate"><a role="menuitem" class="no-underline user-profile-link px-3 pt-2 pb-2 mb-n2 mt-n1 d-block" href="/yeahJwczjzlTest" data-ga-click="Header, go to profile, text:Signed in as">Signed in as <strong class="css-truncate-target">yeahJwczjzlTest</strong></a></div>
        <div role="none" class="dropdown-divider"></div>

        <div class="px-3 f6 user-status-container js-user-status-context pb-1" data-url="/users/status?compact=1&amp;link_mentions=0&amp;truncate=1">
          
<div class="js-user-status-container user-status-compact" data-team-hovercards-enabled>
  <details class="js-user-status-details details-reset details-overlay details-overlay-dark">
    <summary class="btn-link no-underline js-toggle-user-status-edit toggle-user-status-edit width-full" aria-haspopup="dialog" role="menuitem" data-hydro-click="{&quot;event_type&quot;:&quot;user_profile.click&quot;,&quot;payload&quot;:{&quot;profile_user_id&quot;:6006570,&quot;target&quot;:&quot;EDIT_USER_STATUS&quot;,&quot;user_id&quot;:26277316,&quot;client_id&quot;:&quot;1914992541.1552288613&quot;,&quot;originating_request_id&quot;:&quot;DF2B:15A0:4933B6:623076:5C87CA74&quot;,&quot;originating_url&quot;:&quot;https://github.com/jumpserver/jumpserver/blob/docs/docs/setup_by_centos7.rst&quot;}}" data-hydro-click-hmac="f81697d06c077a496594eded67dfed6053e66aa6002b6bba8b4815854373da42">
      <div class="f6 d-inline-block v-align-middle  user-status-emoji-only-header pl-0 circle lh-condensed user-status-header " style="max-width: 29px">
        <div class="user-status-emoji-container flex-shrink-0 mr-1">
          <svg class="octicon octicon-smiley" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8s3.58 8 8 8 8-3.58 8-8-3.58-8-8-8zm4.81 12.81a6.72 6.72 0 0 1-2.17 1.45c-.83.36-1.72.53-2.64.53-.92 0-1.81-.17-2.64-.53-.81-.34-1.55-.83-2.17-1.45a6.773 6.773 0 0 1-1.45-2.17A6.59 6.59 0 0 1 1.21 8c0-.92.17-1.81.53-2.64.34-.81.83-1.55 1.45-2.17.62-.62 1.36-1.11 2.17-1.45A6.59 6.59 0 0 1 8 1.21c.92 0 1.81.17 2.64.53.81.34 1.55.83 2.17 1.45.62.62 1.11 1.36 1.45 2.17.36.83.53 1.72.53 2.64 0 .92-.17 1.81-.53 2.64-.34.81-.83 1.55-1.45 2.17zM4 6.8v-.59c0-.66.53-1.19 1.2-1.19h.59c.66 0 1.19.53 1.19 1.19v.59c0 .67-.53 1.2-1.19 1.2H5.2C4.53 8 4 7.47 4 6.8zm5 0v-.59c0-.66.53-1.19 1.2-1.19h.59c.66 0 1.19.53 1.19 1.19v.59c0 .67-.53 1.2-1.19 1.2h-.59C9.53 8 9 7.47 9 6.8zm4 3.2c-.72 1.88-2.91 3-5 3s-4.28-1.13-5-3c-.14-.39.23-1 .66-1h8.59c.41 0 .89.61.75 1z"/></svg>
        </div>
      </div>
      <div class="d-inline-block v-align-middle user-status-message-wrapper f6 lh-condensed ws-normal pt-1">
          <span class="link-gray">Set your status</span>
      </div>
</summary>    <details-dialog class="details-dialog rounded-1 anim-fade-in fast Box Box--overlay" role="dialog" tabindex="-1">
      <!-- '"` --><!-- </textarea></xmp> --></option></form><form class="position-relative flex-auto js-user-status-form" action="/users/status?compact=1&amp;link_mentions=0&amp;truncate=1" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="put" /><input type="hidden" name="authenticity_token" value="yGDQnVB/kgKR0FvbFqz6PP3Xljy34e4WVIuVBy6mg9NHmnAfAjuYnPwZobAl6SBfiE0vpm6j4znSe/C1mjsmuw==" />
        <div class="Box-header bg-gray border-bottom p-3">
          <button class="Box-btn-octicon js-toggle-user-status-edit btn-octicon float-right" type="reset" aria-label="Close dialog" data-close-dialog>
            <svg class="octicon octicon-x" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48L7.48 8z"/></svg>
          </button>
          <h3 class="Box-title f5 text-bold text-gray-dark">Edit status</h3>
        </div>
        <input type="hidden" name="emoji" class="js-user-status-emoji-field" value="">
        <input type="hidden" name="organization_id" class="js-user-status-org-id-field" value="">
        <div class="px-3 py-2 text-gray-dark">
          <div class="js-characters-remaining-container js-suggester-container position-relative mt-2">
            <div class="input-group d-table form-group my-0 js-user-status-form-group">
              <span class="input-group-button d-table-cell v-align-middle" style="width: 1%">
                <button type="button" aria-label="Choose an emoji" class="btn-outline btn js-toggle-user-status-emoji-picker bg-white btn-open-emoji-picker">
                  <span class="js-user-status-original-emoji" hidden></span>
                  <span class="js-user-status-custom-emoji"></span>
                  <span class="js-user-status-no-emoji-icon" >
                    <svg class="octicon octicon-smiley" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8s3.58 8 8 8 8-3.58 8-8-3.58-8-8-8zm4.81 12.81a6.72 6.72 0 0 1-2.17 1.45c-.83.36-1.72.53-2.64.53-.92 0-1.81-.17-2.64-.53-.81-.34-1.55-.83-2.17-1.45a6.773 6.773 0 0 1-1.45-2.17A6.59 6.59 0 0 1 1.21 8c0-.92.17-1.81.53-2.64.34-.81.83-1.55 1.45-2.17.62-.62 1.36-1.11 2.17-1.45A6.59 6.59 0 0 1 8 1.21c.92 0 1.81.17 2.64.53.81.34 1.55.83 2.17 1.45.62.62 1.11 1.36 1.45 2.17.36.83.53 1.72.53 2.64 0 .92-.17 1.81-.53 2.64-.34.81-.83 1.55-1.45 2.17zM4 6.8v-.59c0-.66.53-1.19 1.2-1.19h.59c.66 0 1.19.53 1.19 1.19v.59c0 .67-.53 1.2-1.19 1.2H5.2C4.53 8 4 7.47 4 6.8zm5 0v-.59c0-.66.53-1.19 1.2-1.19h.59c.66 0 1.19.53 1.19 1.19v.59c0 .67-.53 1.2-1.19 1.2h-.59C9.53 8 9 7.47 9 6.8zm4 3.2c-.72 1.88-2.91 3-5 3s-4.28-1.13-5-3c-.14-.39.23-1 .66-1h8.59c.41 0 .89.61.75 1z"/></svg>
                  </span>
                </button>
              </span>
              <input type="text" autocomplete="off" autofocus data-maxlength="80" class="js-suggester-field d-table-cell width-full form-control js-user-status-message-field js-characters-remaining-field" placeholder="What's happening?" name="message" required value="" aria-label="What is your current status?">
              <div class="error">Could not update your status, please try again.</div>
            </div>
            <div class="suggester-container">
              <div class="suggester js-suggester js-navigation-container" data-url="/autocomplete/user-suggestions" data-no-org-url="/autocomplete/user-suggestions" data-org-url="/suggestions" hidden>
              </div>
            </div>
            <div style="margin-left: 53px" class="my-1 text-small label-characters-remaining js-characters-remaining" data-suffix="remaining" hidden>
              80 remaining
            </div>
          </div>
          <include-fragment class="js-user-status-emoji-picker" data-url="/users/status/emoji"></include-fragment>
          <div class="overflow-auto" style="max-height: 33vh">
            <div class="user-status-suggestions js-user-status-suggestions">
              <h4 class="f6 text-normal my-3">Suggestions:</h4>
              <div class="mx-3 mt-2 clearfix">
                  <div class="float-left col-6">
                      <button type="button" value=":palm_tree:" class="d-flex flex-items-baseline flex-items-stretch lh-condensed f6 btn-link link-gray no-underline js-predefined-user-status mb-1">
                        <div class="emoji-status-width mr-2 v-align-middle js-predefined-user-status-emoji">
                          <g-emoji alias="palm_tree" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f334.png">🌴</g-emoji>
                        </div>
                        <div class="d-flex flex-items-center no-underline js-predefined-user-status-message" style="border-left: 1px solid transparent">
                          On vacation
                        </div>
                      </button>
                      <button type="button" value=":face_with_thermometer:" class="d-flex flex-items-baseline flex-items-stretch lh-condensed f6 btn-link link-gray no-underline js-predefined-user-status mb-1">
                        <div class="emoji-status-width mr-2 v-align-middle js-predefined-user-status-emoji">
                          <g-emoji alias="face_with_thermometer" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f912.png">🤒</g-emoji>
                        </div>
                        <div class="d-flex flex-items-center no-underline js-predefined-user-status-message" style="border-left: 1px solid transparent">
                          Out sick
                        </div>
                      </button>
                  </div>
                  <div class="float-left col-6">
                      <button type="button" value=":house:" class="d-flex flex-items-baseline flex-items-stretch lh-condensed f6 btn-link link-gray no-underline js-predefined-user-status mb-1">
                        <div class="emoji-status-width mr-2 v-align-middle js-predefined-user-status-emoji">
                          <g-emoji alias="house" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f3e0.png">🏠</g-emoji>
                        </div>
                        <div class="d-flex flex-items-center no-underline js-predefined-user-status-message" style="border-left: 1px solid transparent">
                          Working from home
                        </div>
                      </button>
                      <button type="button" value=":dart:" class="d-flex flex-items-baseline flex-items-stretch lh-condensed f6 btn-link link-gray no-underline js-predefined-user-status mb-1">
                        <div class="emoji-status-width mr-2 v-align-middle js-predefined-user-status-emoji">
                          <g-emoji alias="dart" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f3af.png">🎯</g-emoji>
                        </div>
                        <div class="d-flex flex-items-center no-underline js-predefined-user-status-message" style="border-left: 1px solid transparent">
                          Focusing
                        </div>
                      </button>
                  </div>
              </div>
            </div>
            <div class="user-status-limited-availability-container">
              <div class="form-checkbox my-0">
                <input type="checkbox" name="limited_availability" value="1" class="js-user-status-limited-availability-checkbox" data-default-message="I may be slow to respond." aria-describedby="limited-availability-help-text-truncate-true" id="limited-availability-truncate-true">
                <label class="d-block f5 text-gray-dark mb-1" for="limited-availability-truncate-true">
                  Busy
                </label>
                <p class="note" id="limited-availability-help-text-truncate-true">
                  When others mention you, assign you, or request your review,
                  GitHub will let them know that you have limited availability.
                </p>
              </div>
            </div>
          </div>
          <include-fragment class="js-user-status-org-picker" data-url="/users/status/organizations"></include-fragment>
        </div>
        <div class="d-flex flex-items-center flex-justify-between p-3 border-top">
          <button type="submit" disabled class="width-full btn btn-primary mr-2 js-user-status-submit">
            Set status
          </button>
          <button type="button" disabled class="width-full js-clear-user-status-button btn ml-2 ">
            Clear status
          </button>
        </div>
</form>    </details-dialog>
  </details>
</div>

        </div>
        <div role="none" class="dropdown-divider"></div>

        <a role="menuitem" class="dropdown-item" href="/yeahJwczjzlTest" data-ga-click="Header, go to profile, text:your profile">Your profile</a>
        <a role="menuitem" class="dropdown-item" href="/yeahJwczjzlTest?tab=repositories" data-ga-click="Header, go to repositories, text:your repositories">Your repositories</a>

        <a role="menuitem" class="dropdown-item" href="/yeahJwczjzlTest?tab=projects" data-ga-click="Header, go to projects, text:your projects">Your projects</a>

        <a role="menuitem" class="dropdown-item" href="/yeahJwczjzlTest?tab=stars" data-ga-click="Header, go to starred repos, text:your stars">Your stars</a>
          <a role="menuitem" class="dropdown-item" href="https://gist.github.com/" data-ga-click="Header, your gists, text:your gists">Your gists</a>

        <div role="none" class="dropdown-divider"></div>
        <a role="menuitem" class="dropdown-item" href="https://help.github.com" data-ga-click="Header, go to help, text:help">Help</a>
        <a role="menuitem" class="dropdown-item" href="/settings/profile" data-ga-click="Header, go to settings, icon:settings">Settings</a>
        <!-- '"` --><!-- </textarea></xmp> --></option></form><form class="logout-form" action="/logout" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="+jkmx1NhmSBIH9cgANzXQxJZZypFCmwvh+ukPiVglCe0ST8Q1m1T7TZGAGzfRsMvNf6Tfl78IlXotLOay7eKFw==" />
          
          <button type="submit" class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout" role="menuitem">
            Sign out
          </button>
</form>      </details-menu>
    </details>
  </li>
</ul>



        <!-- '"` --><!-- </textarea></xmp> --></option></form><form class="sr-only right-0" action="/logout" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="FdUgElXVkRsNj66lsn76z5o5Hwe1XTuzb7brwhLhxJNbpTnF0Nlb1nPWeelt5O6jvZ7rU66rdckA6fxm/Dbaow==" />
          <button type="submit" class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
            Sign out
          </button>
</form>      </div>
    </div>
  </div>
</header>

      

  </div>

  <div id="start-of-content" class="show-on-focus"></div>

    <div id="js-flash-container">

</div>



  <div class="application-main " data-commit-hovercards-enabled>
        <div itemscope itemtype="http://schema.org/SoftwareSourceCode" class="">
    <main id="js-repo-pjax-container" data-pjax-container >
      


  



  




  <div class="pagehead repohead instapaper_ignore readability-menu experiment-repo-nav  ">
    <div class="repohead-details-container clearfix container">

      <ul class="pagehead-actions">



  <li>
        <!-- '"` --><!-- </textarea></xmp> --></option></form><form data-remote="true" class="js-social-form js-social-container" action="/notifications/subscribe" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="xeHtj3f6Ep/x7vaDkyc2l3bQ0TR6eTh9V6adv1o6oYbx5MKCybbMctaD39mlisIrByYXdhHPPJmajRxiY68JqQ==" />      <input type="hidden" name="repository_id" id="repository_id" value="21484781" class="form-control" />

      <details class="details-reset details-overlay select-menu float-left">
        <summary class="btn btn-sm btn-with-count select-menu-button" data-hydro-click="{&quot;event_type&quot;:&quot;repository.click&quot;,&quot;payload&quot;:{&quot;target&quot;:&quot;WATCH_BUTTON&quot;,&quot;user_id&quot;:26277316,&quot;record_id&quot;:21484781,&quot;client_id&quot;:&quot;1914992541.1552288613&quot;,&quot;originating_request_id&quot;:&quot;DF2B:15A0:4933B6:623076:5C87CA74&quot;,&quot;originating_url&quot;:&quot;https://github.com/jumpserver/jumpserver/blob/docs/docs/setup_by_centos7.rst&quot;}}" data-hydro-click-hmac="81d368d9019055c1022c731c79cfb56181ecfbc330b556e74319b9801fe3ab54" data-ga-click="Repository, click Watch settings, action:blob#show">          <span data-menu-button>
              <svg class="octicon octicon-eye v-align-text-bottom" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
              Watch
          </span>
</summary>        <details-menu class="select-menu-modal position-absolute mt-5" style="z-index: 99;">
          <div class="select-menu-header">
            <span class="select-menu-title">Notifications</span>
          </div>
          <div class="select-menu-list">
            <button type="submit" name="do" value="included" class="select-menu-item width-full" aria-checked="true" role="menuitemradio">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <div class="select-menu-item-text">
                <span class="select-menu-item-heading">Not watching</span>
                <span class="description">Be notified only when participating or @mentioned.</span>
                <span class="hidden-select-button-text" data-menu-button-contents>
                  <svg class="octicon octicon-eye v-align-text-bottom" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
                  Watch
                </span>
              </div>
            </button>

            <button type="submit" name="do" value="release_only" class="select-menu-item width-full" aria-checked="false" role="menuitemradio">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <div class="select-menu-item-text">
                <span class="select-menu-item-heading">Releases only</span>
                <span class="description">Be notified of new releases, and when participating or @mentioned.</span>
                <span class="hidden-select-button-text" data-menu-button-contents>
                  <svg class="octicon octicon-eye v-align-text-bottom" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
                  Unwatch releases
                </span>
              </div>
            </button>

            <button type="submit" name="do" value="subscribed" class="select-menu-item width-full" aria-checked="false" role="menuitemradio">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <div class="select-menu-item-text">
                <span class="select-menu-item-heading">Watching</span>
                <span class="description">Be notified of all conversations.</span>
                <span class="hidden-select-button-text" data-menu-button-contents>
                  <svg class="octicon octicon-eye v-align-text-bottom" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
                  Unwatch
                </span>
              </div>
            </button>

            <button type="submit" name="do" value="ignore" class="select-menu-item width-full" aria-checked="false" role="menuitemradio">
              <svg class="octicon octicon-check select-menu-item-icon" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5L12 5z"/></svg>
              <div class="select-menu-item-text">
                <span class="select-menu-item-heading">Ignoring</span>
                <span class="description">Never be notified.</span>
                <span class="hidden-select-button-text" data-menu-button-contents>
                  <svg class="octicon octicon-mute v-align-text-bottom" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8 2.81v10.38c0 .67-.81 1-1.28.53L3 10H1c-.55 0-1-.45-1-1V7c0-.55.45-1 1-1h2l3.72-3.72C7.19 1.81 8 2.14 8 2.81zm7.53 3.22l-1.06-1.06-1.97 1.97-1.97-1.97-1.06 1.06L11.44 8 9.47 9.97l1.06 1.06 1.97-1.97 1.97 1.97 1.06-1.06L13.56 8l1.97-1.97z"/></svg>
                  Stop ignoring
                </span>
              </div>
            </button>
          </div>
        </details-menu>
      </details>
      <a class="social-count js-social-count"
        href="/jumpserver/jumpserver/watchers"
        aria-label="563 users are watching this repository">
        563
      </a>
</form>
  </li>

  <li>
      <div class="js-toggler-container js-social-container starring-container ">
    <!-- '"` --><!-- </textarea></xmp> --></option></form><form class="starred js-social-form" action="/jumpserver/jumpserver/unstar" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="tyG5dmBM1wyhL1wjqeWhEFfFi4t0cj5PeniXwdY+Islx9d0lavngu4m+LJ6XfG7ztzCQq3ymG73YbQw5eP0mvA==" />
      <input type="hidden" name="context" value="repository"></input>
      <button type="submit" class="btn btn-sm btn-with-count js-toggler-target" aria-label="Unstar this repository" title="Unstar jumpserver/jumpserver" data-hydro-click="{&quot;event_type&quot;:&quot;repository.click&quot;,&quot;payload&quot;:{&quot;target&quot;:&quot;UNSTAR_BUTTON&quot;,&quot;user_id&quot;:26277316,&quot;record_id&quot;:21484781,&quot;client_id&quot;:&quot;1914992541.1552288613&quot;,&quot;originating_request_id&quot;:&quot;DF2B:15A0:4933B6:623076:5C87CA74&quot;,&quot;originating_url&quot;:&quot;https://github.com/jumpserver/jumpserver/blob/docs/docs/setup_by_centos7.rst&quot;}}" data-hydro-click-hmac="ba5de8c1b4778d08c6fb1304897b4591db0f52e195c94a07150522ffaeb8134c" data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">        <svg class="octicon octicon-star v-align-text-bottom" viewBox="0 0 14 16" version="1.1" width="14" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74L14 6z"/></svg>
        Unstar
</button>        <a class="social-count js-social-count" href="/jumpserver/jumpserver/stargazers"
           aria-label="7990 users starred this repository">
          7,990
        </a>
</form>
    <!-- '"` --><!-- </textarea></xmp> --></option></form><form class="unstarred js-social-form" action="/jumpserver/jumpserver/star" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="L8M0Rd5W71AS4Jo5vF2ShzTrIVwGa0aOTGWqfqhk4P/i2/rMTVnlStVOnmr+IGYhuKEOQQXFwAKGniosD1YDEA==" />
      <input type="hidden" name="context" value="repository"></input>
      <button type="submit" class="btn btn-sm btn-with-count js-toggler-target" aria-label="Unstar this repository" title="Star jumpserver/jumpserver" data-hydro-click="{&quot;event_type&quot;:&quot;repository.click&quot;,&quot;payload&quot;:{&quot;target&quot;:&quot;STAR_BUTTON&quot;,&quot;user_id&quot;:26277316,&quot;record_id&quot;:21484781,&quot;client_id&quot;:&quot;1914992541.1552288613&quot;,&quot;originating_request_id&quot;:&quot;DF2B:15A0:4933B6:623076:5C87CA74&quot;,&quot;originating_url&quot;:&quot;https://github.com/jumpserver/jumpserver/blob/docs/docs/setup_by_centos7.rst&quot;}}" data-hydro-click-hmac="e63c3ea95ca5fab08d1726aa0fc38651e401373a97ace7ab3739c3bf9e8c0a3c" data-ga-click="Repository, click star button, action:blob#show; text:Star">        <svg class="octicon octicon-star v-align-text-bottom" viewBox="0 0 14 16" version="1.1" width="14" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74L14 6z"/></svg>
        Star
</button>        <a class="social-count js-social-count" href="/jumpserver/jumpserver/stargazers"
           aria-label="7990 users starred this repository">
          7,990
        </a>
</form>  </div>

  </li>

  <li>
          <!-- '"` --><!-- </textarea></xmp> --></option></form><form class="btn-with-count" action="/jumpserver/jumpserver/fork" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="X5s5Xg+JDHaerwz46nTxsVtSMVGCjIpXZqNL+IxNihUBQ9yfs5J+gA7EYl6Kt7HH0BpX6VFds4GoxKlTpg2xcw==" />
            <button class="btn btn-sm btn-with-count" data-hydro-click="{&quot;event_type&quot;:&quot;repository.click&quot;,&quot;payload&quot;:{&quot;target&quot;:&quot;FORK_BUTTON&quot;,&quot;user_id&quot;:26277316,&quot;record_id&quot;:21484781,&quot;client_id&quot;:&quot;1914992541.1552288613&quot;,&quot;originating_request_id&quot;:&quot;DF2B:15A0:4933B6:623076:5C87CA74&quot;,&quot;originating_url&quot;:&quot;https://github.com/jumpserver/jumpserver/blob/docs/docs/setup_by_centos7.rst&quot;}}" data-hydro-click-hmac="cf8ab05fb7282d00d320026355a3462f326b2bcddf9e34fe48ac90527b63aa11" data-ga-click="Repository, show fork modal, action:blob#show; text:Fork" type="submit" title="Fork your own copy of jumpserver/jumpserver to your account" aria-label="Fork your own copy of jumpserver/jumpserver to your account">              <svg class="octicon octicon-repo-forked v-align-text-bottom" viewBox="0 0 10 16" version="1.1" width="10" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8 1a1.993 1.993 0 0 0-1 3.72V6L5 8 3 6V4.72A1.993 1.993 0 0 0 2 1a1.993 1.993 0 0 0-1 3.72V6.5l3 3v1.78A1.993 1.993 0 0 0 5 15a1.993 1.993 0 0 0 1-3.72V9.5l3-3V4.72A1.993 1.993 0 0 0 8 1zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3 10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3-10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
              Fork
</button></form>
    <a href="/jumpserver/jumpserver/network/members" class="social-count"
       aria-label="2666 users forked this repository">
      2,666
    </a>
  </li>
</ul>

      <h1 class="public ">
  <svg class="octicon octicon-repo" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"/></svg>
  <span class="author" itemprop="author"><a class="url fn" rel="author" data-hovercard-type="organization" data-hovercard-url="/orgs/jumpserver/hovercard" href="/jumpserver">jumpserver</a></span><!--
--><span class="path-divider">/</span><!--
--><strong itemprop="name"><a data-pjax="#js-repo-pjax-container" href="/jumpserver/jumpserver">jumpserver</a></strong>

</h1>

    </div>
    
<nav class="reponav js-repo-nav js-sidenav-container-pjax container"
     itemscope
     itemtype="http://schema.org/BreadcrumbList"
    aria-label="Repository"
     data-pjax="#js-repo-pjax-container">

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a class="js-selected-navigation-item selected reponav-item" itemprop="url" data-hotkey="g c" aria-current="page" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches repo_packages /jumpserver/jumpserver/tree/docs" href="/jumpserver/jumpserver/tree/docs">
      <svg class="octicon octicon-code" viewBox="0 0 14 16" version="1.1" width="14" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M9.5 3L8 4.5 11.5 8 8 11.5 9.5 13 14 8 9.5 3zm-5 0L0 8l4.5 5L6 11.5 2.5 8 6 4.5 4.5 3z"/></svg>
      <span itemprop="name">Code</span>
      <meta itemprop="position" content="1">
</a>  </span>

    <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
      <a itemprop="url" data-hotkey="g i" class="js-selected-navigation-item reponav-item" data-selected-links="repo_issues repo_labels repo_milestones /jumpserver/jumpserver/issues" href="/jumpserver/jumpserver/issues">
        <svg class="octicon octicon-issue-opened" viewBox="0 0 14 16" version="1.1" width="14" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7 2.3c3.14 0 5.7 2.56 5.7 5.7s-2.56 5.7-5.7 5.7A5.71 5.71 0 0 1 1.3 8c0-3.14 2.56-5.7 5.7-5.7zM7 1C3.14 1 0 4.14 0 8s3.14 7 7 7 7-3.14 7-7-3.14-7-7-7zm1 3H6v5h2V4zm0 6H6v2h2v-2z"/></svg>
        <span itemprop="name">Issues</span>
        <span class="Counter">150</span>
        <meta itemprop="position" content="2">
</a>    </span>

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a data-hotkey="g p" itemprop="url" class="js-selected-navigation-item reponav-item" data-selected-links="repo_pulls checks /jumpserver/jumpserver/pulls" href="/jumpserver/jumpserver/pulls">
      <svg class="octicon octicon-git-pull-request" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M11 11.28V5c-.03-.78-.34-1.47-.94-2.06C9.46 2.35 8.78 2.03 8 2H7V0L4 3l3 3V4h1c.27.02.48.11.69.31.21.2.3.42.31.69v6.28A1.993 1.993 0 0 0 10 15a1.993 1.993 0 0 0 1-3.72zm-1 2.92c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zM4 3c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v6.56A1.993 1.993 0 0 0 2 15a1.993 1.993 0 0 0 1-3.72V4.72c.59-.34 1-.98 1-1.72zm-.8 10c0 .66-.55 1.2-1.2 1.2-.65 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
      <span itemprop="name">Pull requests</span>
      <span class="Counter">3</span>
      <meta itemprop="position" content="3">
</a>  </span>


    <a data-hotkey="g b" class="js-selected-navigation-item reponav-item" data-selected-links="repo_projects new_repo_project repo_project /jumpserver/jumpserver/projects" href="/jumpserver/jumpserver/projects">
      <svg class="octicon octicon-project" viewBox="0 0 15 16" version="1.1" width="15" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M10 12h3V2h-3v10zm-4-2h3V2H6v8zm-4 4h3V2H2v12zm-1 1h13V1H1v14zM14 0H1a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h13a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1z"/></svg>
      Projects
      <span class="Counter" >0</span>
</a>

    <a class="js-selected-navigation-item reponav-item" data-hotkey="g w" data-selected-links="repo_wiki /jumpserver/jumpserver/wiki" href="/jumpserver/jumpserver/wiki">
      <svg class="octicon octicon-book" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M3 5h4v1H3V5zm0 3h4V7H3v1zm0 2h4V9H3v1zm11-5h-4v1h4V5zm0 2h-4v1h4V7zm0 2h-4v1h4V9zm2-6v9c0 .55-.45 1-1 1H9.5l-1 1-1-1H2c-.55 0-1-.45-1-1V3c0-.55.45-1 1-1h5.5l1 1 1-1H15c.55 0 1 .45 1 1zm-8 .5L7.5 3H2v9h6V3.5zm7-.5H9.5l-.5.5V12h6V3z"/></svg>
      Wiki
</a>
    <a class="js-selected-navigation-item reponav-item" data-selected-links="repo_graphs repo_contributors dependency_graph pulse alerts security people /jumpserver/jumpserver/pulse" href="/jumpserver/jumpserver/pulse">
      <svg class="octicon octicon-graph" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M16 14v1H0V0h1v14h15zM5 13H3V8h2v5zm4 0H7V3h2v10zm4 0h-2V6h2v7z"/></svg>
      Insights
</a>

</nav>


  </div>
<div class="container new-discussion-timeline experiment-repo-nav  ">
  <div class="repository-content ">

    
    



  
    <a class="d-none js-permalink-shortcut" data-hotkey="y" href="/jumpserver/jumpserver/blob/8ecd1bf050c0c82ddc68a07efae6489644ef9a44/docs/setup_by_centos7.rst">Permalink</a>

    <!-- blob contrib key: blob_contributors:v21:5a990e6f9eba90356b97755c97003454 -->

    

    <div class="file-navigation">
      
<details class="details-reset details-overlay select-menu branch-select-menu float-left">
  <summary class="btn btn-sm select-menu-button css-truncate"
           data-hotkey="w"
           
           title="Switch branches or tags">
    <i>Branch:</i>
    <span class="css-truncate-target">docs</span>
  </summary>

  <details-menu class="select-menu-modal position-absolute" style="z-index: 99;" src="/jumpserver/jumpserver/ref-list/docs/docs/setup_by_centos7.rst?source_action=show&amp;source_controller=blob" preload>
    <include-fragment class="select-menu-loading-overlay anim-pulse">
      <svg height="32" class="octicon octicon-octoface" viewBox="0 0 16 16" version="1.1" width="32" aria-hidden="true"><path fill-rule="evenodd" d="M14.7 5.34c.13-.32.55-1.59-.13-3.31 0 0-1.05-.33-3.44 1.3-1-.28-2.07-.32-3.13-.32s-2.13.04-3.13.32c-2.39-1.64-3.44-1.3-3.44-1.3-.68 1.72-.26 2.99-.13 3.31C.49 6.21 0 7.33 0 8.69 0 13.84 3.33 15 7.98 15S16 13.84 16 8.69c0-1.36-.49-2.48-1.3-3.35zM8 14.02c-3.3 0-5.98-.15-5.98-3.35 0-.76.38-1.48 1.02-2.07 1.07-.98 2.9-.46 4.96-.46 2.07 0 3.88-.52 4.96.46.65.59 1.02 1.3 1.02 2.07 0 3.19-2.68 3.35-5.98 3.35zM5.49 9.01c-.66 0-1.2.8-1.2 1.78s.54 1.79 1.2 1.79c.66 0 1.2-.8 1.2-1.79s-.54-1.78-1.2-1.78zm5.02 0c-.66 0-1.2.79-1.2 1.78s.54 1.79 1.2 1.79c.66 0 1.2-.8 1.2-1.79s-.53-1.78-1.2-1.78z"/></svg>
    </include-fragment>
  </details-menu>
</details>

      <div class="BtnGroup float-right">
        <a href="/jumpserver/jumpserver/find/docs"
              class="js-pjax-capture-input btn btn-sm BtnGroup-item"
              data-pjax
              data-hotkey="t">
          Find file
        </a>
        <clipboard-copy for="blob-path" class="btn btn-sm BtnGroup-item">
          Copy path
        </clipboard-copy>
      </div>
      <div id="blob-path" class="breadcrumb">
        <span class="repo-root js-repo-root"><span class="js-path-segment"><a data-pjax="true" href="/jumpserver/jumpserver/tree/docs"><span>jumpserver</span></a></span></span><span class="separator">/</span><span class="js-path-segment"><a data-pjax="true" href="/jumpserver/jumpserver/tree/docs/docs"><span>docs</span></a></span><span class="separator">/</span><strong class="final-path">setup_by_centos7.rst</strong>
      </div>
    </div>



    
  <div class="commit-tease d-flex flex-column flex-shrink-0">
      <div class="d-flex flex-justify-between ">
        <span class="pr-md-4">
          <a rel="contributor" data-skip-pjax="true" data-hovercard-type="user" data-hovercard-url="/hovercards?user_id=24326988" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="/wojiushixiaobai"><img class="avatar" src="https://avatars0.githubusercontent.com/u/24326988?s=40&amp;v=4" width="20" height="20" alt="@wojiushixiaobai" /></a>
          <a class="user-mention" rel="contributor" data-hovercard-type="user" data-hovercard-url="/hovercards?user_id=24326988" data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self" href="/wojiushixiaobai">wojiushixiaobai</a>
            <a data-pjax="true" title="[Update]更新文档" class="message" href="/jumpserver/jumpserver/commit/0bc19697ba140fde8444a93b1decb198bd62eb2b">[Update]更新文档</a>
        </span>
        <span class="d-inline-block flex-shrink-0 v-align-bottom ">
          <a class="commit-tease-sha pr-2" href="/jumpserver/jumpserver/commit/0bc19697ba140fde8444a93b1decb198bd62eb2b" data-pjax>
            0bc1969
          </a>
          <relative-time datetime="2019-03-11T06:29:53Z">Mar 11, 2019</relative-time>
        </span>
      </div>

    <div class="commit-tease-contributors flex-auto">
      
<details class="details-reset details-overlay details-overlay-dark lh-default text-gray-dark float-left mr-2" id="blob_contributors_box">
  <summary
      class="btn-link"
      aria-haspopup="dialog"
      
      
      >
    
    <span><strong>1</strong> contributor</span>
  </summary>
  <details-dialog class="Box Box--overlay d-flex flex-column anim-fade-in fast " aria-label="Users who have contributed to this file">
    <div class="Box-header">
      <button class="Box-btn-octicon btn-octicon float-right" type="button" aria-label="Close dialog" data-close-dialog>
        <svg class="octicon octicon-x" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48L7.48 8z"/></svg>
      </button>
      <h3 class="Box-title">Users who have contributed to this file</h3>
    </div>
    
        <ul class="list-style-none overflow-auto">
            <li class="Box-row">
              <a class="link-gray-dark no-underline" href="/wojiushixiaobai">
                <img class="avatar mr-2" alt="" src="https://avatars0.githubusercontent.com/u/24326988?s=40&amp;v=4" width="20" height="20" />
                wojiushixiaobai
</a>            </li>
        </ul>

  </details-dialog>
</details>
      
    </div>
  </div>





    <div class="file ">
      
<div class="file-header ">

  <div class="file-info float-left ">
      479 lines (375 sloc)
      <span class="file-info-divider"></span>
    17.6 KB
  </div>

  <div class="file-actions d-flex ">

    <div class="BtnGroup">
      <a id="raw-url" class="btn btn-sm BtnGroup-item" href="/jumpserver/jumpserver/raw/docs/docs/setup_by_centos7.rst">Raw</a>
        <a class="btn btn-sm js-update-url-with-hash BtnGroup-item" data-hotkey="b" href="/jumpserver/jumpserver/blame/docs/docs/setup_by_centos7.rst">Blame</a>
      <a rel="nofollow" class="btn btn-sm BtnGroup-item" href="/jumpserver/jumpserver/commits/docs/docs/setup_by_centos7.rst">History</a>
    </div>


    <div>
            <a class="btn-octicon tooltipped tooltipped-nw"
               href="https://desktop.github.com"
               aria-label="Open this file in GitHub Desktop"
               data-ga-click="Repository, open with desktop, type:mac">
                <svg class="octicon octicon-device-desktop" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M15 2H1c-.55 0-1 .45-1 1v9c0 .55.45 1 1 1h5.34c-.25.61-.86 1.39-2.34 2h8c-1.48-.61-2.09-1.39-2.34-2H15c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm0 9H1V3h14v8z"/></svg>
            </a>

            <!-- '"` --><!-- </textarea></xmp> --></option></form><form class="inline-form js-update-url-with-hash" action="/jumpserver/jumpserver/edit/docs/docs/setup_by_centos7.rst" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="4bZ2QV+DX+AaCHVbE9Z6cu6VqWGErz2kONqwVOaE5tBfzrK3g+JahyzhYJa9UUPkjybuCRWucD9URXF4Iwc/JA==" />
              <button class="btn-octicon tooltipped tooltipped-nw" type="submit"
                aria-label="Fork this project and edit the file" data-hotkey="e" data-disable-with>
                <svg class="octicon octicon-pencil" viewBox="0 0 14 16" version="1.1" width="14" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M0 12v3h3l8-8-3-3-8 8zm3 2H1v-2h1v1h1v1zm10.3-9.3L12 6 9 3l1.3-1.3a.996.996 0 0 1 1.41 0l1.59 1.59c.39.39.39 1.02 0 1.41z"/></svg>
              </button>
</form>
          <!-- '"` --><!-- </textarea></xmp> --></option></form><form class="inline-form" action="/jumpserver/jumpserver/delete/docs/docs/setup_by_centos7.rst" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="FbnSzul8EmyG5gfEWVmtL2hBtuZ4e8QUIabrip6Kf/2xxrg9j1iM+DGmvxdcTXU8nDUQQe+ryMXlDAcdUDtBWw==" />
            <button class="btn-octicon btn-octicon-danger tooltipped tooltipped-nw" type="submit"
              aria-label="Fork this project and delete the file" data-disable-with>
              <svg class="octicon octicon-trashcan" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M11 2H9c0-.55-.45-1-1-1H5c-.55 0-1 .45-1 1H2c-.55 0-1 .45-1 1v1c0 .55.45 1 1 1v9c0 .55.45 1 1 1h7c.55 0 1-.45 1-1V5c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm-1 12H3V5h1v8h1V5h1v8h1V5h1v8h1V5h1v9zm1-10H2V3h9v1z"/></svg>
            </button>
</form>    </div>
  </div>
</div>

      
  <div id="readme" class="readme blob instapaper_body js-code-block-container">
    <article class="markdown-body entry-content" itemprop="text"><h1><a id="user-content-centos-7-安装文档" class="anchor" aria-hidden="true" href="#centos-7-安装文档"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>CentOS 7 安装文档</h1>
<a name="user-content-id1"></a>
<h2><a id="user-content-说明" class="anchor" aria-hidden="true" href="#说明"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>说明</h2>
<ul>
<li># 开头的行表示注释</li>
<li>&gt; 开头的行表示需要在 mysql 中执行</li>
<li>$ 开头的行表示需要执行的命令</li>
</ul>
<p>本文档适用于有一定web运维经验的管理员或者工程师, 文中不会对安装的软件做过多的解释, 仅对需要执行的内容注部分注释, 更详细的内容请参考一步一步安装。</p>
<p>懒人和萌新推荐直接使用 <a href="/jumpserver/jumpserver/blob/docs/docs/setup_by_fast.html">极速安装文档</a></p>
<p>安装过程中遇到问题可参考 <a href="/jumpserver/jumpserver/blob/docs/docs/faq_install.html">安装过程中常见的问题</a></p>
<a name="user-content-id4"></a>
<h2><a id="user-content-环境" class="anchor" aria-hidden="true" href="#环境"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>环境</h2>
<ul>
<li>系统: CentOS 7</li>
<li>IP: 192.168.244.144</li>
<li>目录: /opt</li>
<li>数据库: mariadb</li>
<li>代理: nginx</li>
</ul>
<a name="user-content-id5"></a>
<h2><a id="user-content-开始安装" class="anchor" aria-hidden="true" href="#开始安装"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>开始安装</h2>
<div class="highlight highlight-source-shell"><pre>$ yum update -y

<span class="pl-c"><span class="pl-c">#</span> 防火墙 与 selinux 设置说明, 如果已经关闭了 防火墙 和 Selinux 的用户请跳过设置</span>
$ systemctl start firewalld
$ firewall-cmd --zone=public --add-port=80/tcp --permanent  <span class="pl-c"><span class="pl-c">#</span> nginx 端口</span>
$ firewall-cmd --zone=public --add-port=2222/tcp --permanent  <span class="pl-c"><span class="pl-c">#</span> 用户SSH登录端口 coco</span>
  --permanent  永久生效, 没有此参数重启后失效

$ firewall-cmd --reload  <span class="pl-c"><span class="pl-c">#</span> 重新载入规则</span>

$ setenforce 0
$ sed -i <span class="pl-s"><span class="pl-pds">"</span>s/enforcing/disabled/g<span class="pl-pds">"</span></span> /etc/selinux/config

<span class="pl-c"><span class="pl-c">#</span> 修改字符集, 否则可能报 input/output error的问题, 因为日志里打印了中文</span>
$ localedef -c -f UTF-8 -i zh_CN zh_CN.UTF-8
$ <span class="pl-k">export</span> LC_ALL=zh_CN.UTF-8
$ <span class="pl-c1">echo</span> <span class="pl-s"><span class="pl-pds">'</span>LANG="zh_CN.UTF-8"<span class="pl-pds">'</span></span> <span class="pl-k">&gt;</span> /etc/locale.conf

<span class="pl-c"><span class="pl-c">#</span> 安装依赖包</span>
$ yum -y install wget gcc epel-release git

<span class="pl-c"><span class="pl-c">#</span> 安装 Redis, Jumpserver 使用 Redis 做 cache 和 celery broke</span>
$ yum -y install redis
$ systemctl <span class="pl-c1">enable</span> redis
$ systemctl start redis

<span class="pl-c"><span class="pl-c">#</span> 安装 MySQL, 如果不使用 Mysql 可以跳过相关 Mysql 安装和配置, 支持sqlite3, mysql, postgres等</span>
$ yum -y install mariadb mariadb-devel mariadb-server <span class="pl-c"><span class="pl-c">#</span> centos7下叫mariadb, 用法与mysql一致</span>
$ systemctl <span class="pl-c1">enable</span> mariadb
$ systemctl start mariadb
<span class="pl-c"><span class="pl-c">#</span> 创建数据库 Jumpserver 并授权</span>
$ DB_PASSWORD=<span class="pl-s"><span class="pl-pds">`</span>cat /dev/urandom <span class="pl-k">|</span> tr -dc A-Za-z0-9 <span class="pl-k">|</span> head -c 24<span class="pl-pds">`</span></span>  <span class="pl-c"><span class="pl-c">#</span> 生成随机数据库密码</span>
$ <span class="pl-c1">echo</span> -e <span class="pl-s"><span class="pl-pds">"</span>\033[31m 你的数据库密码是 <span class="pl-smi">$DB_PASSWORD</span> \033[0m<span class="pl-pds">"</span></span>
$ mysql -uroot -e <span class="pl-s"><span class="pl-pds">"</span>create database jumpserver default charset 'utf8'; grant all on jumpserver.* to 'jumpserver'@'127.0.0.1' identified by '<span class="pl-smi">$DB_PASSWORD</span>'; flush privileges;<span class="pl-pds">"</span></span>

<span class="pl-c"><span class="pl-c">#</span> 安装 Nginx, 用作代理服务器整合 Jumpserver 与各个组件</span>
$ vi /etc/yum.repos.d/nginx.repo

[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/7/<span class="pl-smi">$basearch</span>/
gpgcheck=0
enabled=1

$ yum -y install nginx
$ systemctl <span class="pl-c1">enable</span> nginx

<span class="pl-c"><span class="pl-c">#</span> 安装 Python3.6</span>
$ yum -y install python36 python36-devel

<span class="pl-c"><span class="pl-c">#</span> 配置并载入 Python3 虚拟环境</span>
$ <span class="pl-c1">cd</span> /opt
$ python3.6 -m venv py3  <span class="pl-c"><span class="pl-c">#</span> py3 为虚拟环境名称, 可自定义</span>
$ <span class="pl-c1">source</span> /opt/py3/bin/activate  <span class="pl-c"><span class="pl-c">#</span> 退出虚拟环境可以使用 deactivate 命令</span>

<span class="pl-c"><span class="pl-c">#</span> 看到下面的提示符代表成功, 以后运行 Jumpserver 都要先运行以上 source 命令, 载入环境后默认以下所有命令均在该虚拟环境中运行</span>
(py3) [root@localhost py3]

<span class="pl-c"><span class="pl-c">#</span> 下载 Jumpserver</span>
$ <span class="pl-c1">cd</span> /opt/
$ git clone https://github.com/jumpserver/jumpserver.git

<span class="pl-c"><span class="pl-c">#</span> 安装依赖 RPM 包</span>
$ yum -y install <span class="pl-s"><span class="pl-pds">$(</span>cat /opt/jumpserver/requirements/rpm_requirements.txt<span class="pl-pds">)</span></span>

<span class="pl-c"><span class="pl-c">#</span> 安装 Python 库依赖</span>
$ pip install --upgrade pip setuptools
$ pip install -r /opt/jumpserver/requirements/requirements.txt</pre></div>
<div class="highlight highlight-source-shell"><pre><span class="pl-c"><span class="pl-c">#</span> 修改 Jumpserver 配置文件</span>
$ <span class="pl-c1">cd</span> /opt/jumpserver
$ cp config_example.yml config.yml

$ SECRET_KEY=<span class="pl-s"><span class="pl-pds">`</span>cat /dev/urandom <span class="pl-k">|</span> tr -dc A-Za-z0-9 <span class="pl-k">|</span> head -c 50<span class="pl-pds">`</span></span>  <span class="pl-c"><span class="pl-c">#</span> 生成随机SECRET_KEY</span>
$ <span class="pl-c1">echo</span> <span class="pl-s"><span class="pl-pds">"</span>SECRET_KEY=<span class="pl-smi">$SECRET_KEY</span><span class="pl-pds">"</span></span> <span class="pl-k">&gt;&gt;</span> <span class="pl-k">~</span>/.bashrc
$ BOOTSTRAP_TOKEN=<span class="pl-s"><span class="pl-pds">`</span>cat /dev/urandom <span class="pl-k">|</span> tr -dc A-Za-z0-9 <span class="pl-k">|</span> head -c 16<span class="pl-pds">`</span></span>  <span class="pl-c"><span class="pl-c">#</span> 生成随机BOOTSTRAP_TOKEN</span>
$ <span class="pl-c1">echo</span> <span class="pl-s"><span class="pl-pds">"</span>BOOTSTRAP_TOKEN=<span class="pl-smi">$BOOTSTRAP_TOKEN</span><span class="pl-pds">"</span></span> <span class="pl-k">&gt;&gt;</span> <span class="pl-k">~</span>/.bashrc

$ sed -i <span class="pl-s"><span class="pl-pds">"</span>s/SECRET_KEY:/SECRET_KEY: <span class="pl-smi">$SECRET_KEY</span>/g<span class="pl-pds">"</span></span> /opt/jumpserver/config.yml
$ sed -i <span class="pl-s"><span class="pl-pds">"</span>s/BOOTSTRAP_TOKEN:/BOOTSTRAP_TOKEN: <span class="pl-smi">$BOOTSTRAP_TOKEN</span>/g<span class="pl-pds">"</span></span> /opt/jumpserver/config.yml
$ sed -i <span class="pl-s"><span class="pl-pds">"</span>s/# DEBUG: true/DEBUG: false/g<span class="pl-pds">"</span></span> /opt/jumpserver/config.yml
$ sed -i <span class="pl-s"><span class="pl-pds">"</span>s/# LOG_LEVEL: DEBUG/LOG_LEVEL: ERROR/g<span class="pl-pds">"</span></span> /opt/jumpserver/config.yml
$ sed -i <span class="pl-s"><span class="pl-pds">"</span>s/# SESSION_EXPIRE_AT_BROWSER_CLOSE: false/SESSION_EXPIRE_AT_BROWSER_CLOSE: true/g<span class="pl-pds">"</span></span> /opt/jumpserver/config.yml
$ sed -i <span class="pl-s"><span class="pl-pds">"</span>s/DB_PASSWORD: /DB_PASSWORD: <span class="pl-smi">$DB_PASSWORD</span>/g<span class="pl-pds">"</span></span> /opt/jumpserver/config.yml
$ Server_IP=<span class="pl-s"><span class="pl-pds">`</span>ip addr <span class="pl-k">|</span> grep inet <span class="pl-k">|</span> egrep -v <span class="pl-s"><span class="pl-pds">'</span>(127.0.0.1|inet6|docker)<span class="pl-pds">'</span></span> <span class="pl-k">|</span> awk <span class="pl-s"><span class="pl-pds">'</span>{print $2}<span class="pl-pds">'</span></span> <span class="pl-k">|</span> tr -d <span class="pl-s"><span class="pl-pds">"</span>addr:<span class="pl-pds">"</span></span> <span class="pl-k">|</span> head -n 1 <span class="pl-k">|</span> cut -d / -f1<span class="pl-pds">`</span></span> \

$ <span class="pl-c1">echo</span> -e <span class="pl-s"><span class="pl-pds">"</span>\033[31m 你的SECRET_KEY是 <span class="pl-smi">$SECRET_KEY</span> \033[0m<span class="pl-pds">"</span></span>
$ <span class="pl-c1">echo</span> -e <span class="pl-s"><span class="pl-pds">"</span>\033[31m 你的BOOTSTRAP_TOKEN是 <span class="pl-smi">$BOOTSTRAP_TOKEN</span> \033[0m<span class="pl-pds">"</span></span>
$ <span class="pl-c1">echo</span> -e <span class="pl-s"><span class="pl-pds">"</span>\033[31m 你的服务器IP是 <span class="pl-smi">$Server_IP</span> \033[0m<span class="pl-pds">"</span></span>

$ vi config.yml  <span class="pl-c"><span class="pl-c">#</span> 确认内容有没有错误</span></pre></div>
<div class="highlight highlight-source-yaml"><pre><span class="pl-c"><span class="pl-c">#</span> SECURITY WARNING: keep the secret key used in production secret!</span>
<span class="pl-c"><span class="pl-c">#</span> 加密秘钥 生产环境中请修改为随机字符串, 请勿外泄</span>
<span class="pl-ent">SECRET_KEY</span>:

<span class="pl-c"><span class="pl-c">#</span> SECURITY WARNING: keep the bootstrap token used in production secret!</span>
<span class="pl-c"><span class="pl-c">#</span> 预共享Token coco和guacamole用来注册服务账号, 不在使用原来的注册接受机制</span>
<span class="pl-ent">BOOTSTRAP_TOKEN</span>:

<span class="pl-c"><span class="pl-c">#</span> Development env open this, when error occur display the full process track, Production disable it</span>
<span class="pl-c"><span class="pl-c">#</span> DEBUG 模式 开启DEBUG后遇到错误时可以看到更多日志</span>
<span class="pl-ent">DEBUG</span>: <span class="pl-c1">false</span>

<span class="pl-c"><span class="pl-c">#</span> DEBUG, INFO, WARNING, ERROR, CRITICAL can set. See https://docs.djangoproject.com/en/1.10/topics/logging/</span>
<span class="pl-c"><span class="pl-c">#</span> 日志级别</span>
<span class="pl-ent">LOG_LEVEL</span>: <span class="pl-s">ERROR</span>
<span class="pl-c"><span class="pl-c">#</span> LOG_DIR:</span>

<span class="pl-c"><span class="pl-c">#</span> Session expiration setting, Default 24 hour, Also set expired on on browser close</span>
<span class="pl-c"><span class="pl-c">#</span> 浏览器Session过期时间, 默认24小时, 也可以设置浏览器关闭则过期</span>
<span class="pl-c"><span class="pl-c">#</span> SESSION_COOKIE_AGE: 86400</span>
<span class="pl-ent">SESSION_EXPIRE_AT_BROWSER_CLOSE</span>: <span class="pl-c1">true</span>

<span class="pl-c"><span class="pl-c">#</span> Database setting, Support sqlite3, mysql, postgres ....</span>
<span class="pl-c"><span class="pl-c">#</span> 数据库设置</span>
<span class="pl-c"><span class="pl-c">#</span> See https://docs.djangoproject.com/en/1.10/ref/settings/#databases</span>

<span class="pl-c"><span class="pl-c">#</span> SQLite setting:</span>
<span class="pl-c"><span class="pl-c">#</span> 使用单文件sqlite数据库</span>
<span class="pl-c"><span class="pl-c">#</span> DB_ENGINE: sqlite3</span>
<span class="pl-c"><span class="pl-c">#</span> DB_NAME:</span>

<span class="pl-c"><span class="pl-c">#</span> MySQL or postgres setting like:</span>
<span class="pl-c"><span class="pl-c">#</span> 使用Mysql作为数据库</span>
<span class="pl-ent">DB_ENGINE</span>: <span class="pl-s">mysql</span>
<span class="pl-ent">DB_HOST</span>: <span class="pl-s">127.0.0.1</span>
<span class="pl-ent">DB_PORT</span>: <span class="pl-c1">3306</span>
<span class="pl-ent">DB_USER</span>: <span class="pl-s">jumpserver</span>
<span class="pl-ent">DB_PASSWORD</span>:
<span class="pl-ent">DB_NAME</span>: <span class="pl-s">jumpserver</span>

<span class="pl-c"><span class="pl-c">#</span> When Django start it will bind this host and port</span>
<span class="pl-c"><span class="pl-c">#</span> ./manage.py runserver 127.0.0.1:8080</span>
<span class="pl-c"><span class="pl-c">#</span> 运行时绑定端口</span>
<span class="pl-ent">HTTP_BIND_HOST</span>: <span class="pl-s">0.0.0.0</span>
<span class="pl-ent">HTTP_LISTEN_PORT</span>: <span class="pl-c1">8080</span>

<span class="pl-c"><span class="pl-c">#</span> Use Redis as broker for celery and web socket</span>
<span class="pl-c"><span class="pl-c">#</span> Redis配置</span>
<span class="pl-ent">REDIS_HOST</span>: <span class="pl-s">127.0.0.1</span>
<span class="pl-ent">REDIS_PORT</span>: <span class="pl-c1">6379</span>
<span class="pl-c"><span class="pl-c">#</span> REDIS_PASSWORD:</span>
<span class="pl-c"><span class="pl-c">#</span> REDIS_DB_CELERY: 3</span>
<span class="pl-c"><span class="pl-c">#</span> REDIS_DB_CACHE: 4</span>

<span class="pl-c"><span class="pl-c">#</span> Use OpenID authorization</span>
<span class="pl-c"><span class="pl-c">#</span> 使用OpenID 来进行认证设置</span>
<span class="pl-c"><span class="pl-c">#</span> BASE_SITE_URL: http://localhost:8080</span>
<span class="pl-c"><span class="pl-c">#</span> AUTH_OPENID: false  # True or False</span>
<span class="pl-c"><span class="pl-c">#</span> AUTH_OPENID_SERVER_URL: https://openid-auth-server.com/</span>
<span class="pl-c"><span class="pl-c">#</span> AUTH_OPENID_REALM_NAME: realm-name</span>
<span class="pl-c"><span class="pl-c">#</span> AUTH_OPENID_CLIENT_ID: client-id</span>
<span class="pl-c"><span class="pl-c">#</span> AUTH_OPENID_CLIENT_SECRET: client-secret</span>

<span class="pl-c"><span class="pl-c">#</span> OTP settings</span>
<span class="pl-c"><span class="pl-c">#</span> OTP/MFA 配置</span>
<span class="pl-c"><span class="pl-c">#</span> OTP_VALID_WINDOW: 0</span>
<span class="pl-c"><span class="pl-c">#</span> OTP_ISSUER_NAME: Jumpserver</span></pre></div>
<div class="highlight highlight-source-shell"><pre><span class="pl-c"><span class="pl-c">#</span> 运行 Jumpserver</span>
$ <span class="pl-c1">cd</span> /opt/jumpserver
$ ./jms start all  <span class="pl-c"><span class="pl-c">#</span> 后台运行使用 -d 参数./jms start all -d</span>
<span class="pl-c"><span class="pl-c">#</span> 新版本更新了运行脚本, 使用方式./jms start|stop|status|restart all  后台运行请添加 -d 参数</span></pre></div>
<div class="highlight highlight-source-shell"><pre><span class="pl-c"><span class="pl-c">#</span> 安装 docker 部署 coco 与 guacamole</span>
$ yum install -y yum-utils device-mapper-persistent-data lvm2
$ yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
$ yum makecache fast
$ rpm --import https://mirrors.aliyun.com/docker-ce/linux/centos/gpg
$ yum -y install docker-ce
$ systemctl <span class="pl-c1">enable</span> docker
$ curl -sSL https://get.daocloud.io/daotools/set_mirror.sh <span class="pl-k">|</span> sh -s http://f1361db2.m.daocloud.io
$ systemctl restart docker

<span class="pl-c"><span class="pl-c">#</span> 允许 容器ip 访问宿主 8080 端口, (容器的 ip 可以进入容器查看)</span>
$ firewall-cmd --permanent --add-rich-rule=<span class="pl-s"><span class="pl-pds">"</span>rule family=<span class="pl-pds">"</span></span>ipv4<span class="pl-s"><span class="pl-pds">"</span> source address=<span class="pl-pds">"</span></span>172.17.0.0/16<span class="pl-s"><span class="pl-pds">"</span> port protocol=<span class="pl-pds">"</span></span>tcp<span class="pl-s"><span class="pl-pds">"</span> port=<span class="pl-pds">"</span></span>8080<span class="pl-s"><span class="pl-pds">"</span> accept<span class="pl-pds">"</span></span>
$ firewall-cmd --reload
<span class="pl-c"><span class="pl-c">#</span> 172.17.0.x 是docker容器默认的IP池, 这里偷懒直接授权ip段了, 可以根据实际情况单独授权IP</span>

<span class="pl-c"><span class="pl-c">#</span> http://&lt;Jumpserver_url&gt; 指向 jumpserver 的服务端口, 如 http://192.168.244.144:8080</span>
<span class="pl-c"><span class="pl-c">#</span> BOOTSTRAP_TOKEN 为 Jumpserver/config.yml 里面的 BOOTSTRAP_TOKEN</span>
$ docker run --name jms_coco -d -p 2222:2222 -p 5000:5000 -e CORE_HOST=http://<span class="pl-smi">$Server_IP</span>:8080 -e BOOTSTRAP_TOKEN=<span class="pl-smi">$BOOTSTRAP_TOKEN</span> jumpserver/jms_coco:1.4.8
$ docker run --name jms_guacamole -d -p 8081:8081 -e JUMPSERVER_SERVER=http://<span class="pl-smi">$Server_IP</span>:8080 -e BOOTSTRAP_TOKEN=<span class="pl-smi">$BOOTSTRAP_TOKEN</span> jumpserver/jms_guacamole:1.4.8</pre></div>
<div class="highlight highlight-source-shell"><pre><span class="pl-c"><span class="pl-c">#</span> 安装 Web Terminal 前端: Luna  需要 Nginx 来运行访问 访问(https://github.com/jumpserver/luna/releases)下载对应版本的 release 包, 直接解压, 不需要编译</span>
$ <span class="pl-c1">cd</span> /opt
$ wget https://github.com/jumpserver/luna/releases/download/1.4.8/luna.tar.gz
$ tar xf luna.tar.gz
$ chown -R root:root luna</pre></div>
<div class="highlight highlight-source-shell"><pre><span class="pl-c"><span class="pl-c">#</span> 配置 Nginx 整合各组件</span>
$ rm -rf /etc/nginx/conf.d/default.conf</pre></div>
<div class="highlight highlight-source-shell"><pre>$ vi /etc/nginx/conf.d/jumpserver.conf

server {
    listen 80<span class="pl-k">;</span>

    client_max_body_size 100m<span class="pl-k">;</span>  <span class="pl-c"><span class="pl-c">#</span> 录像及文件上传大小限制</span>

    location /luna/ {
        try_files <span class="pl-smi">$uri</span> / /index.html<span class="pl-k">;</span>
        <span class="pl-c1">alias</span> /opt/luna/<span class="pl-k">;</span>  <span class="pl-c"><span class="pl-c">#</span> luna 路径, 如果修改安装目录, 此处需要修改</span>
    }

    location /media/ {
        add_header Content-Encoding gzip<span class="pl-k">;</span>
        root /opt/jumpserver/data/<span class="pl-k">;</span>  <span class="pl-c"><span class="pl-c">#</span> 录像位置, 如果修改安装目录, 此处需要修改</span>
    }

    location /static/ {
        root /opt/jumpserver/data/<span class="pl-k">;</span>  <span class="pl-c"><span class="pl-c">#</span> 静态资源, 如果修改安装目录, 此处需要修改</span>
    }

    location /socket.io/ {
        proxy_pass       http://localhost:5000/socket.io/<span class="pl-k">;</span>
        proxy_buffering off<span class="pl-k">;</span>
        proxy_http_version 1.1<span class="pl-k">;</span>
        proxy_set_header Upgrade <span class="pl-smi">$http_upgrade</span><span class="pl-k">;</span>
        proxy_set_header Connection <span class="pl-s"><span class="pl-pds">"</span>upgrade<span class="pl-pds">"</span></span><span class="pl-k">;</span>
        proxy_set_header X-Real-IP <span class="pl-smi">$remote_addr</span><span class="pl-k">;</span>
        proxy_set_header Host <span class="pl-smi">$host</span><span class="pl-k">;</span>
        proxy_set_header X-Forwarded-For <span class="pl-smi">$proxy_add_x_forwarded_for</span><span class="pl-k">;</span>
        access_log off<span class="pl-k">;</span>
    }

    location /coco/ {
        proxy_pass       http://localhost:5000/coco/<span class="pl-k">;</span>
        proxy_set_header X-Real-IP <span class="pl-smi">$remote_addr</span><span class="pl-k">;</span>
        proxy_set_header Host <span class="pl-smi">$host</span><span class="pl-k">;</span>
        proxy_set_header X-Forwarded-For <span class="pl-smi">$proxy_add_x_forwarded_for</span><span class="pl-k">;</span>
        access_log off<span class="pl-k">;</span>
    }

    location /guacamole/ {
        proxy_pass       http://localhost:8081/<span class="pl-k">;</span>
        proxy_buffering off<span class="pl-k">;</span>
        proxy_http_version 1.1<span class="pl-k">;</span>
        proxy_set_header Upgrade <span class="pl-smi">$http_upgrade</span><span class="pl-k">;</span>
        proxy_set_header Connection <span class="pl-smi">$http_connection</span><span class="pl-k">;</span>
        proxy_set_header X-Real-IP <span class="pl-smi">$remote_addr</span><span class="pl-k">;</span>
        proxy_set_header Host <span class="pl-smi">$host</span><span class="pl-k">;</span>
        proxy_set_header X-Forwarded-For <span class="pl-smi">$proxy_add_x_forwarded_for</span><span class="pl-k">;</span>
        access_log off<span class="pl-k">;</span>
    }

    location / {
        proxy_pass http://localhost:8080<span class="pl-k">;</span>
        proxy_set_header X-Real-IP <span class="pl-smi">$remote_addr</span><span class="pl-k">;</span>
        proxy_set_header Host <span class="pl-smi">$host</span><span class="pl-k">;</span>
        proxy_set_header X-Forwarded-For <span class="pl-smi">$proxy_add_x_forwarded_for</span><span class="pl-k">;</span>
    }
}</pre></div>
<div class="highlight highlight-source-shell"><pre><span class="pl-c"><span class="pl-c">#</span> 运行 Nginx</span>
$ nginx -t   <span class="pl-c"><span class="pl-c">#</span> 确保配置没有问题, 有问题请先解决</span>
$ systemctl start nginx

<span class="pl-c"><span class="pl-c">#</span> 访问 http://192.168.244.144 (注意 没有 :8080 通过 nginx 代理端口进行访问)</span>
<span class="pl-c"><span class="pl-c">#</span> 默认账号: admin 密码: admin  到会话管理-终端管理 接受 Coco Guacamole 等应用的注册</span>
<span class="pl-c"><span class="pl-c">#</span> 测试连接</span>
$ ssh -p2222 admin@192.168.244.144
$ sftp -P2222 admin@192.168.244.144
  密码: admin

<span class="pl-c"><span class="pl-c">#</span> 如果是用在 Windows 下, Xshell Terminal 登录语法如下</span>
$ ssh admin@192.168.244.144 2222
$ sftp admin@192.168.244.144 2222
  密码: admin
  如果能登陆代表部署成功

<span class="pl-c"><span class="pl-c">#</span> sftp默认上传的位置在资产的 /tmp 目录下</span>
<span class="pl-c"><span class="pl-c">#</span> windows拖拽上传的位置在资产的 Guacamole RDP上的 G 目录下</span></pre></div>
<p>多组件负载说明</p>
<div class="highlight highlight-source-shell"><pre><span class="pl-c"><span class="pl-c">#</span> coco 服务默认运行在单核心下面, 当负载过高时会导致用户访问变慢, 这时可运行多个 docker 容器缓解</span>
$ docker run --name jms_coco01 -d -p 2223:2222 -p 5001:5000 -e CORE_HOST=http://<span class="pl-k">&lt;</span>Jumpserver_url<span class="pl-k">&gt;</span> -e BOOTSTRAP_TOKEN=<span class="pl-k">******</span> jumpserver/jms_coco:1.4.8
$ docker run --name jms_coco02 -d -p 2224:2222 -p 5002:5000 -e CORE_HOST=http://<span class="pl-k">&lt;</span>Jumpserver_url<span class="pl-k">&gt;</span> -e BOOTSTRAP_TOKEN=<span class="pl-k">******</span> jumpserver/jms_coco:1.4.8
...

<span class="pl-c"><span class="pl-c">#</span> guacamole 也是一样</span>
$ docker run --name jms_guacamole01 -d -p 8082:8081 -e JUMPSERVER_SERVER=http://<span class="pl-k">&lt;</span>Jumpserver_url<span class="pl-k">&gt;</span> -e BOOTSTRAP_TOKEN=<span class="pl-k">******</span> jumpserver/jms_guacamole:1.4.8
$ docker run --name jms_guacamole02 -d -p 8083:8081 -e JUMPSERVER_SERVER=http://<span class="pl-k">&lt;</span>Jumpserver_url<span class="pl-k">&gt;</span> -e BOOTSTRAP_TOKEN=<span class="pl-k">******</span> jumpserver/jms_guacamole:1.4.8
...

<span class="pl-c"><span class="pl-c">#</span> nginx 代理设置</span>
$ vi /etc/nginx/nginx.conf
user  nginx<span class="pl-k">;</span>
worker_processes  auto<span class="pl-k">;</span>

error_log  /var/log/nginx/error.log warn<span class="pl-k">;</span>
pid        /var/run/nginx.pid<span class="pl-k">;</span>


events {
    worker_connections  1024<span class="pl-k">;</span>
}

<span class="pl-c"><span class="pl-c">#</span> 加入 tcp 代理</span>
stream {
    log_format  proxy  <span class="pl-s"><span class="pl-pds">'</span>$remote_addr [$time_local] <span class="pl-pds">'</span></span>
                       <span class="pl-s"><span class="pl-pds">'</span>$protocol $status $bytes_sent $bytes_received <span class="pl-pds">'</span></span>
                       <span class="pl-s"><span class="pl-pds">'</span>$session_time "$upstream_addr" <span class="pl-pds">'</span></span>
                       <span class="pl-s"><span class="pl-pds">'</span>"$upstream_bytes_sent" "$upstream_bytes_received" "$upstream_connect_time"<span class="pl-pds">'</span></span><span class="pl-k">;</span>

    access_log /var/log/nginx/tcp-access.log  proxy<span class="pl-k">;</span>
    open_log_file_cache off<span class="pl-k">;</span>

    upstream cocossh {
        server localhost:2222 weight=1<span class="pl-k">;</span>
        server localhost:2223 weight=1<span class="pl-k">;</span>  <span class="pl-c"><span class="pl-c">#</span> 多节点</span>
        server localhost:2224 weight=1<span class="pl-k">;</span>  <span class="pl-c"><span class="pl-c">#</span> 多节点</span>
        <span class="pl-c"><span class="pl-c">#</span> 这里是 coco ssh 的后端ip</span>
        <span class="pl-c1">hash</span> <span class="pl-smi">$remote_addr</span><span class="pl-k">;</span>
    }
    server {
        listen 2220<span class="pl-k">;</span>  <span class="pl-c"><span class="pl-c">#</span> 不能使用已经使用的端口, 自行修改, 用户ssh登录时的端口</span>
        proxy_pass cocossh<span class="pl-k">;</span>
        proxy_connect_timeout 10s<span class="pl-k">;</span>
        proxy_timeout 24h<span class="pl-k">;</span>   <span class="pl-c"><span class="pl-c">#</span>代理超时</span>
    }
}
<span class="pl-c"><span class="pl-c">#</span> 到此结束</span>

http {
    include       /etc/nginx/mime.types<span class="pl-k">;</span>
    default_type  application/octet-stream<span class="pl-k">;</span>

    log_format  main  <span class="pl-s"><span class="pl-pds">'</span>$remote_addr - $remote_user [$time_local] "$request" <span class="pl-pds">'</span></span>
                      <span class="pl-s"><span class="pl-pds">'</span>$status $body_bytes_sent "$http_referer" <span class="pl-pds">'</span></span>
                      <span class="pl-s"><span class="pl-pds">'</span>"$http_user_agent" "$http_x_forwarded_for"<span class="pl-pds">'</span></span><span class="pl-k">;</span>

    access_log  /var/log/nginx/access.log  main<span class="pl-k">;</span>

    sendfile        on<span class="pl-k">;</span>
    <span class="pl-c"><span class="pl-c">#</span> tcp_nopush     on;</span>

    keepalive_timeout  65<span class="pl-k">;</span>

    <span class="pl-c"><span class="pl-c">#</span> 关闭版本显示</span>
    server_tokens off<span class="pl-k">;</span>

    include /etc/nginx/conf.d/<span class="pl-k">*</span>.conf<span class="pl-k">;</span>
}

$ firewall-cmd --zone=public --add-port=2220/tcp --permanent
$ firewall-cmd --reload

$ vi /etc/nginx/conf.d/jumpserver.conf
upstream jumpserver {
    server localhost:80<span class="pl-k">;</span>
    <span class="pl-c"><span class="pl-c">#</span> 这里是 jumpserver 的后端ip</span>
}

upstream cocows {
    server localhost:5000 weight=1<span class="pl-k">;</span>
    server localhost:5001 weight=1<span class="pl-k">;</span>  <span class="pl-c"><span class="pl-c">#</span> 多节点</span>
    server localhost:5002 weight=1<span class="pl-k">;</span>  <span class="pl-c"><span class="pl-c">#</span> 多节点</span>
    <span class="pl-c"><span class="pl-c">#</span> 这里是 coco ws 的后端ip</span>
    ip_hash<span class="pl-k">;</span>
}

upstream guacamole {
    server localhost:8081 weight=1<span class="pl-k">;</span>
    server localhost:8082 weight=1<span class="pl-k">;</span>  <span class="pl-c"><span class="pl-c">#</span> 多节点</span>
    server localhost:8083 weight=1<span class="pl-k">;</span>  <span class="pl-c"><span class="pl-c">#</span> 多节点</span>
    <span class="pl-c"><span class="pl-c">#</span> 这里是 guacamole 的后端ip</span>
    ip_hash<span class="pl-k">;</span>
}

server {
    listen 80<span class="pl-k">;</span>
    server_name demo.jumpserver.org<span class="pl-k">;</span>  <span class="pl-c"><span class="pl-c">#</span> 自行修改成你的域名</span>

    client_max_body_size 100m<span class="pl-k">;</span>  <span class="pl-c"><span class="pl-c">#</span> 录像上传大小限制</span>

    location / {
        proxy_pass http://jumpserver<span class="pl-k">;</span>
        proxy_set_header X-Real-IP <span class="pl-smi">$remote_addr</span><span class="pl-k">;</span>
        proxy_set_header Host <span class="pl-smi">$host</span><span class="pl-k">;</span>
        proxy_set_header X-Forwarded-For <span class="pl-smi">$proxy_add_x_forwarded_for</span><span class="pl-k">;</span>
        access_log off<span class="pl-k">;</span>
    }

    location /luna/ {
        try_files <span class="pl-smi">$uri</span> / /index.html<span class="pl-k">;</span>
        <span class="pl-c1">alias</span> /opt/luna/<span class="pl-k">;</span>
    }

    location /socket.io/ {
        proxy_pass       http://cocows/socket.io/<span class="pl-k">;</span>  <span class="pl-c"><span class="pl-c">#</span> coco</span>
        proxy_buffering off<span class="pl-k">;</span>
        proxy_http_version 1.1<span class="pl-k">;</span>
        proxy_set_header Upgrade <span class="pl-smi">$http_upgrade</span><span class="pl-k">;</span>
        proxy_set_header Connection <span class="pl-s"><span class="pl-pds">"</span>upgrade<span class="pl-pds">"</span></span><span class="pl-k">;</span>
        proxy_set_header X-Real-IP <span class="pl-smi">$remote_addr</span><span class="pl-k">;</span>
        proxy_set_header Host <span class="pl-smi">$host</span><span class="pl-k">;</span>
        proxy_set_header X-Forwarded-For <span class="pl-smi">$proxy_add_x_forwarded_for</span><span class="pl-k">;</span>
        access_log off<span class="pl-k">;</span>
    }

    location /coco/ {
        proxy_pass       http://cocows/coco/<span class="pl-k">;</span>
        proxy_set_header X-Real-IP <span class="pl-smi">$remote_addr</span><span class="pl-k">;</span>
        proxy_set_header Host <span class="pl-smi">$host</span><span class="pl-k">;</span>
        proxy_set_header X-Forwarded-For <span class="pl-smi">$proxy_add_x_forwarded_for</span><span class="pl-k">;</span>
        access_log off<span class="pl-k">;</span>
    }

    location /guacamole/ {
        proxy_pass       http://guacamole/<span class="pl-k">;</span>  <span class="pl-c"><span class="pl-c">#</span>  guacamole</span>
        proxy_buffering off<span class="pl-k">;</span>
        proxy_http_version 1.1<span class="pl-k">;</span>
        proxy_set_header Upgrade <span class="pl-smi">$http_upgrade</span><span class="pl-k">;</span>
        proxy_set_header Connection <span class="pl-smi">$http_connection</span><span class="pl-k">;</span>
        proxy_set_header X-Real-IP <span class="pl-smi">$remote_addr</span><span class="pl-k">;</span>
        proxy_set_header Host <span class="pl-smi">$host</span><span class="pl-k">;</span>
        proxy_set_header X-Forwarded-For <span class="pl-smi">$proxy_add_x_forwarded_for</span><span class="pl-k">;</span>
        access_log off<span class="pl-k">;</span>
    }
}

$ nginx -t
$ nginx -s reload</pre></div>
<p>后续的使用请参考 <a href="/jumpserver/jumpserver/blob/docs/docs/admin_create_asset.html">快速入门</a>
如遇到问题可参考 <a href="/jumpserver/jumpserver/blob/docs/docs/faq.html">FAQ</a></p>

</article>
  </div>

    </div>

  

  <details class="details-reset details-overlay details-overlay-dark">
    <summary data-hotkey="l" aria-label="Jump to line"></summary>
    <details-dialog class="Box Box--overlay d-flex flex-column anim-fade-in fast linejump" aria-label="Jump to line">
      <!-- '"` --><!-- </textarea></xmp> --></option></form><form class="js-jump-to-line-form Box-body d-flex" action="" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" />
        <input class="form-control flex-auto mr-3 linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
        <button type="submit" class="btn" data-close-dialog>Go</button>
</form>    </details-dialog>
  </details>



  </div>
  <div class="modal-backdrop js-touch-events"></div>
</div>

    </main>
  </div>
  

  </div>

        
<div class="footer container-lg width-full px-3" role="contentinfo">
  <div class="position-relative d-flex flex-justify-between pt-6 pb-2 mt-6 f6 text-gray border-top border-gray-light ">
    <ul class="list-style-none d-flex flex-wrap ">
      <li class="mr-3">&copy; 2019 <span title="0.74808s from unicorn-d695554b-4jg8f">GitHub</span>, Inc.</li>
        <li class="mr-3"><a data-ga-click="Footer, go to terms, text:terms" href="https://github.com/site/terms">Terms</a></li>
        <li class="mr-3"><a data-ga-click="Footer, go to privacy, text:privacy" href="https://github.com/site/privacy">Privacy</a></li>
        <li class="mr-3"><a data-ga-click="Footer, go to security, text:security" href="https://github.com/security">Security</a></li>
        <li class="mr-3"><a href="https://githubstatus.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
        <li><a data-ga-click="Footer, go to help, text:help" href="https://help.github.com">Help</a></li>
    </ul>

    <a aria-label="Homepage" title="GitHub" class="footer-octicon mx-lg-4" href="https://github.com">
      <svg height="24" class="octicon octicon-mark-github" viewBox="0 0 16 16" version="1.1" width="24" aria-hidden="true"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
</a>
   <ul class="list-style-none d-flex flex-wrap ">
        <li class="mr-3"><a data-ga-click="Footer, go to contact, text:contact" href="https://github.com/contact">Contact GitHub</a></li>
        <li class="mr-3"><a href="https://github.com/pricing" data-ga-click="Footer, go to Pricing, text:Pricing">Pricing</a></li>
      <li class="mr-3"><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li class="mr-3"><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
        <li class="mr-3"><a href="https://github.blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a data-ga-click="Footer, go to about, text:about" href="https://github.com/about">About</a></li>

    </ul>
  </div>
  <div class="d-flex flex-justify-center pb-6">
    <span class="f6 text-gray-light"></span>
  </div>
</div>



  <div id="ajax-error-message" class="ajax-error-message flash flash-error">
    <svg class="octicon octicon-alert" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.893 1.5c-.183-.31-.52-.5-.887-.5s-.703.19-.886.5L.138 13.499a.98.98 0 0 0 0 1.001c.193.31.53.501.886.501h13.964c.367 0 .704-.19.877-.5a1.03 1.03 0 0 0 .01-1.002L8.893 1.5zm.133 11.497H6.987v-2.003h2.039v2.003zm0-3.004H6.987V5.987h2.039v4.006z"/></svg>
    <button type="button" class="flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
      <svg class="octicon octicon-x" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48L7.48 8z"/></svg>
    </button>
    You can’t perform that action at this time.
  </div>


    
    <script crossorigin="anonymous" integrity="sha512-YeSVCHVnUek8STxdIiqOkjmXdGtFepaG9wpHC0U7t61wYhGu+ifD2GOQ0I2xVbQL9ZXhUyxrom+3dxOGF/skGg==" type="application/javascript" src="https://github.githubassets.com/assets/frameworks-8465b3752de29c55.js"></script>
    
    <script crossorigin="anonymous" async="async" integrity="sha512-C9Dday8ZqULcdvQyXwe2onDUy1R3ugO/iOZ1wHDwBwsq6TI8N5i74XlrkQJSdmg1JPvjdFZMroBwPbv4+tfdkw==" type="application/javascript" src="https://github.githubassets.com/assets/github-bootstrap-59d11841a5c00f27.js"></script>
    
    
    
  <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner d-none">
    <svg class="octicon octicon-alert" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.893 1.5c-.183-.31-.52-.5-.887-.5s-.703.19-.886.5L.138 13.499a.98.98 0 0 0 0 1.001c.193.31.53.501.886.501h13.964c.367 0 .704-.19.877-.5a1.03 1.03 0 0 0 .01-1.002L8.893 1.5zm.133 11.497H6.987v-2.003h2.039v2.003zm0-3.004H6.987V5.987h2.039v4.006z"/></svg>
    <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
    <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
  </div>
  <template id="site-details-dialog">
  <details class="details-reset details-overlay details-overlay-dark lh-default text-gray-dark" open>
    <summary aria-haspopup="dialog" aria-label="Close dialog"></summary>
    <details-dialog class="Box Box--overlay d-flex flex-column anim-fade-in fast">
      <button class="Box-btn-octicon m-0 btn-octicon position-absolute right-0 top-0" type="button" aria-label="Close dialog" data-close-dialog>
        <svg class="octicon octicon-x" viewBox="0 0 12 16" version="1.1" width="12" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48L7.48 8z"/></svg>
      </button>
      <div class="octocat-spinner my-6 js-details-dialog-spinner"></div>
    </details-dialog>
  </details>
</template>

  <div class="Popover js-hovercard-content position-absolute" style="display: none; outline: none;" tabindex="0">
  <div class="Popover-message Popover-message--bottom-left Popover-message--large Box box-shadow-large" style="width:360px;">
  </div>
</div>

  <div aria-live="polite" class="js-global-screen-reader-notice sr-only"></div>

  </body>
</html>

