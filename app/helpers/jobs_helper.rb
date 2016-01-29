module JobsHelper
  def share_url(jobid)
    #"http://talocity.in/candidate_jobs/#{jobid}/inner_jd"
    "http://localhost:3000/"
  end

  def facebook_link_tag(share_id)
    html = []
    html << "<a href='https://www.facebook.com/dialog/share?"
    html << "app_id=#{ENV['FACEBOOK_KEY']}&"
    html << "display=popup&"
    html << "href=#{share_url(share_id)}&"
    html << "redirect_uri=http://localhost:3000/"
    html << "class='icoFacebook' data-popup=true title='Facebook'><i class='fa fa-facebook'></i></a>"
    raw html.join
  end

  def linkedin_link_tag(share_id)
    html = []
    html << "<a href='https://www.linkedin.com/shareArticle?"
    html << "mini=true&"
    html << "url=#{share_url(share_id)}&"
    html << "source=http://talocity.in'"
    html << " class='icoLinkedin' data-popup=true title='Linkedin'><i class='fa fa-linkedin'></i></a>"
    raw html.join
  end

  def google_plus_link_tag(share_id)
    html = []
    html << "<a href='https://plus.google.com/share?"
    html << "url=#{share_url(share_id)}'"
    html << "  class='icoGoogle' title='Google +'><i class='fa fa-google-plus'></i></a>"
    raw html.join
  end
end
