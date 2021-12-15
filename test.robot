*** Settings ***
Library   SeleniumLibrary
Resource  common.robot

*** Variable ***
${login_btn}    dt_login_button
${email_field}  name=email
${pw_field}     //*[@type="password"]
${login_oauth_btn}  //*[text()="Log in"]
${acc_btn}    dt_core_account-info_acc-info
${real_acc}   real_account_tab
${demo_acc}   dt_core_account-switcher_demo-tab
${acc_field}  //*[@id="dt_VRTC4795338"]/span

${index_btn}  //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[1]/div
${synthetic_indices}    //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[1]/div[2]/div/div[2]
${indices_1s}       //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[2]/div[2]/div/div[2]/div[1]/div[2]/div[1]
${rise_btn}         //*[@id="trade_container"]/div[4]/div/div/fieldset[1]/div/div[2]
${pageloader}    //*[@class="chart-container__loader"]
${aud_aus}      //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[2]/div[2]/div/div[3]/div[1]/div[3]/div[1]
${forex_btn}    //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[1]/div[2]/div/div[3]
${type_btn}         //*[@id="dt_contract_dropdown"]/div
${type_higher}   //*[@id="dt_contract_high_low_item"]
${options_btn}     //*[@id="dc_options_link"]
${duration_field}    //*[@id="dt_simple_duration_datepicker"]/div/div[1]/input
${barrier_field}    //*[@id="dt_barrier_1_input"]
${lower_btn}    //*[@id="dt_purchase_put_button"]/div[4]



*** Keyword ***

*** Test Cases ***
Open Deriv
    Login   ${my_email}     ${my_pw}
    RiseContract
    LowerContract
    BarrierErrorContract

	# Close Browser

