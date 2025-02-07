<#import "assignment-notification-lib" as lib>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Новое поручение</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .header {
            font-size: 18px;
            font-weight: bold;
            color: #333;
            margin-bottom: 10px;
        }

        .content {
            font-size: 16px;
            color: #555;
            line-height: 1.5;
        }

        .footer {
            margin-top: 20px;
            text-align: center;
            font-size: 14px;
            color: #888;
        }

        .description-box {
            background-color: #f9f9f9;
            padding: 15px;
            border-left: 4px solid #007bff;
            margin-top: 10px;
            border-radius: 5px;
        }

        .button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #007bff;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }

        .button:hover {
            background-color: #0056b3;
        }

        .priority-high {
            color: #d9534f;
            font-weight: bold;
        }

        .priority-medium {
            color: #f0ad4e;
            font-weight: bold;
        }

        .priority-low {
            color: #5bc0de;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">Новое поручение</div>
    <div class="content">
        <p><strong>От кого:</strong> ${initiator!""}</p>
        <p><strong>Заголовок:</strong> ${title!""}</p>
        <p>
            <@lib.printPriority/>
        </p>
        <p>
            <@lib.printDeadline/>
        </p>
        <p><strong>Описание:</strong></p>
        <div class="description-box">
            <p>${description!""}</p>
        </div>
        <a href="${link.getRecordLink(docRef)}" class="button">Перейти к поручению</a>
    </div>
    <div class="footer">
        Это письмо создано автоматически, пожалуйста, не отвечайте на него.
    </div>
</div>
</body>
</html>
