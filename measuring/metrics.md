Exemplos de interese
=========================

Aínda que, nalgúns casos, as comunidades de software libre parecen semellantes, existen peculiaridades que definen a súa idiosincrasia propia. Matices como a selección dunha ferramenta de revisión de código, poden supor un cambio significativo no xeito en que se analiza o devandito código. Isto tamén acontece nos proxectos InnerSource.

De feito, unha parte chave do proceso InnerSource é a súa infraestrutura; xa que os/as desenvolvedores/as terán que traballar dun xeito específico segundo a mesma. Por exemplo, a comunidade de OpenStack usa a aplicación Gerrit e obriga aos/ás desenvolvedores/as que queren facer un *commit* dun fragmento de código a empregala. Isto significa que a comunidade ten a certeza  de que están a revisar calquera fragmento de código que se fusiona na liña de base.

Polo tanto, dispor da infraestrutura axeitada axuda a seguir un proceso predefinido. Non obstante, isto tamén permite ter máis en conta as métricas, ao establecer unhas fases claras do traballo que debe seguir cada desenvolvedor/a que traballe na organización.

Por outra banda, se as fases do traballo non está ben definidas ou se, pola contra, a infraestrutura do desenvolvemento permite as solucións alternativas, isto pode conducir a situacións nas que os atallos sexan habituais, de xeito que tanto o equipo de desenvolvemento como os cargos intermedios poidan sentirse frustrados/as por momentos.

Así, tendo en conta as diferenzas entre as dúas comunidades, o mundo InnerSource non está a salvo destas peculiaridades e calquera organización se enfronta a unha longa listaxe de posibles problemas ao instalar a infraestrutura, o modelo de gobernación, o sistema financeiro etc.

A continuación, preséntase unha listaxe de estudos de interese en empresas que aplican metodoloxías InnerSource. Esta listaxe non pretende ser exhaustiva, senón ofrecer exemplos para abordar e medir problemas específicos relacionados cos obxectivos habituais de InnerSource. Parte destas análises consisten en experiencias que proveñen do eido do software libre e que poderían ser útiles cando se fala de comunidades InnerSource. Os principais obxectivos comúns son as comunidades, a captación e mantemento de novos/as desenvolvedores/as e os procesos de revisión de código, entre outros.

Mentoría e axuda aos/ás novos/as contribuidores/as
--------------------------------

Esta análise está relacionada coa centralización do desenvolvemento e a atracción e mantemento de novos/as desenvolvedores/as. Cando se está na procura de aumentar a cantidade de participantes no ecosistema InnerSource, os *trusted committers* e os/as mentores/as serán esenciais. Ademais da súa participación no desenvolvemento, os/as *trusted commiters* están principalmente a cargo da revisión do proxecto e é moi posible que tamén das mentorías. A mentoría debería axudar a que os/as novos/as desenvolvedores/as se sintan cómodos/as traballando no proxecto e, para iso, os/as mentores/as axúdannos de varias maneiras no que concirne a entender como empregar a infraestrutura dispoñible (os repositorios Git, as listaxes de correo, o proceso de revisión de código etc.). Ademais, o/a mentor/a proporcionará indicacións sobre a documentación e as pautas para a escritura do código e o seu rol servirá para axudar a comprender como contribuír a esa comunidade en concreto. Por último, este rol tamén se encargará de revisar os fragmentos de código das primeiras *pull requests* dos/as novos/as contribuidores/as, e de asesoralos/as acerca da necesidade dos posibles cambios solicitados e sobre as potenciais peticións de actualizacións para ese fragmento de código.

Pódese facer un seguimento do proceso e rexistrar toda esta información. Pois como InnerSource está a fomentar unha infraestrutura transparente para tratar tódalas actividades relacionadas co desenvolvemento do produto, as discusións están abertas a calquera persoa interesada. Polo tanto, a análise de mentorías axuda a comprender quen son os/as mentores/as e se están a axudar a reducir o tempo do proceso de revisión, ao proporcionar instrucións claras sobre como proceder e información sobre o número de novos/as contribuidores/as que están a chegar á comunidade. Estes son só algúns exemplos de como realizar un seguimento potencial da actividade dos/as mentores/as e do impacto da mesma nunha empresa que está a traballar no marco de InnerSource.

Isto debe compararse con etapas anteriores do proceso de desenvolvemento de software e mellorar os puntos de conxestión da actividade cando sexa necesario. Un posible problema común nas comunidades de software libre, e tamén dentro das empresas, é unha alta carga de traballo dos/as mentores/as e revisores/as principais. Posto que, nalgúns momentos, estes/as son o punto de conxestión no proceso de revisión do código, é necesario incorporar máis revisores/as principais á comunidade.

