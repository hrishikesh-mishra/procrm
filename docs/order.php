<?xml version="1.0" encoding="UTF-8"?>
<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns="urn:microsoft-dynamics-nav/xmlports/SalesOrderInsert" xmlns:ns2="urn:microsoft-dynamics-schemas/codeunit/SalesOrderCreation">
    <SOAP-ENV:Body>
        <ns2:CreateSalesOrder>
            <ns2:salesOrder>
                
                <Customer>
                    <CustomerType>B2C</CustomerType>
                    <WebCustomerNo>7591</WebCustomerNo>
                    <FirstName>test</FirstName>
                    <LastName>test</LastName>
                    <Address>test </Address>
                    <Address2></Address2>
                    <Address3></Address3>
                    <Address4></Address4>
                    <PostCode>110010</PostCode>
                    <City>Test</City>
                    <State>ND</State>
                    <Country>IN</Country>
                    <PhoneNo></PhoneNo>
                    <MobileNo>1234567890</MobileNo>
                    <EMail>anilpawar1202@gmail.com</EMail>
                    <Stylist>false</Stylist>
                </Customer>
                
                
                <SalesHeader>
                    <SalesOrderNo>JU11017260</SalesOrderNo>
                    
                    <ShipToName>test</ShipToName>
                    <ShipToName2>test</ShipToName2>
                    <ShipToAddress>test </ShipToAddress>
                    <ShipToAddress2></ShipToAddress2>
                    <ShipToAddress3></ShipToAddress3>
                    <ShipToAddress4></ShipToAddress4>
                    <ShipToPostCode>110010</ShipToPostCode>
                    <ShipToCity>Test</ShipToCity>
                    <ShipToState>ND</ShipToState>
                    <ShipToCountry>IN</ShipToCountry>
                    <ShipToPhoneNo></ShipToPhoneNo>
                    <ShipToMobileNo>1234567890</ShipToMobileNo>
                    <ShipToEMail>anilpawar1202@gmail.com</ShipToEMail>
                    
                    <BillToName>test</BillToName>
                    <BillToAddress>test </BillToAddress>
                    <BillToAddress2></BillToAddress2>
                    <BillToCity>Test</BillToCity>
                    <BillToPostCode>110010</BillToPostCode>
                    <BillToCountry>IN</BillToCountry>
                    
                    <SalespersonCode>
                    
                    <PaymentMethod>COD</PaymentMethod>
                    <PG_FLAG>NO</PG_FLAG>
                    <OrderStatus>processing</OrderStatus>
                    <MobileVerified>false</MobileVerified>
                    <OrderDate>2013-01-02</OrderDate>
                    <OrderTime>13:45:45</OrderTime>
                    <OrderValue>8948</OrderValue>
                    <PaymentDate></PaymentDate>
                    <PaymentTime></PaymentTime>
                    <PaymentStatus></PaymentStatus>
                    <AuthCode></AuthCode>
                    
                </SalesHeader>
                
                
                <SalesLine>
                    <LineNo>10000</LineNo>
                    <ItemType>Item</ItemType>
                    <ItemCode>JGFCNEC0812</ItemCode>
                    <Description />
                    <Color />
                    <Size />
                    <Quantity>1</Quantity>
                    <UnitAmount>950.0000</UnitAmount>
                    <DiscountAmount>0.0000</DiscountAmount>
                    <ParentLineNo>0</ParentLineNo>
                </SalesLine>
                
                <SalesLine>
                    <LineNo>20000</LineNo>
                    <>Item</ItemType>
                    <ItemCode>JBBDNEC0629</ItemCode>
                    <Description />
                    <Color />
                    <Size />
                    <Quantity>1</Quantity>
                    <UnitAmount>0.0000</UnitAmount>
                    <DiscountAmount>0.0000</DiscountAmount>
                    <ParentLineNo>0</ParentLineNo>
                </SalesLine>
                
                <SalesLine>
                    <LineNo>30000</LineNo>
                    <ItemType>Item</ItemType>
                    <ItemCode>JBBDNEC0629</ItemCode>
                    <Description />
                    <Color />
                    <Size />
                    <Quantity>1</Quantity>
                    <UnitAmount>0.0000</UnitAmount>
                    <DiscountAmount>0.0000</DiscountAmount>
                    <ParentLineNo>0</ParentLineNo>
                </SalesLine>
                
                <SalesLine>
                    <LineNo>40000</LineNo>
                    <ItemType>Item</ItemType>
                    <ItemCode>JBBDEAR0630</ItemCode>
                    <Description />
                    <Color />
                    <Size />
                    <Quantity>1</Quantity>
                    <UnitAmount>0.0000</UnitAmount>
                    <DiscountAmount>0.0000</DiscountAmount>
                    <ParentLineNo>0</ParentLineNo>
                </SalesLine>
                
                <SalesLine>
                    <LineNo>50000</LineNo>
                    <ItemType>Item</ItemType>
                    <ItemCode>JBBDEAR0630</ItemCode>
                    <Description />
                    <Color />
                    <Size />
                    <Quantity>1</Quantity>
                    <UnitAmount>0.0000</UnitAmount>
                    <DiscountAmount>0.0000</DiscountAmount>
                    <ParentLineNo>0</ParentLineNo>
                </SalesLine>
                
                <PaymentLine>
                    <Amount></Amount>
                    <PaymentGateWay></PaymentGateWay>
                    <PaymentRefNo></PaymentRefNo>
                </PaymentLine>
                
            </ns2:salesOrder>
        </ns2:CreateSalesOrder>
    </SOAP-ENV:Body>
