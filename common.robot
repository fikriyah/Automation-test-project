*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keyword ***
Login
    [arguments]      ${email}   ${pw}
     Open Browser    url=https://app.deriv.com   browser=chrome
	 wait until page does not contain element   dt_core_header_acc-info-preloader   60
	 wait until page contains element   ${login_btn}    60
	 Click Element   ${login_btn}
	 wait until page contains element   ${email_field}      15
	 input text     ${email_field}      ${email}
	 input text     ${pw_field}      ${pw}
	 Click Element   ${login_oauth_btn}
	 wait until page does not contain element   dt_core_header_acc-info-preloader   60
	 Click Element   ${acc_btn}
     Click Element   ${demo_acc}
     Click Element   ${acc_field}

RiseContract
    wait until page does not contain element   dt_core_header_acc-info-preloader   60
    wait until page contains element    ${index_btn}   100
    Click Element   ${index_btn}
    Click Element   ${synthetic_indices}
    Click Element   ${indices_1s}
    wait until page does not contain element    ${pageloader}   60
    wait until page contains element   ${rise_btn}   60
    Click Element   ${rise_btn}

ClearInputField
    [Arguments]    ${input_field}
    Wait Until Page Contains Element    ${input_field}    5
    ${current_value}=    Get Element Attribute    ${input_field}    value
    ${value_length}=    Get Length    ${current_value}
    # sometimes text cursor starts from the middle, so delete front and back characters
    Repeat Keyword    ${value_length}    Press Keys    ${input_field}   BACKSPACE
    Repeat Keyword    1   Press Keys    ${input_field}   DELETE

LowerContract
    wait until page does not contain element   dt_core_header_acc-info-preloader   60
    wait until page contains element    ${index_btn}   100
    Click Element    ${index_btn}
    Click Element    ${forex_btn}
    Click Element    ${aud_aus}
    wait until page contains element   ${type_btn}   60
    Click Element    ${type_btn}
    Click Element    ${options_btn}
    Click Element    ${type_higher}
    ClearInputField    ${duration_field}
    Input Text          ${duration_field}        2
    Click Element       ${lower_btn}

BarrierErrorContract
    wait until page does not contain element   dt_core_header_acc-info-preloader   60
    wait until page contains element    ${index_btn}   100
    Click Element    ${index_btn}
    Click Element    ${forex_btn}
    Click Element    ${aud_aus}
    wait until page contains element   ${type_btn}   60
    Click Element    ${type_btn}
    Click Element    ${options_btn}
    Click Element    ${type_higher}
    ClearInputField    ${duration_field}
    Input Text          ${duration_field}        2
    ClearInputField    ${barrier_field}
    Input Text          ${barrier_field}        90





