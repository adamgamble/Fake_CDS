class CdsController < ApplicationController

  def index
    string = %Q{<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"><soap:Body><soap:Fault><soap:Code><soap:Value>soap:Receiver</soap:Value></soap:Code><soap:Reason><soap:Text xml:lang="en">Server was unable to process request. ---&gt; Data at the root level is invalid. Line 1, position 1.</soap:Text></soap:Reason><soap:Detail /></soap:Fault></soap:Body></soap:Envelope>}
    Rails.logger.warn string
    render :text => string, :content_type => "application/soap+xml; charset=utf-8"
  end

  def balance_inquiry_by_customer_xml
    render :text => "test"
  end
end