Tamén é interesante fomentar a creación do rol dos/as mentores/as aínda que non sexan os/as revisores/as principais da comunidade, xa que poden aportar información útil aos/ás novos/as contribuidores/as. Este rol tamén pode ser visto como un/unha xestor/a da comunidade que facilita o camiño daqueles/as interesados/as en facer contribucións.

O ciclo de desenvolvemento
-----------------

O estudo do ciclo de desenvolvemento está relacionado coa redución do prazo de comercialización. Isto podería entenderse como un xeito de determinar se as políticas aplicadas están realmente a diminuír o tempo total de desenvolvemento dunha nova función ou de corrección dun erro, entre outras accións. O obxectivo desta análise consiste en comprender o tempo total que abrangue o proceso que vai desde a versión inicial do/a usuario/a ata a inclusión dos cambios no repositorio de código fonte.

Isto é importante para entender o tempo que adoita tardarse en implantar un novo requisito logo da fase de deseño, posta en marcha, proceso de revisión do código, integración continua e prazo de integración. Como aquí interveñen os SLA (polas súas siglas en inglés, Acordo de Nivel de Servizo), pódese calcular canto tarda a petición dunha nova funcionalidade en formar parte do código fonte e, despois, o tempo para activala ou corrixila en produción.

Algúns exemplos desta análise poderían ser acerca da rapidez coa que se executan os requisitos —por exemplo, se cadra 50 % ou 80 % deles—, e sobre a capacidade de reducir aínda máis a súa duración por parte da comunidade a medida que pasa o tempo. Tamén é posible dividir este proceso en varias fases: a *feature request*, as tarefas pendentes, o proceso de desenvolvemento, o proceso de revisión de código, a integración continua, a integración no código mestre, máis integración continua e, finalmente, a posterior activación da funcionalidade para o/a cliente/a. E, grazas a esta división en fases, será posible buscar puntos de conxestión.

Como exemplo, consideremos a fase de revisión do código. Hai dous roles que xogan un papel importante nela: o/a provedor/a e o/a revisor/a e, o tempo que ambos/as dedican ás súas tarefas específicas, pódese dividir. Deste xeito, existirá un tempo de espera para a acción do/a revisor/a (xeralmente, a propia revisión do código) e un tempo de espera para a acción do/a provedor/a (xeralmente, modificacións da *pull requests* solicitadas polo/a revisor/a).

Se se da o caso de que o tempo de espera para a acción dun/dunha provedor/a é demasiado elevado, é posible que a comunidade deba levar a cabo accións formativas cos/coas novos/a participantes ou desenvolvedores/as. Mais se é o tempo de espera para a acción do/a revisor/a o que aumenta co tempo, é necesario que a comunidade considere levar a cabo accións que axuden a reducilo. Por exemplo, poden escoller outros/as desenvolvedores/as para que sexan revisores/as de código, ou ser máis precisos/as coas peticións solicitadas aos/ás provedores/as.

Funil de contribuidores/as
-----------------

Esta análise céntrase en comprender canto tarda un/unha contribuidor/a da comunidade InnerSource en converterse en desenvolvedor/a ou revisor/a principal. As comunidades poden verse como cebolas que teñen varias capas. Por un lado, atoparemos persoas que só actúan como usuario/a final e, por outra banda, os/as que cando atopan un *bug*, deciden comunicarllo á comunidade. Tamén haberá usuarios/as que ademais de informar do *bug* e ademais envían unha *pull request*. E, finalmente, están os/as membros do equipo de desenvolvemento que  poden participar na comunidade de xeito ocasional, habitual ou, mesmo, como desenvolvedor/a principal.

A proporción habitual destas comunidades, polo menos en software libre, está a seguir unha distribución na que o 80 % da actividade realízaa un 20 % dos/as desenvolvedores/as. Prevese que as comunidades InnerSource sigan a mesma distribución, ao ser tamén o desenvolvemento dentro da organización un proceso aberto. Deste xeito, tamén contará cos roles mencionados, desde os/as usuarios/as finais puros/as ata os/as desenvolvedores/as principais.

Volvendo á análise, o estudo do funil de contribuidores/as ten como obxectivo comprender canto tempo lle leva a un desenvolvedor/a converterse en colaborador/a dun proxecto InnerSource; desde a primeira vez que solicita unha nova funcionalidade nunha listaxe de correo ou xera un informe de erros, ata o momento en que fai o seu primeiro *commit* ou a súa primeira revisión dun fragmento de código.

O obxectivo desta análise é, de feito, pór en contexto a eficacia do/a xestor/a da comunidade, dos/as mentores/as e doutros roles involucrados.

Isto tamén axuda a comprender que porcentaxe de colaboradores/as ou usuarios/as, finalmente, contribúen cun *commit* dun fragmento de código, e que porcentaxe chega a converterse en *trusted committer*  ao cabo dun tempo.

Compromiso
-----------------

