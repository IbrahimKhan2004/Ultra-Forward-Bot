# Ultra Forward Bot

The Ultra Forward Bot is a powerful and versatile Telegram bot designed to automate the process of forwarding messages from one or more channels to a destination channel. It offers a rich set of features, including advanced filtering, custom captions, and support for both public and private channels.

This bot is ideal for users who need to consolidate information from multiple sources, archive messages, or share content across different channels automatically.

## Key Features

- **Force Subscribe:** Require users to join a specific channel before they can use the bot.
- **Customizable Forwarding:**
  - Set custom captions and buttons on forwarded messages.
  - Skip duplicate messages to avoid clutter.
  - Filter messages based on type (e.g., text, photo, video) and file extension.
  - Use keywords to include or exclude messages.
- **User Bot Integration:** Log in with a user account to forward messages from private channels.
- **Broadcast System:** Send messages to all users of the bot (owner only).
- **Flexible Deployment:** Easily deploy the bot to various platforms like Koyeb, Heroku, and Railway, or on your own VPS.

## Deployment

You can deploy the Ultra Forward Bot on a variety of platforms. Below are instructions for some of the most popular options.

### One-Click Deployment

[![Deploy to Koyeb](https://www.koyeb.com/static/images/deploy/button.svg)](https://app.koyeb.com/deploy?type=git&repository=github.com/IbrahimKhan2004/Ultra-Forward-Bot&branch=main&name=ultra-forward-bot)
[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/IbrahimKhan2004/Ultra-Forward-Bot)
[![Deploy to Railway](https://railway.app/button.svg)](https://railway.app/deploy?template=https://github.com/IbrahimKhan2004/Ultra-Forward-Bot)
[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/IbrahimKhan2004/Ultra-Forward-Bot)

### Manual Deployment (VPS)

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/IbrahimKhan2004/Ultra-Forward-Bot.git
    cd Ultra-Forward-Bot
    ```

2.  **Install the dependencies:**
    ```bash
    pip3 install -U -r requirements.txt
    ```

3.  **Configure the environment variables:**
    -   Create a `.env` file (or set the variables in your environment):
        ```bash
        cp sample.env .env
        nano .env  # Edit the file with your values
        ```
    -   See the **Configuration** section below for a full list of variables.

4.  **Run the bot:**
    ```bash
    python3 bot.py
    ```

## Configuration

The bot is configured using environment variables. Below is a complete list of all the variables you can use.

| Variable            | Description                                                                                             | Required | Default              |
| ------------------- | ------------------------------------------------------------------------------------------------------- | -------- | -------------------- |
| `API_ID`            | Your Telegram API ID, obtained from [my.telegram.org](https://my.telegram.org).                           | Yes      |                      |
| `API_HASH`          | Your Telegram API Hash, obtained from [my.telegram.org](https://my.telegram.org).                         | Yes      |                      |
| `BOT_TOKEN`         | The token for your Telegram bot, obtained from [@BotFather](https://t.me/BotFather).                        | Yes      |                      |
| `DATABASE_URI`      | The connection URI for your MongoDB database, from [MongoDB Atlas](https://cloud.mongodb.com).            | Yes      |                      |
| `DATABASE_NAME`     | The name of your database in MongoDB.                                                                     | Yes      |                      |
| `OWNER_ID`          | The Telegram user ID of the bot's owner.                                                                  | Yes      |                      |
| `LOG_CHANNEL`       | The ID of a Telegram channel where the bot will send logs and notifications about new users.                | No       | `0` (disabled)       |
| `BOT_SESSION`       | The session name for the bot.                                                                             | No       | `"Auto_Forward"`     |
| `FORCE_SUB_CHANNEL` | The username or ID of a channel that users must join to use the bot (e.g., `@YourChannel`).                 | No       |                      |
| `FORCE_SUB_ON`      | Set to `"True"` to enable the force subscribe feature.                                                    | No       | `"True"`             |
| `PORT`              | The port that the web server will run on.                                                                 | No       | `8080`               |

## Commands

Here is a list of the available commands for the bot:

| Command     | Description                                               |
| ----------- | --------------------------------------------------------- |
| `/start`    | Starts the bot and displays the main menu.                |
| `/forward`  | Begins the process of setting up a new message forward.   |
| `/settings` | Opens the settings menu to configure your forwarding rules. |
| `/cancel`   | Cancels the current forwarding operation.                 |
| `/reset`    | Resets all your personal settings to their defaults.      |
| `/donate`   | Provides information on how to support the developer.     |

### Owner-Only Commands

| Command       | Description                                                 |
| ------------- | ----------------------------------------------------------- |
| `/resetall`   | Resets the settings for all users of the bot.               |
| `/broadcast`  | Sends a message to all users of the bot.                    |
| `/restart`    | Restarts the bot.                                           |

## Credits

-   **Developer:** [Silicon Botz](https://t.me/Silicon_Bot_Update)
-   **Special Thanks:** HORRID, Mr.SPIDY, AnonymouS
