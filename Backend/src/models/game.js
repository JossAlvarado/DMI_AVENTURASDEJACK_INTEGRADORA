import { DataTypes } from "sequelize";
import {dbConnection1} from "../config/db.js";

const Game = dbConnection1.define("game", {
    title: {
        type: DataTypes.STRING(255),
        allowNull: false
    },
    startAt: {
        type: DataTypes.STRING,
        allowNull: false,
        defaultValue: DataTypes.NOW,
    },
    endsAt: DataTypes.STRING,

    score: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 0
    },
    duration: {
        type: DataTypes.INTEGER,
        allowNull: true, // Permite que la columna sea nula
        defaultValue: null, // Establece el valor predeterminado como null
    }
});

export default Game;
