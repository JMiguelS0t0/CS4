import axios from "axios";
import react from "./../assets/react.svg";
import Clogo from "./../assets/Clogo.svg";
import { useEffect, useState } from "react";
import "./../App.css";

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
    <>
      <div>
        <a target="_blank">
          <img src={react} className="logo react" alt="React logo" />
        </a>
        <a target="_blank">
          <img src={Clogo} className="logo C#" alt="C# logo" />
        </a>
      </div>
      <h1>API C# + React</h1>
      <div className="card">
        <table className="table">
          <thead>
            <tr>
              <th>Documento de Identidad</th>
              <th>Nombres</th>
              <th>Telefono</th>
              <th>Correo</th>
              <th>Ciudad</th>
              <th>Fecha de Registro</th>
            </tr>
          </thead>
          <tbody>
            {Usuarios.map((usuario) => (
              <tr key={usuario.id}>
                <td>{usuario.DocumentoIdentidad}</td>
                <td>{usuario.Nombres}</td>
                <td>{usuario.Telefono}</td>
                <td>{usuario.Correo}</td>
                <td>{usuario.Ciudad}</td>
                <td>{usuario.FechaRegistro}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </>
  );
};

export default Usuario;
