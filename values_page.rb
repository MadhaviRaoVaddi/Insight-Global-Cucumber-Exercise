class ValuesPage
  include PageObject
  include DataMagic

  text_field(:name,id: 'ibl_val_id')
  text_field(:name,id: 'txt_val_id')
  text_field(:name,id:'txt_ttl_val')
  button(:txt_ttl_val, value: 'Total_Balance')


  def
    TotalBalance (data = {})
    populate_page_with_data_for(:TotalBalance, data)
    TotalBalance
  end

  end