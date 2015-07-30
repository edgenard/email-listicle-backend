require 'dotenv'
Dotenv.load
Bundler.require

require 'grape'
require_relative "lib/base"

def email_content
<<-EMAIL
"<div dir=\"ltr\"><br><div class=\"gmail_quote\">---------- Forwarded message ----------<br>From: <b class=\"gmail_sendername\">Ruby Weekly</b> <span dir=\"ltr\">&lt;<a href=\"mailto:rw@peterc.org\">rw@peterc.org</a>&gt;</span><br>Date: Thu, Jul 2, 2015 at 11:27 AM<br>Subject: This week&#39;s Ruby news, issue 253<br>To: <a href=\"mailto:brycebrycebaby@gmail.com\">brycebrycebaby@gmail.com</a><br><br><br><u></u><div style=\"margin:0\"><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"font-family:&#39;helvetica neue&#39;,helvetica,arial,sans-serif;font-size:14px;line-height:20px;color:#333\"><tbody><tr><td align=\"center\" valign=\"top\"><table border=\"0\" width=\"670\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse\"><tbody><tr><td style=\"padding-top:6px;padding-bottom:6px;font-size:12px;text-align:center;color:#555\"><span>This week&#39;s Ruby and Rails news<br></span><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=9d70202354&amp;e=59c980d683\" style=\"color:#dd0000\" target=\"_blank\">Read this e-mail on the Web</a></td></tr></tbody></table><table border=\"0\" width=\"670\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse\"><tbody><tr><td style=\"background-color:#dd0000\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\"><tbody><tr><td align=\"left\" style=\"padding:6px 12px\"><table align=\"left\" width=\"50%\"><tbody><tr><td><span style=\"line-height:36px;font-size:23px;color:#dd0000;font-weight:bold;color:#ffffff\">Ruby Weekly</span></td></tr></tbody></table><table align=\"left\" style=\"text-align:right\" width=\"50%\"><tbody><tr><td><span style=\"font-size:14px;line-height:36px;font-weight:normal;color:#ffffff\">\nIssue 253 — July 2, 2015\n</span></td></tr></tbody></table></td></tr></tbody></table></td></tr><tr><td style=\"padding:16px 12px 12px 12px\" align=\"left\"><table width=\"500\" align=\"left\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse\"><tbody><tr><td><div style=\"color:#dd0000;font-weight:normal;font-size:12px;line-height:14px;text-transform:uppercase;margin-top:2px;font-family:verdana,arial,sans-serif\">\nAndré Arko\n</div><div style=\"font-size:18px;margin:2px 0px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=1bb06d3aa9&amp;e=59c980d683\" title=\"bundler.io/blog/2015/06/24/version-1-10-released.html\" style=\"display:block;color:#0055bb;line-height:24px;text-decoration:underline;font-weight:normal\" target=\"_blank\">Bundler 1.10 Released</a></div><div style=\"font-size:13px;line-height:17px;margin-top:4px\">\nThe new ‘lock’ command resolves and creates a Gemfile.lock without installing any gems; you can turn off install messages (for, say, HTTParty); and, controversially, the Bundler version used is now stored in Gemfile.lock (and they explain why).\n</div><br></td></tr></tbody></table><table width=\"140\" align=\"left\"><tbody><tr><td style=\"text-align:center\"></td></tr></tbody></table><br clear=\"all\" style=\"clear:both\"><table width=\"500\" align=\"left\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse\"><tbody><tr><td><div style=\"color:#dd0000;font-weight:normal;font-size:12px;line-height:14px;text-transform:uppercase;margin-top:2px;font-family:verdana,arial,sans-serif\">\nOfficial Ruby Blog\n</div><div style=\"font-size:18px;margin:2px 0px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=0a4c98a29d&amp;e=59c980d683\" title=\"weblog.rubyonrails.org/2015/6/26/Rails-4-2-3-and-4-1-12-have-been-released/\" style=\"display:block;color:#0055bb;line-height:24px;text-decoration:underline;font-weight:normal\" target=\"_blank\">Rails 4.2.3 and 4.1.12 Released</a></div><br></td></tr></tbody></table><table width=\"140\" align=\"left\"><tbody><tr><td style=\"text-align:center\"></td></tr></tbody></table><br clear=\"all\" style=\"clear:both\"><table width=\"500\" align=\"left\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse\"><tbody><tr><td><div style=\"color:#dd0000;font-weight:normal;font-size:12px;line-height:14px;text-transform:uppercase;margin-top:2px;font-family:verdana,arial,sans-serif\">\nPhil Nash\n</div><div style=\"font-size:18px;margin:2px 0px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=6f6c026c54&amp;e=59c980d683\" title=\"www.twilio.com/blog/2015/06/you-too-can-tweet-like-larry-king.html\" style=\"display:block;color:#0055bb;line-height:24px;text-decoration:underline;font-weight:normal\" target=\"_blank\">Tweet Like Larry King with The Twilio and Twitter API</a></div><div style=\"font-size:13px;line-height:17px;margin-top:4px\">\nSupposedly Larry King tweets by calling a number and dictating what he wants to say. This tutorial ties together Ruby and Twilio to let you do the same.\n</div><br></td></tr></tbody></table><table width=\"140\" align=\"left\"><tbody><tr><td style=\"text-align:center\"></td></tr></tbody></table><br clear=\"all\" style=\"clear:both\"><table width=\"500\" align=\"left\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse\"><tbody><tr><td><div style=\"color:#dd0000;font-weight:normal;font-size:12px;line-height:14px;text-transform:uppercase;margin-top:2px;font-family:verdana,arial,sans-serif\">\nRaygun\n <span style=\"background-color:#ffff99;color:#999900;font-weight:normal;padding:1px 5px 0px 5px\">Sponsored</span></div><div style=\"font-size:18px;margin:2px 0px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=9765b88476&amp;e=59c980d683\" title=\"raygun.io/?utm_source=link&amp;utm_medium=email-ruby-weekly&amp;utm_campaign=cooperp\" style=\"display:block;color:#0055bb;line-height:24px;text-decoration:underline;font-weight:normal\" target=\"_blank\">Only 16% of people will try a failing app more than twice</a></div><div style=\"font-size:13px;line-height:17px;margin-top:4px\">Find bugs before your users do with Raygun - Build healthy, reliable software and give your team an unbeatable error tracking workflow.</div><br></td></tr></tbody></table><table width=\"140\" align=\"left\"><tbody><tr><td style=\"text-align:center\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=8235429789&amp;e=59c980d683\" target=\"_blank\"><img src=\"http://s3.amazonaws.com/nlga/uploads/item/image/39448/i.png\" style=\"border:0\" width=\"90\" height=\"103\" alt=\"Raygun\"></a></td></tr></tbody></table><br clear=\"all\" style=\"clear:both\"><table width=\"500\" align=\"left\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse\"><tbody><tr><td><div style=\"color:#dd0000;font-weight:normal;font-size:12px;line-height:14px;text-transform:uppercase;margin-top:2px;font-family:verdana,arial,sans-serif\">\nEmcien, Inc.\n</div><div style=\"font-size:18px;margin:2px 0px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=993e934fc6&amp;e=59c980d683\" title=\"github.com/emcien/iso_latte\" style=\"display:block;color:#0055bb;line-height:24px;text-decoration:underline;font-weight:normal\" target=\"_blank\">IsoLatte: Isolate a Block&#39;s Execution into a Subprocess</a></div><div style=\"font-size:13px;line-height:17px;margin-top:4px\">\nIsoLatte runs a block of code in a separate process and passes exceptions back to the original process through a pipe.\n</div><br></td></tr></tbody></table><table width=\"140\" align=\"left\"><tbody><tr><td style=\"text-align:center\"></td></tr></tbody></table><br clear=\"all\" style=\"clear:both\"><table width=\"500\" align=\"left\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse\"><tbody><tr><td><div style=\"color:#dd0000;font-weight:normal;font-size:12px;line-height:14px;text-transform:uppercase;margin-top:2px;font-family:verdana,arial,sans-serif\">\nRichard Schneeman\n</div><div style=\"font-size:18px;margin:2px 0px\"><a href=\"http://rubyweekly.us1.list-manage2.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=e39dbdd768&amp;e=59c980d683\" title=\"www.sitepoint.com/license-to-sigkill/\" style=\"display:block;color:#0055bb;line-height:24px;text-decoration:underline;font-weight:normal\" target=\"_blank\">License to SIGKILL</a></div><div style=\"font-size:13px;line-height:17px;margin-top:4px\">\nA look at Unix signals, what Ruby does when it receives various types of signal (e.g. SIGTERM) and how you can trap a signal yourself.\n</div><br></td></tr></tbody></table><table width=\"140\" align=\"left\"><tbody><tr><td style=\"text-align:center\"></td></tr></tbody></table><br clear=\"all\" style=\"clear:both\"><table width=\"500\" align=\"left\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse\"><tbody><tr><td><div style=\"color:#dd0000;font-weight:normal;font-size:12px;line-height:14px;text-transform:uppercase;margin-top:2px;font-family:verdana,arial,sans-serif\">\nRadek Pazdera\n</div><div style=\"font-size:18px;margin:2px 0px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=a790616638&amp;e=59c980d683\" title=\"radek.io/2015/06/29/catpix/\" style=\"display:block;color:#0055bb;line-height:24px;text-decoration:underline;font-weight:normal\" target=\"_blank\">Printing Images in the Terminal with 9 lines of Ruby</a></div><div style=\"font-size:13px;line-height:17px;margin-top:4px\">\nQuick, quirky and fun. Uses RMagick and the <a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=70d18d20c9&amp;e=59c980d683\" target=\"_blank\">tco</a> gem to read pixels then output blocks of the same color on the terminal.\n</div><br></td></tr></tbody></table><table width=\"140\" align=\"left\"><tbody><tr><td style=\"text-align:center\"></td></tr></tbody></table><br clear=\"all\" style=\"clear:both\"><table width=\"500\" align=\"left\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse\"><tbody><tr><td><div style=\"color:#dd0000;font-weight:normal;font-size:12px;line-height:14px;text-transform:uppercase;margin-top:2px;font-family:verdana,arial,sans-serif\">\nReddit\n</div><div style=\"font-size:18px;margin:2px 0px\"><a href=\"http://rubyweekly.us1.list-manage1.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=3+ [ ]2a6c1ce&amp;e=59c980d683\" title=\"www.reddit.com/r/ruby/comments/29hr4x/whats_youre_favorite_ruby_trick_or_quirk_that/\" style=\"display:block;color:#0055bb;line-height:24px;text-decoration:underline;font-weight:normal\" target=\"_blank\">Favorite Ruby Tricks or Quirks Most Rubyists Don&#39;t Know About</a></div><div style=\"font-size:13px;line-height:17px;margin-top:4px\">\nOne year ago we posted this and I wanted to revisit it as it&#39;s packed with cool stuff. It&#39;s a collection of interesting Ruby tricks from the folks over at the /r/ruby sub-Reddit.\n</div><br></td></tr></tbody></table><table width=\"140\" align=\"left\"><tbody><tr><td style=\"text-align:center\"></td></tr></tbody></table><br clear=\"all\" style=\"clear:both\"><table width=\"500\" align=\"left\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse\"><tbody><tr><td><div style=\"color:#dd0000;font-weight:normal;font-size:12px;line-height:14px;text-transform:uppercase;margin-top:2px;font-family:verdana,arial,sans-serif\">\nRuby/Logs\n</div><div style=\"font-size:18px;margin:2px 0px\"><a href=\"http://rubyweekly.us1.list-manage1.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=5e2830dc28&amp;e=59c980d683\" title=\"rubylogs.com/writing-rack-middleware/\" style=\"display:block;color:#0055bb;line-height:24px;text-decoration:underline;font-weight:normal\" target=\"_blank\">How to Write Rack Middleware</a></div><div style=\"font-size:13px;line-height:17px;margin-top:4px\">\nRack forms the foundation for most Ruby-based webapps and if you’re not familiar with creating ‘middleware’ it’s worth picking it up.\n</div><br></td></tr></tbody></table><table width=\"140\" align=\"left\"><tbody><tr><td style=\"text-align:center\"></td></tr></tbody></table><br clear=\"all\" style=\"clear:both\"><p style=\"color:#dd0000;font-size:18px;font-weight:normal;margin-top:8px;margin-bottom:10px\">Jobs</p><ul style=\"padding-left:18px;margin-top:10px;list-style-type:square\"><li style=\"color:#dd0000;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=+ [x]c16c027&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:18px;font-weight:normal\" target=\"_blank\">Experienced Software Engineer at Loco2 (Remote-working)</a><span style=\"font-size:12px;color:#666666\">Loco2 uses Ruby to make booking a train as simple as booking a flight. Our small passionate team is scaling fast. Join us as we continue wrestling with the complexity of the European rail network.</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\">Loco2</span></li><li style=\"color:#dd0000;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=8d7db861ba&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:18px;font-weight:normal\" target=\"_blank\">Ruby on Rails Developer at Asynchrony Labs (St Louis, MO)</a><span style=\"font-size:12px;color:#666666\">If you like to solve interesting problems through technology, then you would love the culture here at Asynchrony.</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\">Asynchrony Labs</span></li><li style=\"color:#dd0000;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage1.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=3379a9e1ea&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:18px;font-weight:normal\" target=\"_blank\">Ruby Engineer at Fluxx (San Francisco, CA)</a><span style=\"font-size:12px;color:#666666\">Fluxx is a fast-growing start-up revolutionizing how Foundations and Non-Profits work together. They&#39;re looking for a developer with over 5 years of experience with at least 3 in Ruby and Rails.</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\">Fluxx</span></li></ul><p style=\"color:#dd0000;font-size:18px;font-weight:normal;margin-top:24px;margin-bottom:10px\">In brief</p><ul style=\"padding-left:18px;margin-top:10px;list-style-type:square\"><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=6affb65d84&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">How to Build a Rails 5 API Only and Ember Application</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#00bb00;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">tutorial</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>Santiago Pastorino </span></li><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=a72299cea1&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">Lazy Image Creation with Carrierwave</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#00bb00;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">tutorial</span> <br><span style=\"font-size:12px;color:#666666\">\nLazily creating alternate versions of images only when they’re needed.\n</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>FireDev </span></li><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage1.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=8ebd01e326&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">Advanced Ruby Hash Techniques</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#00bb00;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">tutorial</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>Starr Horne </span></li><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=a9bca1ecea&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">Organizing JavaScript in a Rails Application with Turbolinks</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#00bb00;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">tutorial</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>Brandon Hilkert </span></li><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=8f91c9587e&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">Start Managing Your Ruby Logs &amp; Prevent Errors For Free</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#0077cc;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">tools</span> <br><span style=\"font-size:12px;color:#666666\">Discover how you can find the root cause for specific JavaScript errors before they become problems. Start free.</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>Loggly   <span style=\"background-color:#ffff99;color:#999900;font-weight:normal;padding:1px 5px 0px 6px\">Sponsored</span></span></li><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=a49df092a5&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">How to Print and Mail Letter with Ruby (and Lob)</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#00bb00;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">tutorial</span> <br><span style=\"font-size:12px;color:#666666\">\nLob is a API-based service that will print and mail physical letters.\n</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>Russell Taylor </span></li><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=c856b59417&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">Crafting Your First Pry Plugin</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#00bb00;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">tutorial</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>Danny Guinther </span></li><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=8187866895&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">Creating Easy, Readable Attributes with ActiveRecord Enums</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#00bb00;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">tutorial</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>Justin Weiss </span></li><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=8e96efe655&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">How to Explode Multivalued Attributes with Kiba ETL?</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#00bb00;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">tutorial</span> <br><span style=\"font-size:12px;color:#666666\">\nA series well worth reading if importing, transforming and exporting data in Ruby is something you need to do.\n</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>Thibaut Barrere </span></li><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=f2102f22bd&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">Building a Ruby Gem in 2015</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#00bb00;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">tutorial</span> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#aa6600;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">opinion</span> <br><span style=\"font-size:12px;color:#666666\">\nSome best practices to consider.\n</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>Matt Brictson </span></li><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=1c6ca5c138&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">A Look at Rails 5</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#aa6600;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">opinion</span> <br><span style=\"font-size:12px;color:#666666\">\nQuick summaries of a few key points.\n</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>Engine Yard </span></li><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage2.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=f3ae888a8d&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">Opal Playground: Play With Writing Ruby Code for the Browser</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#0077cc;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">tools</span> <br><span style=\"font-size:12px;color:#666666\">\nOpal is a Ruby to JavaScript compiler which makes it possible to write browser based interactions in Ruby.\n</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>Forrest Chang </span></li><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage1.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=bd1e7fc047&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">RedisGreen: fast, reliable Redis hosting and analytics</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#0077cc;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">tools</span> <br><span style=\"font-size:12px;color:#666666\">RedisGreen provides the performance, analytics and support your app needs. Get started today, no credit card required.</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>RedisGreen   <span style=\"background-color:#ffff99;color:#999900;font-weight:normal;padding:1px 5px 0px 6px\">Sponsored</span></span></li><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage2.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=687ef71173&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">Squib: A Ruby DSL for Prototyping Card Games</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#00bbbb;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">code</span> <br><span style=\"font-size:12px;color:#666666\">\nGood documentation and the output is pretty nice.\n</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>Andy Meneely </span></li><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=e267365912&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">SimplestStatus: An Enhanced Enum Implementation for Any Version of Rails</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#00bbbb;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">code</span> <br><span style=\"font-size:12px;color:#666666\">\n“SimplestStatus’s biggest advantage over ‘enum’ is that it doesn’t depend on a certain version of Rails.”\n</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>Ryan Stenberg </span></li><li style=\"color:#ee5533;margin-bottom:16px;font-size:16px;line-height:16px\"><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=055d161673&amp;e=59c980d683\" style=\"color:#0055bb;margin-right:4px;line-height:20px;font-weight:normal\" target=\"_blank\">Cognac: Amazon S3 Uploading with CORS Support</a> <span style=\"font-size:12px;padding:1px 3px;text-transform:uppercase;background-color:#00bbbb;color:#fff;font-weight:normal;font-family:verdana,arial,sans-serif\">code</span> <span style=\"color:#dd0000;font-weight:normal;font-size:12px;text-transform:uppercase;font-family:verdana,arial,sans-serif\"><br>Bala Paranj </span></li></ul></td></tr><tr><td bgcolor=\"#f4f4f4\" style=\"font-family:verdana,helvetica,arial,sans-serif;text-align:left;padding-top:12px;padding-left:12px;padding-right:12px;padding-bottom:12px\"><p style=\"line-height:15px;font-size:11px;margin-top:0\">Curated by <a href=\"http://rubyweekly.us1.list-manage1.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=e5946c8b28&amp;e=59c980d683\" style=\"color:#dd0000\" target=\"_blank\">Peter Cooper</a> and published by <a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=32f6dc151d&amp;e=59c980d683\" style=\"color:#dd0000\" target=\"_blank\">Cooper Press</a>.<br>Send feedback by simply replying to this mail.<br>Want to sponsor an issue? See our <a href=\"http://rubyweekly.us1.list-manage1.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=e2335dd955&amp;e=59c980d683\" style=\"color:#666666\" target=\"_blank\">media kit.</a><br>Want to post a job? E-mail us or <a href=\"http://rubyweekly.us1.list-manage2.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=15ebd573b1&amp;e=59c980d683\" style=\"color:#666666\" target=\"_blank\">use our self-serve system.</a></p><p style=\"font-size:14px\"><a href=\"http://rubyweekly.us1.list-manage.com/unsubscribe?u=0618f6a79d6bb9675f313ceb2&amp;id=d9d24eba5b&amp;e=59c980d683&amp;c=90899ecf00\" style=\"color:#dd0000\" target=\"_blank\">Unsubscribe</a> : <a href=\"http://rubyweekly.us1.list-manage1.com/profile?u=0618f6a79d6bb9675f313ceb2&amp;id=d9d24eba5b&amp;e=59c980d683\" style=\"color:#dd0000\" target=\"_blank\">Change email address</a> : <a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=924ba40fa6&amp;e=59c980d683\" style=\"color:#dd0000\" target=\"_blank\">Read this issue on the Web</a></p><p style=\"font-size:11px;line-height:15px\">© Cooper Press Ltd. Office 30, Lincoln Way, Louth, LN11 0LS, UK<br><a href=\"http://rubyweekly.us1.list-manage.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=4b3629e4c9&amp;e=59c980d683\" style=\"color:#666666\" target=\"_blank\">Email policy</a> <a href=\"http://rubyweekly.us1.list-manage1.com/track/click?u=0618f6a79d6bb9675f313ceb2&amp;id=a1c560f817&amp;e=59c980d683\" style=\"color:#666666\" target=\"_blank\">Privacy policy</a></p></td></tr></tbody></table></td></tr></tbody></table><img src=\"http://rubyweekly.us1.list-manage.com/track/open.php?u=0618f6a79d6bb9675f313ceb2&amp;id=90899ecf00&amp;e=59c980d683\" height=\"1\" width=\"1\"></div></div><br></div>\n\n",
EMAIL
end

module EmailListicle
  class API < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api

    resource :email_links do
      desc "Lists un-seen links"
      get :all do
        EmailLink.undecided
      end

      desc "fetches unread stories"
      get :unread do
        EmailLink.unread
      end

      desc "Parse and store links from an email"
      post do
        msgs = JSON.parse(params['mandrill_events'])

        msgs.each do |json|
          pl = ParseEmailLinks.new(json['msg']['html'])
          pl.save_parsed_links
        end
      end

      desc "adds link id to reading list"
      post :add_to_list do
        EmailLink.add_to_reading_list(id)
      end
    end
  end
end
