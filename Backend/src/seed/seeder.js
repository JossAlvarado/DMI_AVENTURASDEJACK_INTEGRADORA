import playersData from "./players.js";
import gamesData from "./games.js";
import { exit } from "process";
import { Player, Game } from "../models/relationships.js"; // Ajusta la ruta según la estructura de tu proyecto
import { dbConnection1 } from "../config/db.js"; // Ajusta la ruta según la estructura de tu proyecto

const importarDatos = async () => {
    try {
        // Usar la conexión a la base de datos
        await dbConnection1.authenticate();

        // Sincronizar los modelos con la base de datos
        await dbConnection1.sync();

        // Crear registros en la base de datos
        await Player.bulkCreate(playersData);
        await Game.bulkCreate(gamesData);

        console.log('Datos importados correctamente');
        exit();
    } catch (error) {
        console.error('Error al importar datos:', error);
        exit(1);
    }
};

const eliminarDatos = async () => {
    try {
        // Sincronizar la base de datos forzando la eliminación de todas las tablas
        await dbConnection1.sync({ force: true });

        console.log('Datos eliminados correctamente');
        exit();
    } catch (error) {
        console.error('Error al eliminar datos:', error);
        exit(1);
    }
};

// Verificar el argumento proporcionado en la línea de comandos
const argumento = process.argv[2];

if (argumento === "-i") {
    importarDatos();
} else if (argumento === "-e") {
    eliminarDatos();
} else {
    console.error('Comando no reconocido. Usa "-i" para importar datos o "-e" para eliminar datos.');
    exit(1);
}
