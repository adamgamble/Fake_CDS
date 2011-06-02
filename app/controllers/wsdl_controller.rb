class WsdlController < ApplicationController
  def index
    wsdl_text = %Q{<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://192.168.3.140:3000" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://192.168.3.140:3000" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://192.168.3.140:3000">
      <s:element name="CBWSStatusXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="StatusCheck" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="WSUser">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="EmailAddress" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="UserName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="APIKey" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CreatedBy" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="s:boolean" />
          <s:element minOccurs="1" maxOccurs="1" name="IsLocked" type="s:boolean" />
        </s:sequence>
      </s:complexType>
      <s:element name="CBWSStatusXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CBWSStatusXMLResult" type="tns:CBWSStatusXML" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CBWSStatusXML">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="StatusResponse" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="ReplaceLostCardXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="OldPAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="NewPan" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardHolderID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LastName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ValidationData" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ReplaceLostCardXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ReplaceLostCardXMLResult" type="tns:CardStatus" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CardStatus">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AccountID10" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AccountID20" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CustomerID" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Status" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="HoldRspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="HoldStatus" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="DateActivated" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ExpireDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CardholderName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AvailableBalance" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LedgerBalance" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="ReorderPersonalizedCardXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomerID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardProductID" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="GenerateNewPAN" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ReorderPersonalizedCardXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ReorderPersonalizedCardXMLResult" type="tns:CardReorder" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CardReorder">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AccountID10" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AccountID20" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CustomerID" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="OrderPersonalizedCardOFACXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="FirstName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Initial" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LastName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="TelNr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="MobileNr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EmailAddress" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalAddress1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalAddress2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalRegion" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SSN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="DOB" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ValidationData" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="IDType" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="IDValue" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ValidationQuestion" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardProductID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="OrderPersonalizedCardOFACXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="OrderPersonalizedCardOFACXMLResult" type="tns:PersonalizedCard" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="PersonalizedCard">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AccountID10" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AccountID20" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CustomerID" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="OFAC" type="tns:LexNex" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="LexNex">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="OFACMatch" type="s:boolean" />
          <s:element minOccurs="1" maxOccurs="1" name="CIPPassed" type="s:boolean" />
          <s:element minOccurs="1" maxOccurs="1" name="CIPRating" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="CIPMessage" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="OFACMessage" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RiskIndicatorMsgs" type="tns:ArrayOfAnyType" />
          <s:element minOccurs="1" maxOccurs="1" name="IDType" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="IDValue" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfAnyType">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="anyType" nillable="true" />
        </s:sequence>
      </s:complexType>
      <s:element name="OrderPersonalizedCardByBINXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="FirstName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Initial" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LastName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="TelNr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="MobileNr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EmailAddress" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalAddress1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalAddress2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalRegion" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SSN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="DOB" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ValidationData" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="IDType" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="IDValue" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ValidationQuestion" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardProductID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardBIN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="FincoNr" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="OrderPersonalizedCardByBINXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="OrderPersonalizedCardByBINXMLResult" type="tns:PersonalizedCard" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CreateCardHolderOFACXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="FirstName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Initial" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LastName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="TelNr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="MobileNr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EmailAddress" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalAddress1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalAddress2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalRegion" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SSN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="DOB" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ValidationData" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="IDType" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="IDValue" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ValidationQuestion" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardProductID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CreateCardHolder">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="Status" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="HoldRspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="HoldStatus" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="DateActivated" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ExpireDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CardholderName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="OFAC" type="tns:LexNex" />
        </s:sequence>
      </s:complexType>
      <s:element name="CreateCardHolderOFACXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CreateCardHolderOFACXMLResult" type="tns:CreateCardHolder" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ResetPasswordXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="NewPswd" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ConfirmNewPswd" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="PswdReset">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Username" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="OldPswd" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="NewPswd" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ConfirmNewPswd" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="ResetPasswordXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ResetPasswordXMLResult" type="tns:PswdReset" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CardActivateXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomerID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Last4SSN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Last4Phone" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="First4DOB" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CardActivation">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PANIdentifier" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="CardActivateXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CardActivateXMLResult" type="tns:CardActivation" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="BalanceInquiryXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="BalanceInquiry">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AvailableBalance" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LedgerBalance" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="BalanceInquiryXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="BalanceInquiryXMLResult" type="tns:BalanceInquiry" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="BalanceInquiryByCustomerXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomerID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="BalanceInquiryByCustomerXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="BalanceInquiryByCustomerXMLResult" type="tns:BalanceInquiry" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CardStatusXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AccountID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomerID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CardStatusXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CardStatusXMLResult" type="tns:CardStatus" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ActivateSavingsXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="SavingsActivation">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AccountID10" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="ActivateSavingsXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ActivateSavingsXMLResult" type="tns:SavingsActivation" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="OrderTaxPersoXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomerID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CardActivate">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CustomerID" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="OrderTaxPersoXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="OrderTaxPersoXMLResult" type="tns:CardActivate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Card2CTSEnrollXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="CardEnroll" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="Card2CTS">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="Card2CTSStatus" type="s:int" />
        </s:sequence>
      </s:complexType>
      <s:element name="Card2CTSEnrollXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Card2CTSEnrollXMLResult" type="tns:Card2CTS" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="TransferFundsXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ToAccountType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="FromAccountType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Amount" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientStreet" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientState" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="TransferFundsMemo" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="TransferFunds">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AvailableBalance10" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AvailableBalance20" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TranNr" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AuthNum" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="TransferFundsXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="TransferFundsXMLResult" type="tns:TransferFunds" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CardInquiryXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CardInquiry">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="FirstName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Initial" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LastName" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TelNr" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="MobileNr" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="EmailAddress" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PostalAddress1" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PostalAddress2" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PostalCity" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PostalRegion" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PostalCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="DOB" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="SSN" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ValidationData" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="CardInquiryXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CardInquiryXMLResult" type="tns:CardInquiry" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CardInquiryXMLtest">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CardInquiryXMLtestResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CardInquiryXMLtestResult" type="tns:CardInquiry" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CardUpdateStatusXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="HoldRspCode" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CardUpdateStatus">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="HoldRspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TranNr" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AuthNum" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="CardUpdateStatusXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CardUpdateStatusXMLResult" type="tns:CardUpdateStatus" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="UpdateCardHolderXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="TelNr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="MobileNr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EmailAddress" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalAddress1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalAddress2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalRegion" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SSN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="DOB" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="UpdateCardHolder">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TelNr" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="MobileNr" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="EmailAddress" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PostalAddress1" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PostalAddress2" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PostalCity" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PostalRegion" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PostalCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="SSN" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="DOB" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="UpdateCardHolderXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UpdateCardHolderXMLResult" type="tns:UpdateCardHolder" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CreateCardHolderXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="FirstName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Initial" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LastName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="TelNr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="MobileNr" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EmailAddress" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalAddress1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalAddress2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalRegion" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PostalCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="SSN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="DOB" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ValidationData" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ValidationQuestion" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardProductID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CreateCardHolderXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CreateCardHolderXMLResult" type="tns:CreateCardHolder" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CardAdjustmentXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AmountType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Amount" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientStreet" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientState" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardAdjustmentType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardAdjustmentMemo" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CardAdjustment">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AvailableBalance" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LedgerBalance" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="TranNr" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="AuthNum" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="CardAdjustmentXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CardAdjustmentXMLResult" type="tns:CardAdjustment" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CIDCardAdjustmentXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomerID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AmountType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Amount" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientStreet" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientState" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardAdjustmentType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardAdjustmentMemo" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CIDCardAdjustmentXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CIDCardAdjustmentXMLResult" type="tns:CardAdjustment" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CardReloadXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Amount" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientStreet" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientState" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardReloadType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardReloadMemo" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CardReload">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AvailableBalance" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LedgerBalance" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="TranNr" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="AuthNum" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="CardReloadXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CardReloadXMLResult" type="tns:CardReload" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CIDCardReloadXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomerID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Amount" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientStreet" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientState" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardReloadType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardReloadMemo" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CIDCardReloadXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CIDCardReloadXMLResult" type="tns:CardReload" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CardFeeXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AmountType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Amount" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientStreet" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientState" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardFeeType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardFeeMemo" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CardTranFee">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AvailableBalance" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LedgerBalance" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="TranNr" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="AuthNum" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="CardFeeXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CardFeeXMLResult" type="tns:CardTranFee" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CIDCardFeeXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomerID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AmountType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Amount" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientStreet" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientState" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardFeeType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardFeeMemo" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CIDCardFeeXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CIDCardFeeXMLResult" type="tns:CardTranFee" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CardDebitXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Amount" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientStreet" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientState" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardDebitType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardDebitMemo" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CardDebit">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AvailableBalance" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LedgerBalance" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="TranNr" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="AuthNum" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="CardDebitXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CardDebitXMLResult" type="tns:CardDebit" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CIDCardDebitXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomerID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Amount" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientStreet" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientState" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardDebitType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardDebitMemo" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CIDCardDebitXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CIDCardDebitXMLResult" type="tns:CardDebit" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CardCreditXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Amount" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientStreet" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientState" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardCreditType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardCreditMemo" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CardCredit">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AvailableBalance" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="LedgerBalance" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="TranNr" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="AuthNum" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="CardCreditXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CardCreditXMLResult" type="tns:CardCredit" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CIDCardCreditXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="CustomerID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Amount" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientStreet" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientState" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardCreditType" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CardCreditMemo" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CIDCardCreditXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CIDCardCreditXMLResult" type="tns:CardCredit" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SetPINXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PIN" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CardPIN">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Status" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="SetPINXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SetPINXMLResult" type="tns:CardPIN" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ChangePINXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CurrPIN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="NewPIN" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ChangePINXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ChangePINXMLResult" type="tns:CardPIN" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="VerifyPINXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="PIN" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="VerifyPINXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="VerifyPINXMLResult" type="tns:CardPIN" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Card2CardTransferXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="FromPAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ToPAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Amount" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo1" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientInfo2" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientStreet" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientCity" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ClientState" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="Card2CardTransfer">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RspCodeDebit" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RspCodeCredit" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="FromPANBalance" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ToPANBalance" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TranNrDebit" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TranNrCredit" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AuthNumDebit" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AuthNumCredit" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="Card2CardTransferXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Card2CardTransferXMLResult" type="tns:Card2CardTransfer" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CardTransByDateXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="StartDate" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="EndDate" type="s:dateTime" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="TranHistories">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="arrTranHistory" type="tns:ArrayOfTranHistory" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfTranHistory">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="TranHistory" nillable="true" type="tns:TranHistory" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="TranHistory">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="BusinessDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TraceNr" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TerminalLocation" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TranTime" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TranDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TranCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TranDesc" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TranAmount" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RspDesc" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="MerchantType" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AuthIDRsp" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TerminalOwner" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="CardTransByDateXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CardTransByDateXMLResult" type="tns:TranHistories" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="TranFeedXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="Transactions">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="arrTransaction" type="tns:ArrayOfTransaction" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfTransaction">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="Transaction" nillable="true" type="tns:Transaction" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="Transaction">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="TranNr" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="BusinessDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TranDate" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TranTime" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TotalTranAmount" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="RspDesc" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TranType" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Network" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="FeeAmount" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="MerchantType" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TerminalID" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CardAcceptorNameLoc" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CountryCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TerminalOwner" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TraceNr" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TranAmount" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TranDesc" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TerminalLocation" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AuthIDRsp" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="MessageType" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CDSTranNr" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="TraceAuditNr" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="TranFeedXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="TranFeedXMLResult" type="tns:Transactions" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="FPMActivateCardDPXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="strPAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="empId" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="refNr" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="amount" type="s:double" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="cDPCardActivation">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="aMessage" type="tns:ArrayOfAnyType" />
          <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="emp_id" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ref_nr" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CardStatus" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="HoldRspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="DateActivated" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="expiry_date" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="FPMActivateCardDPXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="FPMActivateCardDPXMLResult" type="tns:cDPCardActivation" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="FPMDPSActivateCardsByEmpID">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="empId" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="strPAN" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="cDPIVRCardActivation">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="aMessage" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="emp_id" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ref_nr" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CardStatus" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="HoldRspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="AvailableBalance" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="FPMDPSActivateCardsByEmpIDResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="FPMDPSActivateCardsByEmpIDResult" type="tns:cDPIVRCardActivation" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="FPMValidateDPSEmployeeID">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="empId" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="cDPEmployee">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="aMessage" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="CardCount" type="s:int" />
        </s:sequence>
      </s:complexType>
      <s:element name="FPMValidateDPSEmployeeIDResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="FPMValidateDPSEmployeeIDResult" type="tns:cDPEmployee" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="FMPUpdateActivationDPXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="strPAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="empId" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="refNr" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="amount" type="s:double" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="cDPCardUpdate">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="aMessage" type="tns:ArrayOfAnyType" />
          <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="emp_id" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ref_nr" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CardStatus" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="HoldRspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="DateActivated" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="expiry_date" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="FMPUpdateActivationDPXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="FMPUpdateActivationDPXMLResult" type="tns:cDPCardUpdate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="FPMVoidActivationDPXML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="strPAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="empId" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="refNr" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="amount" type="s:double" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="cDPCardVoid">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Authenticated" type="s:int" />
          <s:element minOccurs="0" maxOccurs="1" name="aMessage" type="tns:ArrayOfAnyType" />
          <s:element minOccurs="0" maxOccurs="1" name="PAN" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="emp_id" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="ref_nr" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="CardStatus" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="HoldRspCode" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="DateActivated" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="expiry_date" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="FPMVoidActivationDPXMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="FPMVoidActivationDPXMLResult" type="tns:cDPCardVoid" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="IVRVerifyPIN">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="strPAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="strPIN" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="IVRVerifyPINResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="IVRVerifyPINResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="IVRSetPIN">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="strPAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="strPIN" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="IVRSetPINResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="IVRSetPINResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="IVRChangePIN">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="pngUser" type="tns:WSUser" />
            <s:element minOccurs="0" maxOccurs="1" name="strPAN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="strCurrPIN" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="strNewPIN" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="IVRChangePINResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="IVRChangePINResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="CBWSStatusXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CBWSStatusXML" />
  </wsdl:message>
  <wsdl:message name="CBWSStatusXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CBWSStatusXMLResponse" />
  </wsdl:message>
  <wsdl:message name="ReplaceLostCardXMLSoapIn">
    <wsdl:part name="parameters" element="tns:ReplaceLostCardXML" />
  </wsdl:message>
  <wsdl:message name="ReplaceLostCardXMLSoapOut">
    <wsdl:part name="parameters" element="tns:ReplaceLostCardXMLResponse" />
  </wsdl:message>
  <wsdl:message name="ReorderPersonalizedCardXMLSoapIn">
    <wsdl:part name="parameters" element="tns:ReorderPersonalizedCardXML" />
  </wsdl:message>
  <wsdl:message name="ReorderPersonalizedCardXMLSoapOut">
    <wsdl:part name="parameters" element="tns:ReorderPersonalizedCardXMLResponse" />
  </wsdl:message>
  <wsdl:message name="OrderPersonalizedCardOFACXMLSoapIn">
    <wsdl:part name="parameters" element="tns:OrderPersonalizedCardOFACXML" />
  </wsdl:message>
  <wsdl:message name="OrderPersonalizedCardOFACXMLSoapOut">
    <wsdl:part name="parameters" element="tns:OrderPersonalizedCardOFACXMLResponse" />
  </wsdl:message>
  <wsdl:message name="OrderPersonalizedCardByBINXMLSoapIn">
    <wsdl:part name="parameters" element="tns:OrderPersonalizedCardByBINXML" />
  </wsdl:message>
  <wsdl:message name="OrderPersonalizedCardByBINXMLSoapOut">
    <wsdl:part name="parameters" element="tns:OrderPersonalizedCardByBINXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CreateCardHolderOFACXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CreateCardHolderOFACXML" />
  </wsdl:message>
  <wsdl:message name="CreateCardHolderOFACXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CreateCardHolderOFACXMLResponse" />
  </wsdl:message>
  <wsdl:message name="ResetPasswordXMLSoapIn">
    <wsdl:part name="parameters" element="tns:ResetPasswordXML" />
  </wsdl:message>
  <wsdl:message name="ResetPasswordXMLSoapOut">
    <wsdl:part name="parameters" element="tns:ResetPasswordXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CardActivateXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CardActivateXML" />
  </wsdl:message>
  <wsdl:message name="CardActivateXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CardActivateXMLResponse" />
  </wsdl:message>
  <wsdl:message name="BalanceInquiryXMLSoapIn">
    <wsdl:part name="parameters" element="tns:BalanceInquiryXML" />
  </wsdl:message>
  <wsdl:message name="BalanceInquiryXMLSoapOut">
    <wsdl:part name="parameters" element="tns:BalanceInquiryXMLResponse" />
  </wsdl:message>
  <wsdl:message name="BalanceInquiryByCustomerXMLSoapIn">
    <wsdl:part name="parameters" element="tns:BalanceInquiryByCustomerXML" />
  </wsdl:message>
  <wsdl:message name="BalanceInquiryByCustomerXMLSoapOut">
    <wsdl:part name="parameters" element="tns:BalanceInquiryByCustomerXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CardStatusXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CardStatusXML" />
  </wsdl:message>
  <wsdl:message name="CardStatusXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CardStatusXMLResponse" />
  </wsdl:message>
  <wsdl:message name="ActivateSavingsXMLSoapIn">
    <wsdl:part name="parameters" element="tns:ActivateSavingsXML" />
  </wsdl:message>
  <wsdl:message name="ActivateSavingsXMLSoapOut">
    <wsdl:part name="parameters" element="tns:ActivateSavingsXMLResponse" />
  </wsdl:message>
  <wsdl:message name="OrderTaxPersoXMLSoapIn">
    <wsdl:part name="parameters" element="tns:OrderTaxPersoXML" />
  </wsdl:message>
  <wsdl:message name="OrderTaxPersoXMLSoapOut">
    <wsdl:part name="parameters" element="tns:OrderTaxPersoXMLResponse" />
  </wsdl:message>
  <wsdl:message name="Card2CTSEnrollXMLSoapIn">
    <wsdl:part name="parameters" element="tns:Card2CTSEnrollXML" />
  </wsdl:message>
  <wsdl:message name="Card2CTSEnrollXMLSoapOut">
    <wsdl:part name="parameters" element="tns:Card2CTSEnrollXMLResponse" />
  </wsdl:message>
  <wsdl:message name="TransferFundsXMLSoapIn">
    <wsdl:part name="parameters" element="tns:TransferFundsXML" />
  </wsdl:message>
  <wsdl:message name="TransferFundsXMLSoapOut">
    <wsdl:part name="parameters" element="tns:TransferFundsXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CardInquiryXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CardInquiryXML" />
  </wsdl:message>
  <wsdl:message name="CardInquiryXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CardInquiryXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CardInquiryXMLtestSoapIn">
    <wsdl:part name="parameters" element="tns:CardInquiryXMLtest" />
  </wsdl:message>
  <wsdl:message name="CardInquiryXMLtestSoapOut">
    <wsdl:part name="parameters" element="tns:CardInquiryXMLtestResponse" />
  </wsdl:message>
  <wsdl:message name="CardUpdateStatusXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CardUpdateStatusXML" />
  </wsdl:message>
  <wsdl:message name="CardUpdateStatusXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CardUpdateStatusXMLResponse" />
  </wsdl:message>
  <wsdl:message name="UpdateCardHolderXMLSoapIn">
    <wsdl:part name="parameters" element="tns:UpdateCardHolderXML" />
  </wsdl:message>
  <wsdl:message name="UpdateCardHolderXMLSoapOut">
    <wsdl:part name="parameters" element="tns:UpdateCardHolderXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CreateCardHolderXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CreateCardHolderXML" />
  </wsdl:message>
  <wsdl:message name="CreateCardHolderXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CreateCardHolderXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CardAdjustmentXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CardAdjustmentXML" />
  </wsdl:message>
  <wsdl:message name="CardAdjustmentXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CardAdjustmentXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CIDCardAdjustmentXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CIDCardAdjustmentXML" />
  </wsdl:message>
  <wsdl:message name="CIDCardAdjustmentXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CIDCardAdjustmentXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CardReloadXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CardReloadXML" />
  </wsdl:message>
  <wsdl:message name="CardReloadXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CardReloadXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CIDCardReloadXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CIDCardReloadXML" />
  </wsdl:message>
  <wsdl:message name="CIDCardReloadXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CIDCardReloadXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CardFeeXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CardFeeXML" />
  </wsdl:message>
  <wsdl:message name="CardFeeXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CardFeeXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CIDCardFeeXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CIDCardFeeXML" />
  </wsdl:message>
  <wsdl:message name="CIDCardFeeXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CIDCardFeeXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CardDebitXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CardDebitXML" />
  </wsdl:message>
  <wsdl:message name="CardDebitXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CardDebitXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CIDCardDebitXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CIDCardDebitXML" />
  </wsdl:message>
  <wsdl:message name="CIDCardDebitXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CIDCardDebitXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CardCreditXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CardCreditXML" />
  </wsdl:message>
  <wsdl:message name="CardCreditXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CardCreditXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CIDCardCreditXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CIDCardCreditXML" />
  </wsdl:message>
  <wsdl:message name="CIDCardCreditXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CIDCardCreditXMLResponse" />
  </wsdl:message>
  <wsdl:message name="SetPINXMLSoapIn">
    <wsdl:part name="parameters" element="tns:SetPINXML" />
  </wsdl:message>
  <wsdl:message name="SetPINXMLSoapOut">
    <wsdl:part name="parameters" element="tns:SetPINXMLResponse" />
  </wsdl:message>
  <wsdl:message name="ChangePINXMLSoapIn">
    <wsdl:part name="parameters" element="tns:ChangePINXML" />
  </wsdl:message>
  <wsdl:message name="ChangePINXMLSoapOut">
    <wsdl:part name="parameters" element="tns:ChangePINXMLResponse" />
  </wsdl:message>
  <wsdl:message name="VerifyPINXMLSoapIn">
    <wsdl:part name="parameters" element="tns:VerifyPINXML" />
  </wsdl:message>
  <wsdl:message name="VerifyPINXMLSoapOut">
    <wsdl:part name="parameters" element="tns:VerifyPINXMLResponse" />
  </wsdl:message>
  <wsdl:message name="Card2CardTransferXMLSoapIn">
    <wsdl:part name="parameters" element="tns:Card2CardTransferXML" />
  </wsdl:message>
  <wsdl:message name="Card2CardTransferXMLSoapOut">
    <wsdl:part name="parameters" element="tns:Card2CardTransferXMLResponse" />
  </wsdl:message>
  <wsdl:message name="CardTransByDateXMLSoapIn">
    <wsdl:part name="parameters" element="tns:CardTransByDateXML" />
  </wsdl:message>
  <wsdl:message name="CardTransByDateXMLSoapOut">
    <wsdl:part name="parameters" element="tns:CardTransByDateXMLResponse" />
  </wsdl:message>
  <wsdl:message name="TranFeedXMLSoapIn">
    <wsdl:part name="parameters" element="tns:TranFeedXML" />
  </wsdl:message>
  <wsdl:message name="TranFeedXMLSoapOut">
    <wsdl:part name="parameters" element="tns:TranFeedXMLResponse" />
  </wsdl:message>
  <wsdl:message name="FPMActivateCardDPXMLSoapIn">
    <wsdl:part name="parameters" element="tns:FPMActivateCardDPXML" />
  </wsdl:message>
  <wsdl:message name="FPMActivateCardDPXMLSoapOut">
    <wsdl:part name="parameters" element="tns:FPMActivateCardDPXMLResponse" />
  </wsdl:message>
  <wsdl:message name="FPMDPSActivateCardsByEmpIDSoapIn">
    <wsdl:part name="parameters" element="tns:FPMDPSActivateCardsByEmpID" />
  </wsdl:message>
  <wsdl:message name="FPMDPSActivateCardsByEmpIDSoapOut">
    <wsdl:part name="parameters" element="tns:FPMDPSActivateCardsByEmpIDResponse" />
  </wsdl:message>
  <wsdl:message name="FPMValidateDPSEmployeeIDSoapIn">
    <wsdl:part name="parameters" element="tns:FPMValidateDPSEmployeeID" />
  </wsdl:message>
  <wsdl:message name="FPMValidateDPSEmployeeIDSoapOut">
    <wsdl:part name="parameters" element="tns:FPMValidateDPSEmployeeIDResponse" />
  </wsdl:message>
  <wsdl:message name="FMPUpdateActivationDPXMLSoapIn">
    <wsdl:part name="parameters" element="tns:FMPUpdateActivationDPXML" />
  </wsdl:message>
  <wsdl:message name="FMPUpdateActivationDPXMLSoapOut">
    <wsdl:part name="parameters" element="tns:FMPUpdateActivationDPXMLResponse" />
  </wsdl:message>
  <wsdl:message name="FPMVoidActivationDPXMLSoapIn">
    <wsdl:part name="parameters" element="tns:FPMVoidActivationDPXML" />
  </wsdl:message>
  <wsdl:message name="FPMVoidActivationDPXMLSoapOut">
    <wsdl:part name="parameters" element="tns:FPMVoidActivationDPXMLResponse" />
  </wsdl:message>
  <wsdl:message name="IVRVerifyPINSoapIn">
    <wsdl:part name="parameters" element="tns:IVRVerifyPIN" />
  </wsdl:message>
  <wsdl:message name="IVRVerifyPINSoapOut">
    <wsdl:part name="parameters" element="tns:IVRVerifyPINResponse" />
  </wsdl:message>
  <wsdl:message name="IVRSetPINSoapIn">
    <wsdl:part name="parameters" element="tns:IVRSetPIN" />
  </wsdl:message>
  <wsdl:message name="IVRSetPINSoapOut">
    <wsdl:part name="parameters" element="tns:IVRSetPINResponse" />
  </wsdl:message>
  <wsdl:message name="IVRChangePINSoapIn">
    <wsdl:part name="parameters" element="tns:IVRChangePIN" />
  </wsdl:message>
  <wsdl:message name="IVRChangePINSoapOut">
    <wsdl:part name="parameters" element="tns:IVRChangePINResponse" />
  </wsdl:message>
  <wsdl:portType name="WSPayNGoCardSoap">
    <wsdl:operation name="CBWSStatusXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Ping response to verify web service status</wsdl:documentation>
      <wsdl:input message="tns:CBWSStatusXMLSoapIn" />
      <wsdl:output message="tns:CBWSStatusXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ReplaceLostCardXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Replaces a Lost or Stolen Customer Card</wsdl:documentation>
      <wsdl:input message="tns:ReplaceLostCardXMLSoapIn" />
      <wsdl:output message="tns:ReplaceLostCardXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ReorderPersonalizedCardXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method re-orders a new personalized card for a card holder.</wsdl:documentation>
      <wsdl:input message="tns:ReorderPersonalizedCardXMLSoapIn" />
      <wsdl:output message="tns:ReorderPersonalizedCardXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="OrderPersonalizedCardOFACXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method creates a new cardholder with a personalized card only. No instant issue card will be associated with this card holder.</wsdl:documentation>
      <wsdl:input message="tns:OrderPersonalizedCardOFACXMLSoapIn" />
      <wsdl:output message="tns:OrderPersonalizedCardOFACXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="OrderPersonalizedCardByBINXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method creates a new cardholder with a personalized card only based upon the submitted BIN. No instant issue card will be associated with this card holder.</wsdl:documentation>
      <wsdl:input message="tns:OrderPersonalizedCardByBINXMLSoapIn" />
      <wsdl:output message="tns:OrderPersonalizedCardByBINXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CreateCardHolderOFACXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method creates a new cardholder. Required fields are: PAN, FirstName, LastName, DOB, PostalAddress1, PostalCity, PostalRegion, PostalCode</wsdl:documentation>
      <wsdl:input message="tns:CreateCardHolderOFACXMLSoapIn" />
      <wsdl:output message="tns:CreateCardHolderOFACXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ResetPasswordXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method performs a user password reset and returns all relevant information regarding the password reset as an XML DOM.</wsdl:documentation>
      <wsdl:input message="tns:ResetPasswordXMLSoapIn" />
      <wsdl:output message="tns:ResetPasswordXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CardActivateXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Activates a card after matching two pieces of verification data out of three options.  The process will disable any previously active cards for this customer id.</wsdl:documentation>
      <wsdl:input message="tns:CardActivateXMLSoapIn" />
      <wsdl:output message="tns:CardActivateXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="BalanceInquiryXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method allows for the application of a debit to a card.</wsdl:documentation>
      <wsdl:input message="tns:BalanceInquiryXMLSoapIn" />
      <wsdl:output message="tns:BalanceInquiryXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="BalanceInquiryByCustomerXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method allows for the application of a debit to a card.</wsdl:documentation>
      <wsdl:input message="tns:BalanceInquiryByCustomerXMLSoapIn" />
      <wsdl:output message="tns:BalanceInquiryByCustomerXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CardStatusXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method returns all relevant information regarding a card's status as an XML DOM.</wsdl:documentation>
      <wsdl:input message="tns:CardStatusXMLSoapIn" />
      <wsdl:output message="tns:CardStatusXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ActivateSavingsXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method activates a card's savings account</wsdl:documentation>
      <wsdl:input message="tns:ActivateSavingsXMLSoapIn" />
      <wsdl:output message="tns:ActivateSavingsXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="OrderTaxPersoXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method orders a full time Personalized card from a temporary tax program card</wsdl:documentation>
      <wsdl:input message="tns:OrderTaxPersoXMLSoapIn" />
      <wsdl:output message="tns:OrderTaxPersoXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Card2CTSEnrollXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method enrolls a card in 2CTS</wsdl:documentation>
      <wsdl:input message="tns:Card2CTSEnrollXMLSoapIn" />
      <wsdl:output message="tns:Card2CTSEnrollXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="TransferFundsXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method allows for the transfer of funds between an active savings account and checking account</wsdl:documentation>
      <wsdl:input message="tns:TransferFundsXMLSoapIn" />
      <wsdl:output message="tns:TransferFundsXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CardInquiryXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method returns all relevant information regarding a cardholder as an XML DOM.</wsdl:documentation>
      <wsdl:input message="tns:CardInquiryXMLSoapIn" />
      <wsdl:output message="tns:CardInquiryXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CardInquiryXMLtest">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method returns all relevant information regarding a cardholder as an XML DOM.</wsdl:documentation>
      <wsdl:input message="tns:CardInquiryXMLtestSoapIn" />
      <wsdl:output message="tns:CardInquiryXMLtestSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CardUpdateStatusXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method updates a card's hold response code.  Hold Response Codes allowed: 3000(Lost Card), 3001(Stolen Card).  Card must be active and have no holds to be used</wsdl:documentation>
      <wsdl:input message="tns:CardUpdateStatusXMLSoapIn" />
      <wsdl:output message="tns:CardUpdateStatusXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="UpdateCardHolderXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method updates the editable information for a cardholder as an XML DOM.</wsdl:documentation>
      <wsdl:input message="tns:UpdateCardHolderXMLSoapIn" />
      <wsdl:output message="tns:UpdateCardHolderXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CreateCardHolderXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method creates a new cardholder. Required fields are: PAN, FirstName, LastName, SSN, DOB, PostalAddress1, PostalCity, PostalRegion, PostalCode</wsdl:documentation>
      <wsdl:input message="tns:CreateCardHolderXMLSoapIn" />
      <wsdl:output message="tns:CreateCardHolderXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CardAdjustmentXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method allows the adjustment of a card balance of plus 25 dollars or minus the total balance of the card.  Card must be active and not held to make an adjustment.</wsdl:documentation>
      <wsdl:input message="tns:CardAdjustmentXMLSoapIn" />
      <wsdl:output message="tns:CardAdjustmentXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CIDCardAdjustmentXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method allows the adjustment of a card balance by Customer ID.  Card must be active and not held to make an adjustment.</wsdl:documentation>
      <wsdl:input message="tns:CIDCardAdjustmentXMLSoapIn" />
      <wsdl:output message="tns:CIDCardAdjustmentXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CardReloadXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method allows the adjustment of a card balance with the specified amount.  Reload amount must be a positive value and cannot exceed 5000 dollars.</wsdl:documentation>
      <wsdl:input message="tns:CardReloadXMLSoapIn" />
      <wsdl:output message="tns:CardReloadXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CIDCardReloadXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method allows the adjustment of a card balance with the specified amount by Customer ID.  Reload amount must be a positive value and cannot exceed 5000 dollars.</wsdl:documentation>
      <wsdl:input message="tns:CIDCardReloadXMLSoapIn" />
      <wsdl:output message="tns:CIDCardReloadXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CardFeeXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method allows for the application of a cardholder fee.</wsdl:documentation>
      <wsdl:input message="tns:CardFeeXMLSoapIn" />
      <wsdl:output message="tns:CardFeeXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CIDCardFeeXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method allows for the application of a cardholder fee by Customer ID.</wsdl:documentation>
      <wsdl:input message="tns:CIDCardFeeXMLSoapIn" />
      <wsdl:output message="tns:CIDCardFeeXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CardDebitXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method allows for the application of a debit to a card.</wsdl:documentation>
      <wsdl:input message="tns:CardDebitXMLSoapIn" />
      <wsdl:output message="tns:CardDebitXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CIDCardDebitXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method allows for the application of a debit to a card by Customer ID.</wsdl:documentation>
      <wsdl:input message="tns:CIDCardDebitXMLSoapIn" />
      <wsdl:output message="tns:CIDCardDebitXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CardCreditXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method allows for the application of a credit to a card.</wsdl:documentation>
      <wsdl:input message="tns:CardCreditXMLSoapIn" />
      <wsdl:output message="tns:CardCreditXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CIDCardCreditXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method allows for the application of a credit to a card by Customer ID.</wsdl:documentation>
      <wsdl:input message="tns:CIDCardCreditXMLSoapIn" />
      <wsdl:output message="tns:CIDCardCreditXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SetPINXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method sets the card PIN.</wsdl:documentation>
      <wsdl:input message="tns:SetPINXMLSoapIn" />
      <wsdl:output message="tns:SetPINXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ChangePINXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method changes the PIN # of a card after verifying the original PIN.</wsdl:documentation>
      <wsdl:input message="tns:ChangePINXMLSoapIn" />
      <wsdl:output message="tns:ChangePINXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="VerifyPINXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method verifies the PIN # of a card as an XML DOM.</wsdl:documentation>
      <wsdl:input message="tns:VerifyPINXMLSoapIn" />
      <wsdl:output message="tns:VerifyPINXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Card2CardTransferXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method allows for the transfer of funds between two cards under the same issuer.</wsdl:documentation>
      <wsdl:input message="tns:Card2CardTransferXMLSoapIn" />
      <wsdl:output message="tns:Card2CardTransferXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetTransactionsByDateXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method returns transactions based upon a specified date range for the specified pan.  If you would like one day of transactions you would pass in the same date for starting and ending dates (format date as yyyy-mm-dd).</wsdl:documentation>
      <wsdl:input name="CardTransByDateXML" message="tns:CardTransByDateXMLSoapIn" />
      <wsdl:output name="CardTransByDateXML" message="tns:CardTransByDateXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="TranFeedXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method returns real-time card transactions based upon the end-point of the previously logged request.</wsdl:documentation>
      <wsdl:input message="tns:TranFeedXMLSoapIn" />
      <wsdl:output message="tns:TranFeedXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="FPMActivateCardDPXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Readies card for card holder IVR activation.</wsdl:documentation>
      <wsdl:input message="tns:FPMActivateCardDPXMLSoapIn" />
      <wsdl:output message="tns:FPMActivateCardDPXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="FPMDPSActivateCardsByEmpID">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Activates all DPS cards tied to an already validated employee id</wsdl:documentation>
      <wsdl:input message="tns:FPMDPSActivateCardsByEmpIDSoapIn" />
      <wsdl:output message="tns:FPMDPSActivateCardsByEmpIDSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="FPMValidateDPSEmployeeID">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Validates a DPS Employee ID for use by the IVR</wsdl:documentation>
      <wsdl:input message="tns:FPMValidateDPSEmployeeIDSoapIn" />
      <wsdl:output message="tns:FPMValidateDPSEmployeeIDSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="FPMUpdateActivationDPXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Updates an activation via IVR.</wsdl:documentation>
      <wsdl:input name="FMPUpdateActivationDPXML" message="tns:FMPUpdateActivationDPXMLSoapIn" />
      <wsdl:output name="FMPUpdateActivationDPXML" message="tns:FMPUpdateActivationDPXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="FPMVoidActivationDPXML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Voids an activation if the card has not been activated via IVR.</wsdl:documentation>
      <wsdl:input message="tns:FPMVoidActivationDPXMLSoapIn" />
      <wsdl:output message="tns:FPMVoidActivationDPXMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="IVRVerifyPIN">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method verifies the PIN # of a card.</wsdl:documentation>
      <wsdl:input message="tns:IVRVerifyPINSoapIn" />
      <wsdl:output message="tns:IVRVerifyPINSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="IVRSetPIN">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method sets the card PIN.</wsdl:documentation>
      <wsdl:input message="tns:IVRSetPINSoapIn" />
      <wsdl:output message="tns:IVRSetPINSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="IVRChangePIN">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This method changes the PIN # of a card after verifying the original PIN.</wsdl:documentation>
      <wsdl:input message="tns:IVRChangePINSoapIn" />
      <wsdl:output message="tns:IVRChangePINSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="WSPayNGoCardSoap" type="tns:WSPayNGoCardSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="CBWSStatusXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CBWSStatusXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ReplaceLostCardXML">
      <soap:operation soapAction="http://192.168.3.140:3000/ReplaceLostCardXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ReorderPersonalizedCardXML">
      <soap:operation soapAction="http://192.168.3.140:3000/ReorderPersonalizedCardXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="OrderPersonalizedCardOFACXML">
      <soap:operation soapAction="http://192.168.3.140:3000/OrderPersonalizedCardOFACXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="OrderPersonalizedCardByBINXML">
      <soap:operation soapAction="http://192.168.3.140:3000/OrderPersonalizedCardByBINXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CreateCardHolderOFACXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CreateCardHolderOFACXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ResetPasswordXML">
      <soap:operation soapAction="http://192.168.3.140:3000/ResetPasswordXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardActivateXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CardActivateXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="BalanceInquiryXML">
      <soap:operation soapAction="http://192.168.3.140:3000/BalanceInquiryXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="BalanceInquiryByCustomerXML">
      <soap:operation soapAction="http://192.168.3.140:3000/BalanceInquiryByCustomerXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardStatusXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CardStatusXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ActivateSavingsXML">
      <soap:operation soapAction="http://192.168.3.140:3000/ActivateSavingsXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="OrderTaxPersoXML">
      <soap:operation soapAction="http://192.168.3.140:3000/OrderTaxPersoXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Card2CTSEnrollXML">
      <soap:operation soapAction="http://192.168.3.140:3000/Card2CTSEnrollXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="TransferFundsXML">
      <soap:operation soapAction="http://192.168.3.140:3000/TransferFundsXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardInquiryXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CardInquiryXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardInquiryXMLtest">
      <soap:operation soapAction="http://192.168.3.140:3000/CardInquiryXMLtest" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardUpdateStatusXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CardUpdateStatusXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateCardHolderXML">
      <soap:operation soapAction="http://192.168.3.140:3000/UpdateCardHolderXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CreateCardHolderXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CreateCardHolderXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardAdjustmentXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CardAdjustmentXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CIDCardAdjustmentXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CIDCardAdjustmentXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardReloadXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CardReloadXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CIDCardReloadXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CIDCardReloadXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardFeeXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CardFeeXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CIDCardFeeXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CIDCardFeeXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardDebitXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CardDebitXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CIDCardDebitXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CIDCardDebitXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardCreditXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CardCreditXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CIDCardCreditXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CIDCardCreditXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SetPINXML">
      <soap:operation soapAction="http://192.168.3.140:3000/SetPINXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ChangePINXML">
      <soap:operation soapAction="http://192.168.3.140:3000/ChangePINXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="VerifyPINXML">
      <soap:operation soapAction="http://192.168.3.140:3000/VerifyPINXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Card2CardTransferXML">
      <soap:operation soapAction="http://192.168.3.140:3000/Card2CardTransferXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetTransactionsByDateXML">
      <soap:operation soapAction="http://192.168.3.140:3000/CardTransByDateXML" style="document" />
      <wsdl:input name="CardTransByDateXML">
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output name="CardTransByDateXML">
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="TranFeedXML">
      <soap:operation soapAction="http://192.168.3.140:3000/TranFeedXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="FPMActivateCardDPXML">
      <soap:operation soapAction="http://192.168.3.140:3000/FPMActivateCardDPXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="FPMDPSActivateCardsByEmpID">
      <soap:operation soapAction="http://192.168.3.140:3000/FPMDPSActivateCardsByEmpID" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="FPMValidateDPSEmployeeID">
      <soap:operation soapAction="http://192.168.3.140:3000/FPMValidateDPSEmployeeID" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="FPMUpdateActivationDPXML">
      <soap:operation soapAction="http://192.168.3.140:3000/FMPUpdateActivationDPXML" style="document" />
      <wsdl:input name="FMPUpdateActivationDPXML">
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output name="FMPUpdateActivationDPXML">
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="FPMVoidActivationDPXML">
      <soap:operation soapAction="http://192.168.3.140:3000/FPMVoidActivationDPXML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="IVRVerifyPIN">
      <soap:operation soapAction="http://192.168.3.140:3000/IVRVerifyPIN" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="IVRSetPIN">
      <soap:operation soapAction="http://192.168.3.140:3000/IVRSetPIN" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="IVRChangePIN">
      <soap:operation soapAction="http://192.168.3.140:3000/IVRChangePIN" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="WSPayNGoCardSoap12" type="tns:WSPayNGoCardSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="CBWSStatusXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CBWSStatusXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ReplaceLostCardXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/ReplaceLostCardXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ReorderPersonalizedCardXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/ReorderPersonalizedCardXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="OrderPersonalizedCardOFACXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/OrderPersonalizedCardOFACXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="OrderPersonalizedCardByBINXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/OrderPersonalizedCardByBINXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CreateCardHolderOFACXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CreateCardHolderOFACXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ResetPasswordXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/ResetPasswordXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardActivateXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CardActivateXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="BalanceInquiryXML">
      <soap12:operation soapAction="http://192.168.3.140/BalanceInquiryXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="BalanceInquiryByCustomerXML">
      <soap12:operation soapAction="http://192.168.3.140/BalanceInquiryByCustomerXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardStatusXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CardStatusXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ActivateSavingsXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/ActivateSavingsXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="OrderTaxPersoXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/OrderTaxPersoXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Card2CTSEnrollXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/Card2CTSEnrollXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="TransferFundsXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/TransferFundsXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardInquiryXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CardInquiryXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardInquiryXMLtest">
      <soap12:operation soapAction="http://192.168.3.140:3000/CardInquiryXMLtest" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardUpdateStatusXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CardUpdateStatusXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateCardHolderXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/UpdateCardHolderXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CreateCardHolderXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CreateCardHolderXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardAdjustmentXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CardAdjustmentXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CIDCardAdjustmentXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CIDCardAdjustmentXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardReloadXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CardReloadXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CIDCardReloadXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CIDCardReloadXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardFeeXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CardFeeXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CIDCardFeeXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CIDCardFeeXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardDebitXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CardDebitXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CIDCardDebitXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CIDCardDebitXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CardCreditXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CardCreditXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CIDCardCreditXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CIDCardCreditXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SetPINXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/SetPINXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ChangePINXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/ChangePINXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="VerifyPINXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/VerifyPINXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Card2CardTransferXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/Card2CardTransferXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetTransactionsByDateXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/CardTransByDateXML" style="document" />
      <wsdl:input name="CardTransByDateXML">
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output name="CardTransByDateXML">
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="TranFeedXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/TranFeedXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="FPMActivateCardDPXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/FPMActivateCardDPXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="FPMDPSActivateCardsByEmpID">
      <soap12:operation soapAction="http://192.168.3.140:3000/FPMDPSActivateCardsByEmpID" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="FPMValidateDPSEmployeeID">
      <soap12:operation soapAction="http://192.168.3.140:3000/FPMValidateDPSEmployeeID" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="FPMUpdateActivationDPXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/FMPUpdateActivationDPXML" style="document" />
      <wsdl:input name="FMPUpdateActivationDPXML">
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output name="FMPUpdateActivationDPXML">
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="FPMVoidActivationDPXML">
      <soap12:operation soapAction="http://192.168.3.140:3000/FPMVoidActivationDPXML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="IVRVerifyPIN">
      <soap12:operation soapAction="http://192.168.3.140:3000/IVRVerifyPIN" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="IVRSetPIN">
      <soap12:operation soapAction="http://192.168.3.140:3000/IVRSetPIN" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="IVRChangePIN">
      <soap12:operation soapAction="http://192.168.3.140:3000/IVRChangePIN" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="WSPayNGoCard">
    <wsdl:port name="WSPayNGoCardSoap" binding="tns:WSPayNGoCardSoap">
      <soap:address location="http://192.168.3.140:3000/cds" />
    </wsdl:port>
    <wsdl:port name="WSPayNGoCardSoap12" binding="tns:WSPayNGoCardSoap12">
      <soap12:address location="http://192.168.3.140:3000/cds" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>}
    render :text => wsdl_text
  end
end
