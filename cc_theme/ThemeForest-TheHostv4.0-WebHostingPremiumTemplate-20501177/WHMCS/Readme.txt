Steps to install WHMCS Template
==============================================
1. Upload the "thehostwhmcs" folder to your WHMCS Folder /templates

2. Activate "thehostwhmcs" Template from WHMCS Admin Panel Setup

3. Refresh the Client Area

Notes
==============================================

To update the WHMCS template Header and footer, Open header.tpl and footer.tpl inside /thehostwhmcs folder and edit accordingly. All the css overrides to default WHMCS six template are in css/custom.css file.
You can also copy paste from the HTML page to match with your website and update the links.

If you like to rename WHMCS template folder name, just use only letters and numbers (according to WHMCS). All orderforms automatic change thehost theme related.
For example "myhost" is OK. But "my-host" is not OK (WHMCS will be unable to see the specific template in admin).

If u want to appply WHMCS "thehostwhmcs" specific color style. Just go to "hostrwhmcs/includes/head.tpl" change location and upload.  


Default:
<link href="{$WEB_ROOT}/templates/{$template}/css/custom.css" rel="stylesheet">

Your Style :

<link href="{$WEB_ROOT}/templates/{$template}/css/colors/color1.css" rel="stylesheet">



For any support, just contact us via our Contact Form in our profile page in Themeforest
http://themeforest.net/user/sreethemes#contact
