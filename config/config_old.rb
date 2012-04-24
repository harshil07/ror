RDig.configuration do |cfg|

  ##################################################################
  # options you really should set

  # log file location
  cfg.log_file = '/tmp/rdig.log'

  # log level, set to :debug, :info, :warn or :error
  cfg.log_level = :info
  
  # provide one or more URLs for the crawler to start from
  cfg.crawler.start_urls = [ 'http://www.amazon.com/', 'http://www.staples.com/', 'http://www.apple.com/', 'http://www.dell.com/', 'http://www.officedepot.com/', 'http://www.walmart.com/', 'http://www.searsholdings.com/', 'http://www.internetretailer.com/top500/profiles/Liberty-Media-Corp-QVC-Liberty-E-Commerce/', 'http://www.officemax.com/', 'http://www.cdw.com/', 'http://www.bestbuy.com/', 'http://www.newegg.com/', 'http://www.netflix.com/', 'http://sonystyle.com/', 'http://www.grainger.com/', 'http://www.costco.com/', 'http://www1.macys.com/shop/womens/brands/inc-international-concepts%3Fid%3D3481', 'http://www.bathandbodyworks.com/family/index.jsp%3FcategoryId%3D4376995', 'http://www.shopping.hp.com/', 'http://www.jcpenney.com/', 'http://www.llbean.com/', 'http://www.target.com/careers', 'http://www.systemax.com/', 'http://www.gapinc.com/', 'http://www.williams-sonomainc.com/', 'http://www.hsni.com/', 'http://www.overstock.com/', 'http://www.amway.com/', 'http://www.toysrus.com/', 'http://www.avon.com/', 'http://www.kohls.com/', 'http://www.buy.com/', 'http://www.redcats.com/', 'http://shop.nordstrom.com/', 'http://www.symantec.com/', 'http://www.vistaprint.com/', 'http://www.pcconnection.com/', 'http://www.saksfifthavenue.com/', 'http://www.neimanmarcusgroup.com/', 'http://www.cabelas.com/', 'http://www.barnesandnoble.com/', 'http://www.blockbuster.com/', 'http://www.homedepot.com/', 'http://www.musiciansfriend.com/', 'http://www.1800flowers.com/', 'http://www.drugstore.com/', 'http://www.peapod.com/', 'http://www.urbn.com/', 'http://www.gilt.com/sale/women', 'http://www.jcrew.com/', 'http://www.wayfair.com/', 'http://www.pcmall.com/', 'http://www.footlocker-inc.com/', 'http://www.scholastic.com/', 'http://www.crateandbarrel.com/', 'http://www.abercrombie.com/', 'http://www.ae.com/', 'http://www.fheg.follett.com/', 'http://www.usautoparts.net/', 'http://www.bluenile.com/', 'http://www.marketamerica.com/', 'http://www.rei.com/', 'http://www.nutrisystem.com/', 'http://www.orientaltrading.com/', 'http://www.zones.com/', 'http://www.shutterfly.com/', 'http://www.yooxgroup.com/', 'http://www.microsoft.com/', 'http://www.ancestry.com/', 'http://www.ralphlauren.com/home/index.jsp', 'http://www.ftdi.com/about.htm', 'http://www.diapers.com/', 'http://www.walgreens.com/marketing/about/default.jsp', 'http://www.disneystore.com/', 'http://www.freshdirect.com/', 'http://www.signaturestyleshop.com/default.asp', 'http://www.hayneedleinc.com/', 'http://nikeinc.com/', 'http://www.orchardbrands.com/', 'http://www.build.com/', 'http://www.weightwatchers.com/mobile', 'http://www.ruelala.com/', 'http://info.cvscaremark.com/', 'http://www.shopnbc.com/', 'http://www.northerntool.com/', 'http://www.basspro.com/', 'http://www.shoebuy.com/', 'http://www.sierratradingpost.com/', 'http://www.net-a-porter.com/Help/PrivacyPolicy', 'http://www.vitacost.com/', 'http://www.lowes.com/', 'http://www.eddiebauer.com/', 'http://www.coldwatercreek.com/', 'http://www.bluestembrands.com/', 'http://investing.businessweek.com/research/stocks/snapshot/snapshot.asp%3Fticker%3DANN:US', 'http://www.shopmyexchange.com/', 'http://www.theswisscolony.net/', 'http://www.footballfanatics.com/', 'http://www.greenmountaincoffee.com/', 'http://www.etronics.com/', 'http://www.1800contacts.com/', 'http://www.safeway.com/', 'http://www.harryanddavid.com/', 'http://www.hanoverdirect.com/', 'http://www.art.com/', 'http://www.americangirl.com/', 'http://www.1800petmeds.com/', 'http://www.restorationhardware.com/', 'http://www.jr.com/', 'http://www.istockanalyst.com/business/news/5549375/correcting-andreplacing-apparel-retailer-a-195-169-ropostale-selects-cashstar-to-deliver-egift-cards', 'http://www.beachbody.com/', 'http://www.talbots.com/', 'http://news.gamestop.com/', 'http://www.ebags.com/', 'http://www.drsfostersmith.com/', 'http://www.sephora.com/', 'http://www.coastal.com/', 'http://www.tiffany.com/', 'http://mlb.mlb.com/mlb/official_info/about_mlb_com/', 'http://www.crutchfield.com/', 'http://www.autozone.com/', 'http://www.cafepress.com/', 'http://www.alibris.com/', 'http://www.express.com/', 'http://www.omahasteaks.com/', 'http://www.dickssportinggoods.com/', 'http://www.childrensplace.com/', 'http://www.nfl.com/', 'http://www.chicos.com/', 'http://www.schoolspecialty.com/', 'http://www.alliedelec.com/', 'http://www.charmingshoppes.com/', 'http://www.heraldnews.com/news/x524582785/Boston-Apparel-to-close-by-the-end-of-October', 'http://www.zazzle.com/', 'http://www.bigfishgames.com/mobile-games/iphone-ipod-ipad-games.html', 'http://www.dillards.com/', 'http://www.shoes.com/', 'http://www.vfc.com/', 'http://www.nbty.com/', 'http://www.bodenusa.com/', 'http://www.potpourrigroup.com/', 'http://www.shoplet.com/', 'http://stores.lego.com/', 'http://www.orvis.com/', 'http://www.shoemall.com/', 'http://www.bostonproper.com/', 'http://www.fragrancenet.com/', 'http://www.onlineshoes.com/', 'http://www.elcompanies.com/', 'http://www.bidz.com/', 'http://www.abt.com/', 'http://en.wikipedia.org/wiki/The_Shopping_Channel', 'http://www.lifeway.com/', 'http://www.linkconnector.com/affiliateprogram.htm%3Fmid%3D25837', 'http://www.gamefly.com/', 'http://www.hautelook.com/', 'http://www.tinyprints.com/', 'http://www.bhphotovideo.com/', 'http://www.autoanything.com/', 'http://www.ajmadison.com/', 'http://1saleaday.com/', 'http://www.brooksbrothers.com/', 'http://www.lampsplus.com/', 'http://www.coach.com/', 'http://www.sdcd.com/CD-DVD-Distributor-And-One-Stop', 'http://www.hallmark.com/', 'http://www.ross-simons.com/', 'http://www.cymax.com/', 'http://www.deckers.com/', 'http://www.jtv.com/', 'http://www.ritzinteractive.com/', 'http://www.bedbathandbeyond.com/', 'http://www.bluefly.com/', 'http://www.finishline.com/', 'http://store.delias.com/', 'http://www.benchmarkbrands.com/', 'http://www.chapters.indigo.ca/', 'http://www.iherb.com/', 'http://www.panasonic.com/', 'http://www.karmaloop.com/', 'http://www.fansedge.com/', 'http://www.opticsplanet.com/', 'http://www.emusic.com/legal/index.html', 'http://www.overnightprints.com/', 'http://www.skymall.com/', 'http://www.drjays.com/', 'http://corporate.americangreetings.com/', 'http://www.cooking.com/products/terms.asp', 'http://www.brookstone.com/', 'http://www.underarmour.com/', 'http://www.beyondtherack.com/', 'http://www.thinkgeek.com/', 'http://www.replacements.com/', 'http://www.zalecorp.com/', 'http://www.cdwow.us/info/TermsConditions', 'http://www.fossil.com/en_US/shop/fossil-watches.html', 'http://www.vitaminshoppe.com/', 'http://www.crocs.com/', 'http://www.furniture.com/', 'http://www.borders.com/', 'http://www.dsw.com/', 'http://www.ecost.com/', 'http://www.tempurpedic.com/', 'http://www.jny.com/', 'http://www.shopadidas.com/', 'http://www.motorcycle-superstore.com/', 'http://www.compuplus.com/', 'http://www.customink.com/', 'http://www.roadrunnersports.com/', 'http://www.golfsmith.com/', 'http://www.personalizationmall.com/', 'http://www.onecall.com/', 'http://www.ldproducts.com/', 'http://www.josbank.com/', 'http://www.blinds.com/', 'http://www.jomashop.com/', 'http://www.hottopic.com/', 'http://www.buckle.com/', 'http://www.sleepnumber.com/', 'http://www.dermstore.com/', 'http://tabcom.org/', 'http://www.barneys.com/', 'http://www.sportsauthority.com/', 'http://www.petco.com/', 'http://www.ecampus.com/', 'http://www.databazaar.com/', 'http://www.gnc.com/', 'http://www.hickoryfarms.com/', 'http://www.lululemon.com/', 'http://www.cheaperthandirt.com/', 'http://www.nationalbusinessfurniture.com/', 'http://www.moviemars.com/', 'http://www.sweetwater.com/', 'http://store.discovery.com/', 'http://www.thompsongroup.com/', 'http://www.vermontteddybear.com/', 'http://www.hannaandersson.com/', 'http://www.ikea.com/', 'http://www.wine.com/', 'http://www.timelife.com/', 'http://www.roomstogo.com/', 'http://www.ice.com/', 'http://www.shopnewbalance.com/', 'http://www.geeks.com/', 'http://www.frys.com/', 'http://www.verabradley.com/', 'http://www.bjs.com/', 'http://www.instawares.com/', 'http://www.barenecessities.com/', 'http://www.powerequipmentdirect.com/', 'http://www.nyandcompany.com/', 'http://www.samashmusic.com/', 'http://www.livingdirect.com/', 'http://www.radioshackcorporation.com/', 'http://shop.pacsun.com/', 'http://www.mileskimball.com/', 'http://www.teamexpress.com/', 'http://www.oakley.com/', 'http://www.lumberliquidators.com/', 'http://www.bose.com/', 'http://www.betterworldbooks.com/', 'http://www.americanmusical.com/', 'http://www.bikebandit.com/', 'http://www.joann.com/', 'http://www.folica.com/', 'http://www.softchoice.com/', 'http://www.onestepahead.com/', 'http://www.guess.com/', 'http://www.bedding.com/', 'http://www.fredericks.com/', 'http://www.hammacher.com/', 'http://www.sonicelectronix.com/', 'http://www.americanapparel.net/', 'http://www.propertyroom.com/', 'http://www.eforcity.com/', 'http://www.techforless.com/', 'http://www.christopherandbanks.com/', 'http://www.turn5.com/', 'http://www.armaniexchange.com/', 'http://www.ivgstores.com/', 'http://www.moosejaw.com/', 'http://www.boscovs.com/', 'http://www.dvdempire.com/', 'http://www.ascenaretail.com/', 'http://www.gaiam.com/', 'http://www.babyage.com/', 'http://www.unbeatablesale.com/', 'http://www.cduniverse.com/', 'http://www.levenger.com/', 'http://www.sheplers.com/', 'http://www.jockey.com/', 'http://www.fathead.com/', 'http://www.lillianvernon.com/', 'http://www.petsmart.com/', 'http://www.yesasia.com/us/akira/1000023219-0-0-0-en/info.html', 'http://www.belk.com/', 'http://www.superbiiz.com/', 'http://www.goldeneaglecoin.com/', 'http://www.westmarine.com/', 'http://www.aclens.com/', 'http://www.callawaygolf.com/', 'http://www.diamondnexus.com/', 'http://www.nhl.com/', 'http://www.textbooks.com/', 'http://www.lakeshorelearning.com/', 'http://www.amerimark.com/', 'http://www.nationalgeographic.com/', 'http://www.containerstore.com/', 'http://www.gymboree.com/', 'http://www.ideeli.com/', 'http://www.payless.com/', 'http://www.doversaddlery.com/', 'http://www.istoresinc.com/', 'http://www.columbia.com/', 'http://www.interworldhighway.com/', 'http://www.wetsealinc.com/', 'http://www.chefscatalog.com/', 'http://www.pcrush.com/', 'http://www.meijer.com/', 'http://www.bareescentuals.com/', 'http://www.philips.com/', 'http://www.patagonia.com/', 'http://www.motherswork.com/', 'http://www.jpcycles.com/', 'http://www.directron.com/', 'http://www.rockbottomgolf.com/', 'http://www.forever21.com/', 'http://www.bellacor.com/', 'http://www.discountdance.com/', 'http://casual-male-big-and-tall.destinationxl.com/', 'http://www.1800mattress.com/', 'http://www.davidsbridal.com/', 'http://www.issi-software.com/', 'http://www.babyphat.com/', 'http://en.wikipedia.org/wiki/Playboy_Enterprises', 'http://www.skechers.com/', 'http://www.toolking.com/', 'http://www.lakeside.com/', 'http://www.sheetmusicplus.com/help/privacy-policy', 'http://lizclaiborneinc.com/', 'http://www.leatherup.com/', 'http://www.lifetimebrands.com/Brands/BRANDS,default,pg.html', 'http://www.superwarehouse.com/', 'http://www.jjbuckley.com/', 'http://www.buyonlinenow.com/aboutus.asp', 'http://www.bebe.com/', 'http://www.klwines.com/', 'http://www.chasing-fireflies.com/', 'http://www.charlotterusse.com/', 'http://www.onlinestores.com/', 'http://www.levistrauss.com/', 'http://www.theknot.com/', 'http://www.ulta.com/', 'http://www.restockit.com/e-b-giftware-llc.html', 'http://www.garmin.com/', 'http://www.rugsusa.com/', 'http://www.blissworld.com/', 'http://www.ntsupply.com/', 'http://www.parts-express.com/', 'http://www.thingsremembered.com/', 'http://www.yankeecandle.com/', 'http://www.softmart.com/', 'http://www.menswearhouse.com/', 'http://www.47stphoto.com/', 'http://www.stacksandstacks.com/', 'http://sterlingjewelers.com/', 'http://www.jensonusa.com/', 'http://www.timberland.com/', 'http://www.discountofficeitems.com/', 'http://www.jefferspet.com/', 'http://www.ediets.com/', 'http://www.irobot.com/', 'http://www.smoothfitness.com/', 'http://www.franklinplanner.com/', 'http://www.rugs-direct.com/', 'http://www.beallsinc.com/', 'http://www.rockler.com/', 'http://www.surlatable.com/', 'http://www.sallybeauty.com/', 'http://www.spanx.com/', 'http://www.shopperschoice.com/', 'http://www.lids.com/', 'http://www.aedsuperstore.com/', 'http://www.cpa2biz.com/', 'http://en.wikipedia.org/wiki/National_Basketball_Association', 'http://www.campingworld.com/', 'http://shop.leapfrog.com/leapfrog/', 'http://www.us-mattress.com/', 'http://www.powells.com/', 'http://www.aldoshoes.com/', 'http://www.beautyencounter.com/', 'http://www.lancome-usa.com/', 'http://www.toolfetch.com/', 'http://www.everythingfurniture.com/', 'http://www.mec.ca/', 'http://www.christianbook.com/', 'http://www.biblio.com/', 'http://www.booksamillioninc.com/', 'http://www.printingforless.com/', 'http://www.burberry.com/', 'http://www.thelimited.com/', 'http://www.artbeads.com/', 'http://www.modcloth.com/', 'http://www.actionvillage.com/', 'http://www.evo.com/', 'http://www.calendars.com/', 'http://www.touchofclass.com/', 'http://www.altrec.com/', 'http://www.solidsignal.com/', 'http://www.peruvianconnection.com/', 'http://www.vintagetub.com/', 'http://www.idwholesaler.com/', 'http://www.beachaudio.com/', 'http://www.eileenfisher.com/', 'http://www.kennethcole.com/', 'http://www.myotcstore.com/', 'http://www.discountramps.com/', 'http://www.shoppbs.org/', 'http://www.linkedin.com/company/niche-retail-llc', 'http://www.calumetphoto.com/', 'http://www.bostongreengoods.com/', 'http://skincarerx.com/', 'http://www.ems.com/', 'http://www.worldmarket.com/', 'http://www.3balls.com/', 'http://www.luggageonline.com/', 'http://www.ehobbies.com/', 'http://www.stroll.com/aboutus', 'http://store.nascar.com/', 'http://finfeatherfuroutfitters.com/', 'http://www.brickhousesecurity.com/', 'http://www.netdirectmerchants.com/', 'http://www.onewayfurniture.com/', 'http://www.danskin.com/', 'http://www.entertainmentearth.com/', 'http://www.theparkcatalog.com/', 'http://cableorganizer.com/', 'http://www.ashford.com/', 'http://www.bagborroworsteal.com/', 'http://www.jackthreads.com/', 'http://www.coffeeforless.com/', 'http://www.royaldiscount.com/', 'http://www.limogesjewelry.com/', 'http://www.honeybaked.com/', 'http://www.fatbraintoys.com/', 'http://www.scentiments.com/', 'http://www.hamgo.com/', 'http://www.gifttree.com/', 'http://www.trollandtoad.com/', 'http://www.myjewelrybox.com/', 'http://www.kingarthurflour.com/', 'http://www.gourmetgiftbaskets.com/', 'http://www.sportsgiant.com/', 'http://www.toolup.com/', 'http://www.titlenine.com/', 'http://www.goldspeed.com/', 'http://www.marcecko.com/', 'http://www.nfm.com/', 'http://www.carters.com/Corporate-Site-Home-Page/corporateHome,default,pg.html', 'http://www.envelopes.com/', 'http://www.air-n-water.com/', 'http://www.drillspot.com/', 'http://www.bootbarn.com/', 'http://www.batteries.com/', 'http://www.autohausaz.com/', 'http://www.bettymills.com/', 'http://alice.com/', 'http://www.norris-ecommerce-management.com/', 'http://www.wwe.com/', 'http://www.inetvideo.com/', 'http://www.ritzpix.com/', 'http://salaryquest.com/company-az3-inc-dba-bcbg-max-azria-salary/', 'http://tupperwarebrands.com/', 'http://www.wisteria.com/', 'http://www.conns.com/', 'http://www.batteriesplus.com/', 'http://www.cwdkids.com/', 'http://www.airsplat.com/', 'http://www.firststreetonline.com/', 'http://costumecraze.com/', 'http://everything2go.com/', 'http://stores.ebay.com/Dyscern', 'http://www.novica.com/', 'http://www.4electronicwarehouse.com/', 'http://www.appliancezone.com/', 'http://www.maxfurniture.com/', 'http://www.jackssmallengines.com/', 'http://organize.com/', 'http://www.whiteflash.com/', 'http://www.mymms.com/', 'http://www.musicnotes.com/', 'http://www.summitonline.com/', 'http://www.bulbs.com/', 'http://www.buildabear.com/', 'http://www.acehardware.com/', 'http://www.balsambrands.com/', 'http://www.gumps.com/', 'http://www.hobbytron.com/', 'http://www.ustoy.com/', 'http://www.magnetstreet.com/' ]

  # use something like this for crawling a file system:
  # cfg.crawler.start_urls = [ 'file:///home/hnh/workspace/chatid/script/urls.txt' ]
  # beware, mixing file and http crawling is not possible and might result in
  # unpredictable results.

  # limit the crawl to these hosts. The crawler will never
  # follow any links pointing to hosts other than those given here.
  # ignored for file system crawling
  # cfg.crawler.include_hosts = [ 'www.example.com' ]

  # this is the path where the index will be stored
  # caution, existing contents of this directory will be deleted!
  cfg.index.path        = '/home/hnh/workspace/chatid/tmp/index'

  ##################################################################
  # options you might want to set, the given values are the defaults

  # set to true to get stack traces on errors
  # cfg.verbose = false
  
  # content extraction options
  cfg.content_extraction = OpenStruct.new(
  
    # HPRICOT configuration
    # hpricot is the html parsing lib used by RDig. See 
    # http://code.whytheluckystiff.net/hpricot for usage information.
    # Any code blocks given for content selection will receive an Hpricot instance
    # containing the full page content when called.
    :hpricot      => OpenStruct.new(
      # css selector for the element containing the page title
      :title_tag_selector => 'title', 
      # might also be a proc returning either an element or a string:
      # :title_tag_selector => lambda { |hpricot_doc| ... }
      :content_tag_selector => 'body'
      # might also be a proc returning either an element or a string:
      # :content_tag_selector => lambda { |hpricot_doc| ... }
    )
  )

  # crawler options
  
  # Notice: for file system crawling the include/exclude_document patterns are 
  # applied to the full path of _files_ only (like /home/bob/test.pdf), 
  # for http to full URIs (like http://example.com/index.html).
  
  # nil (include all documents) or an array of Regexps 
  # matching the URLs you want to index.
  # cfg.crawler.include_documents = nil

  # nil (no documents excluded) or an array of Regexps 
  # matching URLs not to index.
  # this filter is used after the one above, so you only need
  # to exclude documents here that aren't wanted but would be 
  # included by the inclusion patterns.
  # cfg.crawler.exclude_documents = nil
 
  # number of document fetching threads to use. Should be raised only if 
  # your CPU has idle time when indexing.
  cfg.crawler.num_threads = 4
  # suggested setting for file system crawling:
  # cfg.crawler.num_threads = 1

  # maximum number of http redirections to follow
  # cfg.crawler.max_redirects = 5

  # number of seconds to wait with an empty url queue before 
  # finishing the crawl. Set to a higher number when experiencing incomplete
  # crawls on slow sites. Don't set to 0, even when crawling a local fs.
  # cfg.crawler.wait_before_leave = 10

  # limit the crawling depth. Default: nil (unlimited)
  # Set to 0 to only index the start_urls.
  cfg.crawler.max_depth = nil
  
  # http proxy configuration
  # proxy url
  # cfg.crawler.http_proxy = nil
  #
  # proxy username
  # cfg.crawler.http_proxy_user = nil
  # proxy password
  # cfg.crawler.http_proxy_pass = nil

  # indexer options

  # create a new index on each run. Will append to the index if false. Use when
  # building a single index from multiple runs, e.g. one across a website and the
  # other a tree in a local file system
  # cfg.index.create = true

  # rewrite document uris before indexing them. This is useful if you're
  # indexing on disk, but the documents should be accessible via http, e.g. from 
  # a web based search application. By default, no rewriting takes place.
  # example:
  # cfg.index.rewrite_uri = lambda { |uri| 
  #   uri.path.gsub!(/^\/base\//, '/virtual_dir/')
  #   uri.scheme = 'http'
  #   uri.host = 'www.mydomain.com'
  # }
  
end
