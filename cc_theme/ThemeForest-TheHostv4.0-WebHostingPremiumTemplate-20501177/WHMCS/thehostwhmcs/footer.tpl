
                </div><!-- /.main-content -->
                {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                    <div class="col-md-3 pull-md-left sidebar">
                        {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                    </div>
                {/if}
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</section>

<!--  Footer -->
<footer class="footer">
    <div class="row section_sapce3 main-footer">
        <div class="container">
            <div class="col-sm-2">
                <h4>Choose.</h4>
                <ul>
                    <li> <a href="">Shared Hosting</a> </li>
                    <li> <a href="">Reseller Hosting</a> </li>
                    <li> <a href="">Cloud Managed VPS</a> </li>
                    <li> <a href="">Managed Dedicated Servers</a> </li>
              </ul>
            </div>
            <div class="col-sm-2">
                <h4>Get Support.</h4>
                <ul>
                    <li> <a href="">Contact Us</a> </li>
                    <li> <a href="">Knowledge Base</a> </li>
                    <li> <a href="">Submit a Ticket</a> </li>
                    <li> <a href="">Email</a> </li>
              </ul>
            </div>
            <div class="col-sm-2">
                <h4>Start.</h4>
                <ul>
                    <li> <a href="">WordPress Hosting</a> </li>
                    <li> <a href="">Joomla Hosting</a> </li>
                    <li> <a href="">Magento Hosting</a> </li>
                    <li> <a href="">Drupal Hosting</a> </li>
              </ul>
            </div>
            <div class="col-sm-2">
                <h4>Resources</h4>
                <ul>
                    <li> <a href="">Webmail</a> </li>
                    <li> <a href="">WHOIS Search</a> </li>
                    <li> <a href="">ICANN Confirmation</a> </li>
                    <li> <a href="">Site Map</a> </li>
              </ul>
            </div>
            <div class="col-sm-2">
                <h4>Shopping</h4>
                <ul>
                    <li> <a href="">Product Catalog</a> </li>
                    <li> <a href="">Find a Domain</a> </li>
                    <li> <a href="">Reseller Programs</a> </li>
                    <li> <a href="">Create Account</a> </li>
              </ul>
            </div>
            <div class="col-sm-2">
                <h4>About Us</h4>
                <ul>
                    <li> <a href="">About TheHost</a> </li>
                    <li> <a href="">Privacy Policy</a> </li>
                    <li> <a href="">Terms</a> </li>
                    <li> <a href="">Awards</a> </li>
              </ul>
            </div>
        </div>
    </div>
    <div class="row bg_white copyright padding-b15">
        <div class="container">
            <div class=" padding-t30 clearfix">
                <div class="col-sm-6">
                    <h4>Follow us</h4>
                    <div class="social-links">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
                <div class="col-sm-6 text-right">
                     <h4>Payment Modes</h4>
                    <ul class="list-inline payment-icons">
                      <li><i class="fa fa-cc-mastercard fa-3x"></i></li>
                      <li><i class="fa fa-cc-visa fa-3x"></i></li>
                      <li><i class="fa fa-cc-amex fa-3x"></i></li>
                      <li><i class="fa fa-cc-discover fa-3x"></i></li>
                      <li><i class="fa fa-cc-paypal fa-3x"></i></li>
                      <li><i class="fa fa-google-wallet fa-3x"></i></li>
                  </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--  End of Footer -->
    

<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>    
<section id="footer">
    <div class="container">
        <p>Copyright &copy; {$date_year} {$companyname}. All Rights Reserved.</p>
    </div>
</section>

<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel panel-primary">
            <div class="modal-header panel-heading">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">Title</h4>
            </div>
            <div class="modal-body panel-body">
                Loading...
            </div>
            <div class="modal-footer panel-footer">
                <div class="pull-left loader">
                    <i class="fa fa-circle-o-notch fa-spin"></i> Loading...
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Close
                </button>
                <button type="button" class="btn btn-primary modal-submit">
                    Submit
                </button>
            </div>
        </div>
    </div>
</div>

{$footeroutput}

</body>
</html>