</SOAP-ENV:Envelope>



<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="">
- <SOAP-ENV:Body>
- <ImportSalesOrder xmlns="http://www.sugarcrm.com/sugarcrm" SOAP-ENV:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">
- <user_auth xmlns="http://www.sugarcrm.com/sugarcrm">
  <user_name>admin</user_name>
  <password>@admin@@</password>
  </user_auth>
- <sales_order xmlns="http://www.sugarcrm.com/sugarcrm">
- <Customer>
        <No>25082</No>
        <FirstName>guru</FirstName>
        <LastName>dev</LastName>
        <Address>521 dwarka</Address>
        <Address2 />
        <Address3 />
        <Address4 />
        <City>mumbai</City>
        <State>mumbai</State>
        <Country>777</Country>
        <PhoneNo>9015024121</PhoneNo>
        <MobileNo />
        <FaxNo />
        <EMail>alan@fabfurnish.com</EMail>
  </Customer>
- <SalesOrder>
        <OrderNo>787878777777</OrderNo>
        <OrderId>011</OrderId>
        <OrderDate>17-10-2012</OrderDate>
        <OrderTime>16:00:59</OrderTime>
        <CustomerNo>25082</CustomerNo>
        <BilltoName>hrishi-del</BilltoName>
        <BilltoName2>kumar-del</BilltoName2>
        <BilltoAddress>c-350, 3rd floor dwarka</BilltoAddress>
        <BilltoAddress2 />
        <BilltoCity>delhi</BilltoCity>
        <BilltoPostCode>110018</BilltoPostCode>
        <BilltoPhoneNo>9015024121</BilltoPhoneNo>
        <BilltoMobileNo>9015024121</BilltoMobileNo>
        <BilltoCountry>105</BilltoCountry>
        <ShiptoName>hrishi-del</ShiptoName>
        <ShiptoName2>kumar-del</ShiptoName2>
        <ShiptoAddress>address1-del address2-del</ShiptoAddress>
        <ShiptoAddress2 />
        <ShiptoAddress3 />
        <ShiptoAddress4 />
        <ShiptoPostCode>110019</ShiptoPostCode>
        <ShiptoCity>new delhi</ShiptoCity>
        <ShiptoState>Delhi</ShiptoState>
        <ShiptoCountry>105</ShiptoCountry>
        <ShiptoPhoneNo>9090909090</ShiptoPhoneNo>
        <ShiptoMobileNo />
        <ShiptoEMail />
        <ShipmentMethodCode />
        <SalespersonCode />
        <StoreID />
        <OrderStatus>ss</OrderStatus>
        <CouponCode ></CouponCode>
        <GiftOption />
        <GiftMessage />
        <OrderValue>1,525</OrderValue>
        <TaxAmount>0</TaxAmount>
        <ShippingAmount>0</ShippingAmount>
        <GrandTotal>1,525</GrandTotal>
        <PaymentTermsCode />
        <CurrentStatus />
       
        - <SalesLine>
                <OrderItemID>23</OrderItemID>
                <LineNo>10</LineNo>
                <ParentLineNo>0</ParentLineNo>
                <Description>Swayam Linea Double Bed Sheet With Pillow Covers</Description>
                <Quantity>0</Quantity>
                <UnitAmount>1,525</UnitAmount>
                <OriginalUnitPrice>1,795</OriginalUnitPrice>
                <DiscountAmount>270</DiscountAmount>
                <TaxAmount>0</TaxAmount>
                <AmountPaid>0</AmountPaid>
                <Color />
                <SKU>3285</SKU>
                <Weight>0</Weight>
                <ItemPetNo>SW134HS54EUVINFUR-3285</ItemPetNo>
                <PaidPrice>1,525</PaidPrice>
                <RefundedAmount>0</RefundedAmount>
                <RefundedVoucher>0</RefundedVoucher>
                <TaxPercent>0</TaxPercent>
                <CartRuleDiscount>0</CartRuleDiscount>
                <CouponAmount>0</CouponAmount>
                <CouponPercent>0</CouponPercent>
                <CouponRefund>0</CouponRefund>
                <CouponCategory />
                <CouponCode ></CouponCode>
                <CurrentStatus>pending</CurrentStatus>
                <ShipmentDate />
                <BobItemStatus>exportable</BobItemStatus>
                <SpecialPrice>1,525</SpecialPrice>
                <AgentComment />
                
        </SalesLine>
        - <SalesLine>
                <OrderItemID>23</OrderItemID>
                <LineNo>10</LineNo>
                <ParentLineNo>0</ParentLineNo>
                <Description>Swayam Linea Double Bed Sheet With Pillow Covers</Description>
                <Quantity>0</Quantity>
                <UnitAmount>1,525</UnitAmount>
                <OriginalUnitPrice>1,795</OriginalUnitPrice>
                <DiscountAmount>270</DiscountAmount>
                <TaxAmount>0</TaxAmount>
                <AmountPaid>0</AmountPaid>
                <Color />
                <SKU>3285</SKU>
                <Weight>0</Weight>
                <ItemPetNo>SW134HS54EUVINFUR-3285</ItemPetNo>
                <PaidPrice>1,525</PaidPrice>
                <RefundedAmount>0</RefundedAmount>
                <RefundedVoucher>0</RefundedVoucher>
                <TaxPercent>0</TaxPercent>
                <CartRuleDiscount>0</CartRuleDiscount>
                <CouponAmount>0</CouponAmount>
                <CouponPercent>0</CouponPercent>
                <CouponRefund>0</CouponRefund>
                <CouponCategory />
                <CouponCode ></CouponCode>
                <CurrentStatus>pending</CurrentStatus>
                <ShipmentDate />
                <BobItemStatus>exportable</BobItemStatus>
                <SpecialPrice>1,525</SpecialPrice>
                <AgentComment />
                
        </SalesLine>
        
       
        - <PaymentLine>
        <LineNo>10000</LineNo>
        <PaymentMethod>prepaid</PaymentMethod>
        <PaymentDate />
        <PaymentTime />
        <PaymentGatewayCode />
        <Amount>0</Amount>
        <TransactionId />
        </PaymentLine>
  </SalesOrder>
  </sales_order>
  </ImportSalesOrder>
  </SOAP-ENV:Body>
  </SOAP-ENV:Envelope>





