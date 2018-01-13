<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>

    {include file="$template/includes/head.tpl"}

    {$headoutput}

</head>
<body data-phone-cc-input="{$phoneNumberInputStyle}">

{$headeroutput}

<!-- Top MiniBar-->
<section class="topminibar">
 <div class="row">
    <div class="container">
        <div class="col-sm-12 col-md-6 col-xs-12">
           <ul class="list-inline">
              <li><a href="#"><i class="fa fa-commenting"></i><span> Live Chat</span></a></li>
              <li><a href="contact.html"><i class="fa fa-headphones"></i><span> Support</span></a></li>
           </ul>
        </div>
        <div class="col-sm-12 col-md-6 col-xs-12">
           <div class="text-right loginbuttons">
              <a href="cart.html" class="btn btn-sm btn-default"><i class="fa fa-gift"></i> Offers </a>
              <a href="cart.html" class="btn btn-sm btn-default"><i class="fa fa-pencil"></i>  Sign Up </a>
              <a href="cart.html" class="btn btn-sm btn-new"><i class="fa fa-user"></i> Account Login</a>
           </div>
        </div>
     </div>
 </div>
</section>
<!-- End of Top MiniBar-->

<section id="header">
    <div class="container">
    	<div class="col-sm-3">
            {if $assetLogoPath}
                <a href="{$WEB_ROOT}/index.php" class="logo"><img src="{$WEB_ROOT}/templates/{$template}/images/logo.png" alt="{$companyname}"></a>
            {else}
                <a href="{$WEB_ROOT}/index.php" class="logo logo-text">{$companyname}</a>
            {/if}
		</div>
    	<div class="col-sm-9">
            <ul class="top-nav">
                {if $languagechangeenabled && count($locales) > 1}
                    <li>
                        <a href="#" class="choose-language" data-toggle="popover" id="languageChooser">
                            {$activeLocale.localisedName}
                            <b class="caret"></b>
                        </a>
                        <div id="languageChooserContent" class="hidden">
                            <ul>
                                {foreach $locales as $locale}
                                    <li>
                                        <a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a>
                                    </li>
                                {/foreach}
                            </ul>
                        </div>
                    </li>
                {/if}
                {if $loggedin}
                    <li>
                        <a href="#" data-toggle="popover" id="accountNotifications" data-placement="bottom">
                            {$LANG.notifications}
                            {if count($clientAlerts) > 0}<span class="label label-info">NEW</span>{/if}
                            <b class="caret"></b>
                        </a>
                        <div id="accountNotificationsContent" class="hidden">
                            <ul class="client-alerts">
                            {foreach $clientAlerts as $alert}
                                <li>
                                    <a href="{$alert->getLink()}">
                                        <i class="fa fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}warning{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                        <div class="message">{$alert->getMessage()}</div>
                                    </a>
                                </li>
                            {foreachelse}
                                <li class="none">
                                    {$LANG.notificationsnone}
                                </li>
                            {/foreach}
                            </ul>
                        </div>
                    </li>
                    <li class="primary-action">
                        <a href="{$WEB_ROOT}/logout.php" class="btn btn-action">
                             {$LANG.clientareanavlogout}
                        </a>
                    </li>
                {else}
                    <li>
                        <a href="{$WEB_ROOT}/clientarea.php">{$LANG.login}</a>
                    </li>
                    {if $condlinks.allowClientRegistration}
                        <li>
                            <a href="{$WEB_ROOT}/register.php">{$LANG.register}</a>
                        </li>
                    {/if}
                    <li class="primary-action">
                        <a href="{$WEB_ROOT}/cart.php?a=view" class="btn btn-action">
                            <i class="fa fa-shopping-basket"></i> {$LANG.viewcart}
                        </a>
                    </li>
                {/if}
                {if $adminMasqueradingAsClient || $adminLoggedIn}
                    <li>
                        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-logged-in-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{$LANG.adminmasqueradingasclient} {$LANG.logoutandreturntoadminarea}{else}{$LANG.adminloggedin} {$LANG.returntoadminarea}{/if}">
                            <i class="fa fa-sign-out"></i>
                        </a>
                    </li>
                {/if}
            </ul>
		</div>
        
    </div>
</section>

