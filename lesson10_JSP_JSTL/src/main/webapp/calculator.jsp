<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form method="post" action="/calculate">
    <fieldset>
        <legend>Calculator</legend>
        <table>
            <tr>
                <td>Số thứ nhất: </td>
                <td><label>
                    <input name="first-operand" type="text"/>
                </label></td>
            </tr>
            <tr>
                <td>Phép tính: </td>
                <td>
                    <label>
                        <select name="operator">
                            <option value="+">Cộng</option>
                            <option value="-">Trừ</option>
                            <option value="*">Nhân</option>
                            <option value="/">Chia</option>
                        </select>
                    </label>
                </td>
            </tr>
            <tr>
                <td>Số thứ hai: </td>
                <td><label>
                    <input name="second-operand" type="text"/>
                </label></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Calculate"/></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>