<WebCustomerNo>7591</WebCustomerNo>
<SalesOrderNo>JU11017260</SalesOrderNo>
<SalespersonCode />
<PaymentMethod>COD</PaymentMethod>
<PG_FLAG>NO</PG_FLAG>
<OrderStatus>processing</OrderStatus>
<MobileVerified>false</MobileVerified>
<OrderDate>2013-01-02</OrderDate>
<OrderTime>13:45:45</OrderTime>
<OrderValue>8948</OrderValue>
<PaymentDate></PaymentDate>
<PaymentTime></PaymentTime>
<PaymentStatus></PaymentStatus>
<AuthCode></AuthCode>
<Amount></Amount>
<PaymentLine_PaymentGateWay></PaymentGateWay>
<PaymentLine_PaymentRefNo></PaymentRefNo>


<CustomerType>B2C</CustomerType>
<WebCustomerNo>7591</WebCustomerNo>
<FirstName>test</FirstName>
<LastName>test</LastName>
<Address>test </Address>
<Address2></Address2>
<Address3></Address3>
<Address4></Address4>
<PostCode>110010</PostCode>
<City>Test</City>
<State>ND</State>
<Country>IN</Country>
<PhoneNo></PhoneNo>
<MobileNo>1234567890</MobileNo>
<EMail>anilpawar1202@gmail.com</EMail>
<Stylist>false</Stylist>


<SalesLine>
<LineNo>50000</LineNo>
<ItemType>Item</ItemType>
<ItemCode>JBBDEAR0630</ItemCode>
<Description />
<Color />
<Size />
<Quantity>1</Quantity>
<UnitAmount>0.0000</UnitAmount>
<DiscountAmount>0.0000</DiscountAmount>
<ParentLineNo>0</ParentLineNo>
</SalesLine>


<LineNo>50000</LineNo>
<ItemType>Item</ItemType>
<ItemCode>JBBDEAR0630</ItemCode>
<Description />
<Color />
<Size />
<Quantity>1</Quantity>
<UnitAmount>0.0000</UnitAmount>
<DiscountAmount>0.0000</DiscountAmount>
<ParentLineNo>0</ParentLineNo>