Nesta sección abórdase a atracción e retención de novos membros. A medida que o método InnerSource evoluciona nunha organización, espérase que os/as desenvolvedores/as traballen noutros proxectos que non estean directamente relacionados coas súas áreas de negocio. Aqueles/as que participen por primeira vez, conformarán a taxa de atracción da comunidade. Pola contra, os/as que aínda estean a facer contribucións nese proxecto, conforman a taxa de retención. Ademais, os/as que deixen a comunidade despois dun tempo, formarán parte da taxa dos/as desenvolvedores/as que non foron retidos.

O obxectivo ideal de calquera proxecto é conseguir atraer á maior cantidade posible de desenvolvedores/as e mantelos/as para que non abandonen a comunidade. Pero isto non sempre acontece. A rotación é algo inevitable e os proxectos, as áreas de negocio e as organizacións teñen que lidar con ela. Con todo, é posible medir o compromiso da comunidade e o xeito no que determinadas políticas axudan máis que outras a atraer e reter a un maior número de desenvolvedores/as.

Esa taxa de atracción e retención podería verse afectada por outras variables como a linguaxe de programación, as persoas que traballan no proxecto ou as retribucións, entre outras.

Algunhas das preguntas específicas nesta análise gardan relación co grao de implicación ou sentimento de pertenza dos/as desenvolvedores/as na súa unidade de negocio ou na compañía, e permitirán pulir o proceso para atraer e manter aos/ás mellores desenvolvedores/as. En que medida o proxecto ou comunidade está a conseguir manter aos/ás desenvolvedores/as? A que distancia se atopa esta comunidade da comunidade co mellor desempeño? Coñécense as razóns polas que os/as anteriores desenvolvedores/as abandonaron a comunidade? E, se é así, estase a levar a cabo algunha acción para facerlles saber a súa importancia na mesma?

Cantas máis sexan as posibles métricas, con máis información sobre o tema analizado contará o proxecto. E isto tamén podería verse como unha forma de medir a neutralidade e a transparencia non só no proxecto, senón entre varias áreas empresariais e na empresa en xeral.

Eliminar os silos
-----------------

Este concepto está ligado tanto ás grandes empresas con varios equipos de desenvolvemento, como as que contan cun equipo distribuído por distintas localizacións xeográficas. Os/As desenvolvedores/as que están en distintos silos non saben o que están a facer os/as demais e non poden interactuar cos/coas outros/as desenvolvedores/as fóra do seu propio silo.

Os silos tamén son consecuencia das empresas xerarquizadas onde só os altos cargos teñen coñecemento do que están a facer os demais. Isto tamén pode observarse nos equipos de desenvolvemento que pertencen a un mesmo silo, nos que os membros do proxecto dependen dos mandos intermedios e, estes últimos, teñen o control de toda a información.

Difundir os coñecementos
-----------------

A medida que se eliminan os silos e a estrutura se volve menos xerarquizada, os coñecementos deben compartirse con tódolos/as integrantes da empresa. Os/as desenvolvedores/as chegan a un novo proxecto, fan contribucións e adquiren coñecementos sobre como avanzar, sobre a misión do devandito proxecto, a súa idiosincrasia e infraestrutura etc. Esas interaccións pódense medir grazas ao rastro que deixan nas distintas fontes de información.

Por exemplo, os/as desenvolvedores/as que traballan no mesmo arquivo poderán estar máis ou menos familiarizados/as coa biblioteca, mais contan cun vínculo entre eles/as; ese fragmento de código fonte. Do mesmo xeito, os/as que toman o rol de mentores/as e aqueles/as aos/ás que mentorizan tamén están a construír a súa propia rede social específica.

Algunhas métricas concretas de interese son as relacionadas coa análise de como o coñecemento chega a ser algo xeralizado, a medida que as persoas contribúen en distintos repositorios de información. Como exemplo, pódese empregar a territorialidade para comprender o illamento dos/as desenvolvedores/as mentres traballan. De feito, cando existen áreas do código que son altamente territoriais, pode querer dicir que ninguén está a prestar axuda nesa área de código. Así, cómpre entender os motivos do  *código spaghetti*, ou das funcionalidades complexas que requiren unha comprensión profunda do que se está a desenvolver etc.

Outras maneiras de medir a fluidez do coñecemento na comunidade consisten en analizar *o código orfo* que deixan os/as desenvolvedores/as que abandonan o proxecto. Cabe preguntarse se hai alguén que manteña esa parte do código, se hai outras persoas ao cargo que xa participaran niso con anterioridade, e cales son as áreas de coñecemento habituais das que se encargan os/as revisores/as principais.

Finalmente, métricas habituais, como a intermediación, poden axudar a facerlles comprender aos/ás involucrados/as os seus coñecementos acadados en varios proxectos; aquelas persoas que unen dúas redes e axudan a trasladar os coñecementos dunha comunidade a outra.

