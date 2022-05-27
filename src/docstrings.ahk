; @file       docstrings.ahk
; @version    0.1
; @date       May 2022
; @author     Joeri Kok
; @copyright  GPL-3.0 license
;
; @title
;   Documentation String Shortcuts
; @brief
;   Provides keyboard shortcuts/hotstrings for documenting code.

#noenv
#persistent
#singleinstance

#include <ctlib>

; @section
;   DoxyGen documentation hotstrings for C++
;
; @hotstring
;   File headers.
:*X:@cf:: shell.paste("
(
/**
 * @file       ..
 * @version    0.1
 * @date       .. ..
 * @author     Joeri Kok
 * @copyright  GPL-3.0 license
 *
 * @brief ..
 * @details ..
 */
)")

; @hotstring
;   Namespaces.
:*X:@cn:: shell.paste("
(
/**
 * @namespace ..
 * @brief ..
 */
)")

; @hotstring
;   Type aliases.
:*X:@ca:: shell.paste("
(
/**
 * @typedef ..
 * @brief ..
 */
)")

; @hotstring
;   Enumerations.
:*X:@ce:: shell.paste("
(
/**
 * @enum ..
 * @brief ..
 */
)")

; @hotstring
;   Unions.
:*X:@cu:: shell.paste("
(
/**
 * @union ..
 * @brief ..
 * @details ..
 */
)")

; @hotstring
;   Classes.
:*X:@cc:: shell.paste("
(
/**
 * @class ..
 * @brief ..
 * @details ..
 */
)")

; @hotstring
;   Structures.
:*X:@cs:: shell.paste("
(
/**
 * @struct ..
 * @brief ..
 * @details ..
 */
)")

; @hotstring
;   Overloaded functions.
:*X:@co:: shell.paste("
(
/**
 * @overload ..
 */
)")

; @hotstring
;   Short functions or constructors returning no values.
:*X:@cb:: shell.paste("
(
/**
 * @brief ..
 */
)")

; @hotstring
;   Functions or constructors returning no values.
:*X:@cd:: shell.paste("
(
/**
 * @brief ..
 * @details ..
 */
)")

; @hotstring
;   Getter functions.
:*X:@cr:: shell.paste("
(
/**
 * @brief ..
 * @return ..
 */
)")

; @hotstring
;   Functions taking no parameters.
:*X:@c0:: shell.paste("
(
/**
 * @brief ..
 * @details ..
 * @return ..
 */
)")

; @hotstring
;   Functions taking one parameter.
:*X:@c1:: shell.paste("
(
/**
 * @brief ..
 * @details ..
 * @param[in] .. ..
 * @return ..
 */
)")

; @hotstring
;   Functions taking two parameters.
:*X:@c2:: shell.paste("
(
/**
 * @brief ..
 * @details ..
 * @param[in] .. ..
 * @param[in] .. ..
 * @return ..
 */
)")

; @hotstring
;   Functions taking three parameters.
:*X:@c3:: shell.paste("
(
/**
 * @brief ..
 * @details ..
 * @param[in] .. ..
 * @param[in] .. ..
 * @param[in] .. ..
 * @return ..
 */
)")

; @hotstring
;   Implementation of function definitions.
:*X:@ci:: shell.paste("
(
/**
 * @copydoc ..
 * @internal ..
 */
)")

; @hotstring
;   Variables and data members.
:*X:@cv:: shell.paste("
(
/**< .. */
)")

; @section
;   DoxyGen documentation hotstrings for Python
;
; @hotstring
;   File headers.
:*X:@pf:: shell.paste("
(
""""""!
@file       ..
@version    0.1
@date       .. ..
@author     Joeri Kok
@copyright  GPL-3.0 License

@brief      ..
@details    ..
""""""
)")

; @hotstring
;   Enumerations.
:*X:@pe:: shell.paste("
(
""""""!
@enum ..
@brief ..
@details ..
""""""
)")

; @hotstring
;   Classes.
:*X:@pc:: shell.paste("
(
""""""!
@class ..
@brief ..
@details ..
""""""
)")

; @hotstring
;   Overloaded functions.
:*X:@po:: shell.paste("
(
""""""!
@overload ..
""""""
)")

; @hotstring
;   Short functions or constructors returning no values.
:*X:@pb:: shell.paste("
(
""""""!
@brief ..
""""""
)")

; @hotstring
;   Functions or constructors returning no values.
:*X:@pd:: shell.paste("
(
""""""!
@brief ..
@details ..
""""""
)")

; @hotstring
;   Getter functions.
:*X:@pr:: shell.paste("
(
""""""!
@brief ..
@return ..
""""""
)")

; @hotstring
;   Functions taking no parameters.
:*X:@p0:: shell.paste("
(
""""""!
@brief ..
@details ..
@return ..
""""""
)")

; @hotstring
;   Functions taking one parameter.
:*X:@p1:: shell.paste("
(
""""""!
@brief ..
@details ..
@param[in] .. ..
@return ..
""""""
)")

; @hotstring
;   Functions taking two parameters.
:*X:@p2:: shell.paste("
(
""""""!
@brief ..
@details ..
@param[in] .. ..
@param[in] .. ..
@return ..
""""""
)")

; @hotstring
;   Functions taking three parameters.
:*X:@p3:: shell.paste("
(
""""""!
@brief ..
@details ..
@param[in] .. ..
@param[in] .. ..
@param[in] .. ..
@return ..
""""""
)")

; @hotstring
;   Instance and class variables.
:*X:@pv:: shell.paste("
(
#<! ..
)")

; @section
;   DoxyGen documentation hotstrings for Windows Batch Scripting
;
; @hotstring
;   File headers.
:*X:@bf:: shell.paste("
(
:: @file       ..
:: @version    0.1
:: @date       .. ..
:: @author     Joeri Kok
:: @copyright  GPL-3.0 license
::
:: @title
::   ..
:: @brief
::   ..
)")

; @hotstring
;   Short functions returning no values.
:*X:@bb:: shell.paste("
(
:: @function
::   ..
:: @brief
::   ..
)")

; @hotstring
;   Functions returning no values.
:*X:@bd:: shell.paste("
(
:: @function
::   ..
:: @brief
::   ..
:: @details
::   ..
)")

; @hotstring
;   Getter functions.
:*X:@br:: shell.paste("
(
:: @function
::   ..
:: @brief
::   ..
:: @returns
::   .. ................... ..
)")

; @hotstring
;   Functions taking no parameters.
:*X:@b0:: shell.paste("
(
:: @function
::   ..
:: @brief
::   ..
:: @details
::   ..
:: @returns
::   .. ................... ..
)")

; @hotstring
;   Functions taking one parameter.
:*X:@b1:: shell.paste("
(
:: @function
::   ..
:: @brief
::   ..
:: @details
::   ..
:: @params
::   ..[in] ............... ..
:: @returns
::   .. ................... ..
)")

; @hotstring
;   Functions taking two parameters.
:*X:@b2:: shell.paste("
(
:: @function
::   ..
:: @brief
::   ..
:: @details
::   ..
:: @params
::   ..[in] ............... ..
::   ..[in] ............... ..
:: @returns
::   .. ................... ..
)")

; @hotstring
;   Functions taking three parameters.
:*X:@b3:: shell.paste("
(
:: @function
::   ..
:: @brief
::   ..
:: @details
::   ..
:: @params
::   ..[in] ............... ..
::   ..[in] ............... ..
::   ..[in] ............... ..
:: @returns
::   .. ................... ..
)")

; @section
;   DoxyGen documentation hotstrings for AutoHotkey Scripting
;
; @hotstring
;   File headers.
:*X:@af:: shell.paste("
(
; @file       ..
; @version    0.1
; @date       .. ..
; @author     Joeri Kok
; @copyright  GPL-3.0 license
;
; @title
;   ..
; @brief
;   ..
)")

; @hotstring
;   Namespaces.
:*X:@an:: shell.paste("
(
; @namespace
;   ..
; @brief
;   ..
)")

; @hotstring
;   Namespaces consisting of global variables.
:*X:@ag:: shell.paste("
(
; @namespace
;   ..
; @brief
;   ..
; @constants
;   .. .................... ..
)")

; @hotstring
;   Enumerations.
:*X:@ae:: shell.paste("
(
; @enum
;   ..
; @brief
;   ..
; @values
;   .. .................... ..
)")

; @hotstring
;   Classes.
:*X:@ac:: shell.paste("
(
; @class
;   ..
; @brief
;   ..
; @details
;   ..
)")

; @hotstring
;   Short functions returning no values.
:*X:@abf:: shell.paste("
(
; @function
;   ..
; @brief
;   ..
)")

; @hotstring
;   Short methods returning no values.
:*X:@abm:: shell.paste("
(
; @method
;   ..
; @brief
;   ..
)")

; @hotstring
;   Functions returning no values.
:*X:@adf:: shell.paste("
(
; @function
;   ..
; @brief
;   ..
; @details
;   ..
)")

; @hotstring
;   Methods returning no values.
:*X:@adm:: shell.paste("
(
; @method
;   ..
; @brief
;   ..
; @details
;   ..
)")

; @hotstring
;   Getter functions.
:*X:@arf:: shell.paste("
(
; @function
;   ..
; @brief
;   ..
; @returns
;   .. .................... ..
)")

; @hotstring
;   Getter methods.
:*X:@arm:: shell.paste("
(
; @method
;   ..
; @brief
;   ..
; @returns
;   .. .................... ..
)")

; @hotstring
;   Functions taking no parameters.
:*X:@a0f:: shell.paste("
(
; @function
;   ..
; @brief
;   ..
; @details
;   ..
; @returns
;   .. .................... ..
)")

; @hotstring
;   Methods taking no parameters.
:*X:@a0m:: shell.paste("
(
; @method
;   ..
; @brief
;   ..
; @details
;   ..
; @returns
;   .. .................... ..
)")

; @hotstring
;   Functions taking one parameter.
:*X:@a1f:: shell.paste("
(
; @function
;   ..
; @brief
;   ..
; @details
;   ..
; @params
;   ..[in] ................ ..
; @returns
;   .. .................... ..
)")

; @hotstring
;   Methods taking one parameter.
:*X:@a1m:: shell.paste("
(
; @method
;   ..
; @brief
;   ..
; @details
;   ..
; @params
;   ..[in] ................ ..
; @returns
;   .. 
)")

; @hotstring
;   Functions taking two parameters.
:*X:@a2f:: shell.paste("
(
; @function
;   ..
; @brief
;   ..
; @details
;   ..
; @params
;   ..[in] ................ ..
;   ..[in] ................ ..
; @returns
;   .. .................... ..
)")

; @hotstring
;   Methods taking two parameters.
:*X:@a2m:: shell.paste("
(
; @method
;   ..
; @brief
;   ..
; @details
;   ..
; @params
;   ..[in] ................ ..
;   ..[in] ................ ..
; @returns
;   .. 
)")

; @hotstring
;   Functions taking three parameters.
:*X:@a3f:: shell.paste("
(
; @function
;   ..
; @brief
;   ..
; @details
;   ..
; @params
;   ..[in] ................ ..
;   ..[in] ................ ..
;   ..[in] ................ ..
; @returns
;   .. .................... ..
)")

; @hotstring
;   Methods taking three parameters.
:*X:@a3m:: shell.paste("
(
; @method
;   ..
; @brief
;   ..
; @details
;   ..
; @params
;   ..[in] ................ ..
;   ..[in] ................ ..
;   ..[in] ................ ..
; @returns
;   .. 
)")

; @hotstring
;   Hotkeys.
:*X:@ahk:: shell.paste("
(
; @hotkey
;   ..
; @shortcut
;   .. .................... ..
)")

; @hotstring
;   Hotstrings.
:*X:@ahs:: shell.paste("
(
; @hotstring
;   ..
)")
