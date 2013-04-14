# coding: utf-8
class ContactMailer < ActionMailer::Base

attr_accessor :name, :email, :body

	default to: "aaronmcintyre@appdomum.com",
	from: "adc@appdomum.com"

	headers = { 'Return-Path' => 'adc@appdomum.com'}
  def send_email(user_info)
  	@user_info = user_info

  	mail(
  		to: "aaronmcintyre@appdomum.com",
      subject: "Contact Form",
      from: "MyApp <adc@appdomum.com>",
      return_path: "adc@appdomum.com",
      date: Time.now,
      content_type: "text/html"
  		)
  end
end