<!-- Main Menu -->
<div class="main_menu">
    <div class="row">
        <div class="container">
            <div class="col-sm-8">
                <nav id="desktop-menu">
                    <ul class="sf-menu" id="navigation">
                        <li class="current"> <a href="#">Home</a>
                            <ul>
                                <li> <a href="index.html">HomePage Style 1</a> </li>
                                <li> <a href="index2.html">HomePage Style 2</a> </li>
                                <li> <a href="index3.html">HomePage Style 3</a> </li>
                                <li> <a href="index4.html">HomePage Style 4</a> </li>
                                <li> <a href="index5.html">HomePage Style 5</a> </li>
                            </ul>
                        </li>
                        <li> <a href="#">Hosting <span class="down-badge-color-3 main-badge">Free</span></a>
                            <ul>
                                <li> <a href="shared-servers.html">Shared Hosting</a>
                                    <ul>
                                        <li> <a href="shared-servers.html">Shared Servers Based</a> </li>
                                        <li> <a href="shared-period.html">Shared Period Based</a> </li>
                                    </ul>
                                </li>
                                <li> <a href="vps-slider-4-plans.html">VPS Servers</a>
                                    <ul>
                                        <li> <a href="vps-slider-3-plans.html">3 Plans Slider</a> </li>
                                        <li> <a href="vps-slider-4-plans.html">4 Plans Slider</a> </li>
                                        <li> <a href="vps-slider-5-plans.html">5 Plans Slider</a> </li>
                                        <li> <a href="vps-slider-6-plans.html">6 Plans Slider</a> </li>
                                    </ul>
                                </li>
                                <li> <a href="servers.html">Dedicated Servers</a> </li>
                                <li> <a href="cloud.html">Cloud Servers</a> </li>
                                <li> <a href="servers.html">Servers</a> </li>
                            </ul>
                        </li>
                        <li> <a href="domain-pricing.html">Domains</a>
                            <ul>
                                <li> <a href="domain-pricing.html">Domain Pricing</a> </li>
                                <li> <a href="domain-offers.html">Domain Offers</a> </li>
                            </ul>
                        </li>
                        <li> <a href="#">Pages 1</a>
                            <ul>
                                <li> <a href="about.html">About</a> </li>
                                <li> <a href="faq.html">FAQ</a> </li>
                                <li> <a href="login.html">Login</a> </li>
                                <li> <a href="login-popup.html">Login Popup </a> </li>
                                <li> <a href="register.html">Register</a> </li>
                                <li> <a href="resetpassword.html">Reset Password</a> </li>
                                <li> <a href="privacy.html">Privacy</a> </li>
                                <li> <a href="terms-of-service.html">Terms of Service</a> </li>
                                <li> <a href="progress.html">Progress</a> </li>
                                <li> <a href="action-boxes.html">Action Boxes</a> </li>
                                <li> <a href="#">Blog</a>
                                    <ul>
                                        <li> <a href="blog-category.html">Category</a> </li>
                                        <li> <a href="blog-single.html">Single</a> </li>
                                    </ul>
                                </li>
                                <li> <a href="contact.html">Contact</a> </li>
                                <li> <a href="elements.html">Elements <span class="left-badge-color-1 ">All</span></a> </li>
                            </ul>
                        </li>
                        <li> <a href="#">Pages 2</a>
                            <ul>
                                <li> <a href="domain-forsale.html">Domain For Sale</a> </li>
                                <li> <a href="maintance.html">Maintance</a> </li>
                                <li> <a href="popup-newsletter.html">Newsletter Popup</a> </li>
                                <li> <a href="datacenter.html">Datacenter</a> </li>
                                <li> <a href="cookie.html">Cookie Message</a></li>
                                <li> <a href="error2.html">Error 2</a> </li>
                                <li> <a href="error1.html">Error 1</a> </li>
                                <li> <a href="gallery.html">Gallery</a></li>
                                <li> <a href="sections.html">Sections</a> </li>
                                <li> <a href="sections-sizes.html">Section Sizes</a> </li>
                                <li> <a href="section-colors.html">Section Colors</a> </li>
                                <li> <a href="animations.html">Sample Animations</a> </li>
                                <li> <a href="cart.html">Cart</a> </li>
                            </ul>
                        </li>
                        <li> <a href="contact.html">Trending Pages <span class="down-badge-color-2 main-badge">Impressed</span></a>
                            <ul>
                                <li> <a href="affiliates.html">Affiliates</a> </li>
                                <li> <a href="domain-offers.html">Domain Offers </a> </li>
                                <li> <a href="gsuite.html">GSuit</a> </li>
                                <li> <a href="ssl.html">SSL</a> </li>
                                <li> <a href="sitelock.html">SiteLock</a> </li>
                                <li> <a href="cloudflare.html">CloudFlare</a> </li>
                                <li> <a href="wordpress.html">wordpress</a> </li>
                                <li> <a href="codeguard.html">CodeGuard</a> </li>
                                <li> <a href="website-builder.html">Website Builder</a></li>
                                <li> <a href="domain-forsale.html">Domain For Sale</a></li>
                                <li> <a href="maintance.html">Website Maintance</a></li>
                                <li> <a href="comingsoon.html">Coming Soon</a></li>
                                <li> <a href="compare-plans.html">Compare Plans</a> </li>
                            </ul>
                        </li>
                        <li> <a href="contact.html">Offers</a>
                            <ul>
                                <li> <a href="combo-plans.html">Combo Plans <span class="left-badge-color-1 ">Best</span></a></li>
                                <li> <a href="promocode.html">Promo Codes</a></li>
                                <li> <a href="domain-offers.html">Domain Offers</a></li>
                                <li> <a href="offer-header.html">Header Offer</a></li>
                                <li> <a href="offer-request.html">Offer Request</a></li>
                                <li> <a href="domain-forsale.html">Domain For Sale</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-sm-4">
                <ul class="sf-menu pull-right" id="user-menu">
                    <li> <a href="contact.html"><i aria-hidden="true" class="fa fa-commenting"></i></a> </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End of Main Menu -->
    
    