Cambio cultural dos mandos intermedios
-----------------

Os silos están relacionados cos mandos medios, pois estes/as son os/as encargados/as de filtrar e controlar que os equipos de desenvolvedores/as acaden uns prazos e obxectivos específicos. Non obstante, non se fomentan as actividades entre equipos e a falta de dinamismo afecta a outras áreas de innovación da compañía, xa que as persoas tenden a centrarse soamente no traballo polo que cobran e non polo traballo dos/as demais.

Adicionalmente, este rol nas empresas vén dado pola súa disposición xerárquica, e así é como se espera que funcione cos/coas demais traballadores/as que tenten escalar na xerarquía.

Porén, InnerSource ten como obxectivo fomentar as relacións entre desenvolvedores/as (D2D) mais non as de xerente a xerente (M2M), xa que iso retrasa o proceso de desenvolvemento e a toma de decisións a nivel técnico.

Escalabilidade
-----------------

Permitir as relacións D2D desde calquera lugar da empresa, conduce á escalabilidade pura. Os mandos intermedios tenden a reconverterse en xestores/as da comunidade que fomentan ese tipo de comportamentos, atraen hackatóns á súa empresa e convidan a persoas externas a participar nos seus proxectos, do mesmo xeito que tamén eles/as participan nos de outros/as.

Conservar aos/ás mellores desenvolvedores/as
-----------------

Contar coa liberdade e confianza da empresa na que traballan os/as desenvolvedores/as é un bo complemento para sentirse ben no traballo. De feito, un dos principais obxectivos de calquera organización é manter aos/ás seus/súas mellores desenvolvedores/as, pero tamén atraer aos/ás mellores do mundo. Este cambio cultural e no modo de traballar permite ter aos/ás desenvolvedores/as aliñados/as coa estratexia xeral da empresa.

Así pois, algúns dos obxectivos iniciais que cumprir dentro da empresa son: eliminar os silos, reconverter aos mandos intermedios, escalar o desenvolvemento e contar cun gran equipo. Seguindo o enfoque GQM, isto permítenos traballar nas cuestións específicas das que se busque resposta.

Permitir unha innovación en detalle
-----------------

Segundo o enfoque GQM, cada obxectivo pode presentar varias preguntas e cada pregunta pode responderse cunha ou máis métricas que axuden a comprender unha situación específica. Tamén se dá por feito que a organización xa aplicou InnerSource e quere verificar se o proceso conduce a unha mellora real con varios obxectivos concretos.

**Obxectivo: Permitir a innovación entre os/as desenvolvedores/as**

- Pregunta: Como interactúan os/as desenvolvedores/as con outras áreas da empresa?

    - Fundamento: A innovación é o resultado de mesturar varios puntos de vista cando se resolven problemas. Os/as desenvolvedores/as doutras disciplinas ou áreas de negocio formularán ideas que poden fomentar ese proceso de innovación.
    
    - Métrica: Número de desenvolvedores/as atraídos/as aos distintos proxectos InnerSource.
    
    - Métrica: Número de desenvolvedores/as retidos/as nos distintos proxectos InnerSource.
    
    - Métrica: Número de contribucións (*commits*, edicións das wiki, correos electrónicos e outras métricas sobre os/as contribuidores/as atraídos/as).
    
    - Métrica: Número de *trusted committers*.

- Pregunta: Como se están a crear os novos proxectos dentro da empresa?

    - Fundamento: A creación de novos proxectos é o resultado de permitir que os/as desenvolvedores/as se sintan cómodos/as dentro da organización. Os novos proxectos son a consecuencia de facerlles saber que poden aportar ideas á actividade principal da empresa.
    
    - Métrica: Número de novos proxectos na plataforma.
    
    - Métrica: Número de distintos/as desenvolvedores/as que crean novos proxectos.
    
    - Métrica: Número de desenvolvedores/as activos/as nos últimos proxectos.

- Pregunta: Están mellorando o soporte na empresa os proxectos de incubación?

    - Fundamento: Como a incubación de proxectos necesita un certo proceso ata a súa maduración, relaciónase directamente coa actividade no apartado sobre incubación do programa InnerSource.
    
    - Métrica: Número de novos proxectos en incubación.
    
    - Métrica: Número de proxectos incubados que se converteron en proxectos oficiais.

- Pregunta: Que novas tecnoloxías se introduciron na empresa?

    - Fundamento: É representativo o caso de PayPal[^7], que adoitaba traballar nunha linguaxe de programación específica. Mais a innovación chegou da man de novos/as desenvolvedores/as que coa introdución de JS conseguiron aforrar centos de liñas de código.
    
    - Métrica: Número de novas linguaxes de programación.
    
    - Métrica: Número de novas bibliotecas de software libre creadas no desenvolvemento.