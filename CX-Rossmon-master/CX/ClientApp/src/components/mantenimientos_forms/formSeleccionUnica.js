import React, { useState, useEffect } from "react";
import { Form, Card, Button } from "react-bootstrap";
import "../mantenimientos_forms/css/formPasos.css";
import { InputText } from '../components_forms/inputs'
import { ObtenerUltimoIdPreguntas } from '../../servicios/ServicioPreguntasEncuestas';
import RespuestaDinamica from "./formRespuestaDinamica";


// creating functional component ans getting props from app.js and destucturing them
const SeleccionUnica = ({ data, proceso, onClickProcesarPregunta, onClickProcesarRespuestasPregunta, volverPasoDos, varIdTipoIndicador,
    varIdTipoEncuesta, varIdTipoMetrica, varIdTipoPerspectiva, varIdTipoContactoEncuesta, varIdTipoInteraccion }) => {

    //PARA EL VALOR DE LA PREGUNTA
    const [pregunta, setPregunta] = useState(proceso == 2 ? data.pregunta : '')

    //Donde se almacenan las respuestas dinamicas
    const [listaRespuesta, setListaRespuesta] = useState([{ respuesta: "" }]);

    //PARA OBTENER VALOR DEL ÚLTIMO ID DE LA TABLA PREGUNTAS Y ASÍ INGRESARLE LAS RESPUESTAS
    const [listaIdUltimaPregunta, setListaIdUltimaPregunta] = useState([]);


    useEffect(() => {

        ObtenerIdUltimaPregunta()
    }, []);

    //FUNCIÓN FLECHA PARA SETEAR EL ÚLTIMO VALOR ID DE LA TABLA PREGUNTAS
    const ObtenerIdUltimaPregunta = async () => {
        const soc = await ObtenerUltimoIdPreguntas();

        setListaIdUltimaPregunta(soc.idPreguntaEncuesta);
    }

    //validación
    const [validated, setValidated] = useState(false);

    const onClickAceptar = async (event) => {

        const form = event.currentTarget;
        if (form.checkValidity() === false) { //valida el form
            event.preventDefault();
            event.stopPropagation();
        } else { //si está correcto arma la variable datos
            const datos = {
                idPreguntaEncuesta: data.idPreguntaEncuesta,
                Pregunta: pregunta,
                idTipoEncuesta: parseInt(varIdTipoEncuesta),
                idTipoMetrica: parseInt(varIdTipoMetrica),
                idTipoPerspectiva: parseInt(varIdTipoPerspectiva),
                idTipoIndicador: parseInt(varIdTipoIndicador),
                idTipoPregunta: 1, //LA SELECCIÓN MÚLTIPLE ES TIPO DE PREGUNTA #1
                idTipoContactoEncuesta: parseInt(varIdTipoContactoEncuesta),
                idTipoInteraccion: parseInt(varIdTipoInteraccion),
                estado: 1,
            };
            if (proceso === 2) { datos.idPreguntaEncuesta = data.idPreguntaEncuesta; };

            const result = onClickProcesarPregunta(datos); //se ejecuta la función

            setValidated(true);
            event.preventDefault();
        }


    }

    const onClickAceptarR = async (event) => {

        const form = event.currentTarget;
        if (form.checkValidity() === false) { //valida el form
            event.preventDefault();
            event.stopPropagation();
        } else {

            //ALMACENAR LOS VALORES DE LAS RESPUESTAS
            let respuestas = listaRespuesta.map(function (entry) {
                return entry.respuesta;
            });

            const datos2 = {
                IdPreguntaEncuesta: listaIdUltimaPregunta + 1,

                //INGRESAR LOS VALORES
                Respuestas: respuestas
            };

            if (proceso === 2) { datos2.idPreguntaEncuesta = data.idPreguntaEncuesta; };

            const result2 = onClickProcesarRespuestasPregunta(datos2);


            setValidated(true);
            event.preventDefault();
        }
    }

    //FUNCIÓN FLECHA PARA PARA QUE UNA VEZ SE AGREGUE LA PREGUNTA, MOSTRAR FORM PARA AGREGAR SUS OPCIONES
    const mostrarFormOpciones = () => {
        var formOpciones = document.getElementById('formOpciones');
        formOpciones.style.display = 'block';
        var formPregunta = document.getElementById('formPregunta');
        formPregunta.style.display = 'none';
    }

    const onChangePreguntas = (e) => setPregunta(e.target.value);

    return (
        <div>
            <div id="formPregunta">
            <Card style={{ marginTop: 1 }}>
                <Card.Body>
                    <Form noValidate validated={validated} onSubmit={onClickAceptar} >

                        <h4>Selección Única</h4>

                        <InputText id='txt-Pregunta' label='Pregunta:' type='text' placeholder='Ingrese la pregunta' value={pregunta}
                            onChange={onChangePreguntas} mensajeValidacion="Este campo es requerido"
                        />

                        <div style={{ display: "flex", justifyContent: "space-around" }}>

                            <Button onClick={mostrarFormOpciones} className="primary" variant="primary" type="submit" size="sm">Listo</Button>
                                <Button className="btnListoVolver" variant="secondary" onClick={volverPasoDos}>
                                    Atras
                                </Button>
                        </div>

                    </Form>
                </Card.Body>
                </Card>
            </div>


            <div style={{ display: "none" }} id="formOpciones">
                <Card style={{ marginTop: 1 }}>

                    <RespuestaDinamica listaRespuesta={listaRespuesta} setListaRespuesta={setListaRespuesta} onClickAceptarR={onClickAceptarR} varIdTipoIndicador={varIdTipoIndicador} volverPasoDos={volverPasoDos} />

                </Card>
                </div>
        </div>
    );
};

export default SeleccionUnica;