import axios from "axios";
import { useEffect, useState } from "react";

const Usuario = () => {
  const [Usuarios, setUsuarios] = useState([]);

  useEffect(() => {
    axios
      .get("https://localhost:44371/api/Usuario")
      .then((response) => {
        setUsuarios(response.data);
      })
      .catch((error) => {
        console.log("Error al hacer la consulta ", error);
      });
  }, []);

  return (
    <ul>
      {Usuarios.map((usuario) => (
        <li key={usuario.id}>
          <h2>{usuario.DocumentoIdentidad}</h2>
          <h2>{usuario.Nombres}</h2>
          <h2>{usuario.Telefono}</h2>
          <h2>{usuario.Correo}</h2>
          <h2>{usuario.Ciudad}</h2>
          <h2>{usuario.FechaRegistro}</h2>
        </li>
      ))}
    </ul>
  );
};

export default Usuario;
