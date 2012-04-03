desc "Get Brampton agents"
task :get_brampton_agents => :environment do

  require 'rubygems'
  require 'mechanize'
  require 'nokogiri'

  operator = Mechanize.new
  page = operator.get('http://www.agentlocator.ca/tag/Brampton')
  n = 1
  
  loop do
    page.search(".AgentListSingle").each do |agent|
      full_name = agent.search(".AgentName").text.strip
      name = full_name.split(' ')
      first_name = name.first
      last_name = name.last
      
      company = agent.search(".OfficeAddress h1").text.strip
      
      number_field = agent.at(".PhoneAndWebsite p").text.strip
      phone = number_field.split('ffice Phone : ')
      office_phone = phone.last
      
      
      Stub.create!(:first_name => first_name, :last_name => last_name, :company => company, :phone => office_phone, :city=> "Brampton")
    end
    
    n = n + 1
    
    if link = page.link_with(:text => "#{n}")
      page = link.click
    else
      break
    end
  end
  
end