<section id="main-menu">

    <nav id="nav" class="navbar navbar-default navbar-main" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#primary-nav">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="primary-nav">

                <ul class="nav navbar-nav">

                    {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}

                </ul>

                <ul class="nav navbar-nav navbar-right">

                    {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}

                </ul>

            </div><!-- /.navbar-collapse -->
        </div>
    </nav>

</section>

{if $templatefile == 'homepage'}
    <section id="home-banner">
        <div class="container text-center">
            {if $registerdomainenabled || $transferdomainenabled}
                <h2>{$LANG.homebegin}</h2>
                <form method="post" action="domainchecker.php">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                            <div class="input-group input-group-lg">
                                <input type="text" class="form-control" name="domain" placeholder="{$LANG.exampledomain}" autocapitalize="none" />
                                <span class="input-group-btn">
                                    {if $registerdomainenabled}
                                        <input type="submit" class="btn search" value="{$LANG.search}" />
                                    {/if}
                                    {if $transferdomainenabled}
                                        <input type="submit" name="transfer" class="btn transfer" value="{$LANG.domainstransfer}" />
                                    {/if}
                                </span>
                            </div>
                        </div>
                    </div>

                    {include file="$template/includes/captcha.tpl"}
                </form>
            {else}
                <h2>{$LANG.doToday}</h2>
            {/if}
        </div>
    </section>
    <div class="home-shortcuts">
        <div class="container">
            <div class="row">
                <div class="col-md-4 hidden-sm hidden-xs text-center">
                    <p class="lead">
                        {$LANG.howcanwehelp}
                    </p>
                </div>
                <div class="col-sm-12 col-md-8">
                    <ul>
                        {if $registerdomainenabled || $transferdomainenabled}
                            <li>
                                <a id="btnBuyADomain" href="domainchecker.php">
                                    <i class="fa fa-globe"></i>
                                    <p>
                                        {$LANG.buyadomain} <span>&raquo;</span>
                                    </p>
                                </a>
                            </li>
                        {/if}
                        <li>
                            <a id="btnOrderHosting" href="cart.php">
                                <i class="fa fa-hdd-o"></i>
                                <p>
                                    {$LANG.orderhosting} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a id="btnMakePayment" href="clientarea.php">
                                <i class="fa fa-credit-card"></i>
                                <p>
                                    {$LANG.makepayment} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a id="btnGetSupport" href="submitticket.php">
                                <i class="fa fa-envelope-o"></i>
                                <p>
                                    {$LANG.getsupport} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
{/if}

{include file="$template/includes/verifyemail.tpl"}

<section id="main-body">
    <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
        <div class="row">

        {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
            {if $primarySidebar->hasChildren() && !$skipMainBodyContainer}
                <div class="col-md-9 pull-md-right">
                    {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                </div>
            {/if}
            <div class="col-md-3 pull-md-left sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
            </div>
        {/if}
        <!-- Container for main page display content -->
        <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
            {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
                {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
            {/if}
