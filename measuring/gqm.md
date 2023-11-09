Enfoque GQM (Obxectivo-Pregunta-Métrica)
=============================

O enfoque GQM é un mecanismo paraugas que permite definir e determinar as métricas do software. Isto pódese estender facilmente á súa aplicación noutros escenarios, aínda que o sistema InnerSource adáptase especialmente ben a este tipo de avaliación.

Segundo o documento orixinal: 

>Calquera proceso de enxeñaría require retroalimentación e avaliación. O desenvolvemento de software é unha disciplina de enxeñaría e as medicións serven, precisamente, de retroalimentación e avaliación. A medición e os datos permiten comprender e controlar os procesos e produtos do software. Facilita a toma de decisión intelixentes e a mellora co paso do tempo. Pero o foco das medicións debe pórse nos obxectivos e modelos. É necesario establecer metas para cada un dos procesos e produtos do software e estes obxectivos deben poder medirse impulsados polos modelos axeitados.[^6]

O enfoque GQM emprégase, a grande escala, no ámbito académico e na industria como método para determinar as métricas útiles para un conxunto predefinido de obxectivos.

No caso específico de InnerSource, en resumo, algúns dos obxectivos máis importantes poden ser os seguintes:

- Obxectivo 1: Mellorar a calidade do código mediante CI e revisión por pares.
- Obxectivo 2: Diminuír o prazo de comercialización.
- Obxectivo 3: Permitir a innovación entre os/as desenvolvedores/as.
- Obxectivo 4: Reducir os custos de desenvolvemento e mantemento.
- Obxectivo 5: Mellorar o compromiso dentro da organización.

Logo, para cada un dos obxectivos pode haber unha ou máis preguntas que respondan a eses obxectivos específicos. E gardarán especial relación coa fase na que se atope o proceso. Aínda que poden manterse os mesmos obxectivos cando acabamos de comezar a aplicar InnerSource dentro dunha organización e cando a metodoloxía está totalmente establecida, as preguntas relacionadas poderán ser potencialmente diferentes.

Centrémonos no obxectivo número 5: mellorar o compromiso dentro da organización. Podemos comezar este proceso a partir dunha organización xerárquica na que existen silos de desenvolvedores/as e emprégase *Agile* como metodoloxía principal de desenvolvemento de software. Como punto de partida, a cuestión esencial sería comprender se as políticas específicas están funcionando realmente; como abrir a infraestrutura, permitir a discusión pública, ter reunións de deseño, así como unha longa lista de actividades que fomenten a interacción entre desenvolvedores/as. Por outra banda, nunha organización InnerSource, a cuestión sería buscar mellorar o compromiso ou, polo menos, contar cun proceso de desenvolvemento de software estable neste sentido.

**Comezar de cero**: Pregunta 1: Cantos dos/as desenvolvedores/as as recén chegados/as participan nos proxectos InnerSource?

**Traballar nunha comunidade InnerSource**: Pregunta 1: A atracción de novos/as desenvolvedores/as mellora co paso do tempo? E esta pregunta leva á pregunta 2: Estanse a conservar estes/as novos/as desenvolvedores/as? E, por último, a pregunta 3: Canto tempo tarda un/unha desenvolvedor/a en abandonar a comunidade?

E está claro que ao comezar de cero cómpre centrarse na mellora das fases iniciais, mentres que nun proceso maduro existirán outras cuestións de importancia.

Agora imos descubrir as métricas vinculadas a cada unha das preguntas e pode que se dea resposta a algunhas delas ao mesmo tempo. A continuación, nun caso de catro preguntas, poderiamos definir as seguintes métricas:

- P1: Cantos dos/as novos/as desenvolvedores/as atraídos/as están a participar en proxectos InnerSource?

  - M1. Número de novos/as desenvolvedores/as.
 
  - M2. Cantidade relativa de desenvolvedores/as novos/as respecto do total.
  
- P2: Está mellorando co tempo a atracción de novos/as desenvolvedores/as?

  - M1. Número de novos/as desenvolvedores/as.
  
  - M2. Cantidade relativa de desenvolvedores/as novos/as respecto do total.
  
  - M3. Inclinación da tendencia de novos/as desenvolvedores/as que se incorporan ao proxecto.
  
- P3: Estanse a manter os/as novos/as desenvolvedores/as?

  - M4. Número de desenvolvedores/as incorporados/as no último ano, que aínda traballan no proceso.
  
  - M5. Cantidade relativa de desenvolvedores/as retidos/as respecto do total dos/as incorporados/as no último ano.
  
- P4: Canto tempo tarda un/unha desenvolvedor/a en abandonar a compañía?

  - Mediana do tempo total de tódolos/as desenvolvedores/as desde o seu primeiro *commit* ata o último.