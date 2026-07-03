---
parasoftVersion: 2025.3.0
productVersion: 10.7.4
schemaVersion: 04
suite:
  $type: TestSuite
  name: Test Suite
  hasEnvironmentConfig: true
  lastModifiedBy: TS
  tests:
  - $type: RESTClientToolTest
    name: REST Client
    testID: 1
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: randomuser
      outputTools:
      - $type: GenericDataBank
        iconName: XMLDataBank
        name: JSON Data Bank
        wrappedTool:
          $type: XMLtoDataSource
          iconName: XMLDataBank
          name: XML Data Bank
          selectedXPaths:
          - elementOption: 1
            contentOption: 1
            XMLDataBank_ExtractXPath: "/root/results[1]/item[1]/name[1]/last[1]/text()"
            mode: 1
          canonicalizeOutput: true
          xmlMessage: true
          virtualDSCreator:
            writableColumns:
            - customName: "Test 1: last"
        conversionStrategy:
          dataFormatName: JSON
          conversionStrategyId: JSON
          conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
      formJson:
        value:
          $type: ElementValue
          writeType: true
          type:
            $type: ElementType
            localName: root
            bodyType:
              $type: ComplexType
              attributes:
              - ns: ""
                name: type
                fixed: object
                contentType:
                  $type: StringType
                required: true
              name: rootType
              compositor: true
              compositorObj:
                $type: AllCompositor
          replacedColumn: ""
          values:
          - $type: ComplexValue
            replacedColumn: ""
            attributes:
            - replacedColumn: ""
              value:
                $type: StringValue
                replacedColumn: ""
                value: object
              useValue: true
            compositorValue: true
            compositorValueObj:
              replacedColumn: ""
              values:
                $type: CompositorValueSetCollectionSet
                set:
                - $type: CompositorValueSet
        elementTypeName: root
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      formInput:
        value:
          $type: ElementValue
          writeType: true
          type:
            $type: ElementType
            localName: ""
            bodyType:
              $type: ComplexType
              name: anonymous
              compositor: true
              compositorObj:
                $type: SequenceCompositor
          replacedColumn: ""
          values:
          - $type: ComplexValue
            replacedColumn: ""
            compositorValue: true
            compositorValueObj:
              replacedColumn: ""
              values:
                $type: CompositorValueSetCollectionSet
                set:
                - $type: CompositorValueSet
      constrainToSchema: false
      jmsMessageOutputProvider:
        $type: JMSMessageOutputProvider
        jmsOutputProviderRequest:
          $type: JMSOutputProvider
          name: Request Object
          menuName: Object
        jmsOutputProviderResponse:
          $type: JMSOutputProvider
          name: Response Message Object
          menuName: Message Object
      router:
        values:
        - $type: ScriptedValue
        fixedValue:
          $type: StringTestValue
          HTTPClient_Endpoint: https://randomuser.me/api/?results=1
      urlParameters:
        properties:
        - name: results
          value:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: 1
      transportProperties:
        manager:
          protocol: 1
          properties:
          - $type: HTTPClientHTTPProperties
            followRedirects:
              bool: true
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
            protocol: 1
            keepAlive1_1:
              bool: true
        messageExchangePattern:
          inverted: true
      outputProviders:
        requestHeader:
          $type: HTTPNamedToolOutputProvider
          menuName: Transport Header
          name: Request Transport Header
        responseHeader:
          $type: HTTPNamedToolOutputProvider
          menuName: Transport Header
          name: Response Transport Header
        xmlRequestOutput:
          $type: NamedXMLToolOutputProvider
          menuName: Traffic
          name: Request Traffic
        trafficOutput:
          m_name: Traffic Stream
        objectOutput:
          $type: ObjectOutputProvider
          outputTools:
          - $type: TrafficViewer
            iconName: TrafficViewer
            name: Traffic Viewer
            showRequestHeaders: true
            showResponseHeaders: true
          - $type: HttpPenTestingTool
            allowToolbar: false
            iconName: PentestTool
            name: Penetration Testing Tool
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: Traffic Object
            errorsOutput:
              name: Errors
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: application/json
      mode: Literal
      literalQuery:
        isPropertiesRef: true
      literalPath:
        pathElements:
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: api
        - {}
      resourceMethod:
        httpMethod: GET
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  - $type: HTTPClientToolTest
    name: Messaging Client
    testID: 2
    tool:
      $type: HTTPClient
      iconName: HTTPClient
      name: Messaging Client
      formJson:
        value:
          $type: ElementValue
          writeType: true
          hasReference: true
          qnameAsString: :root
          replacedColumn: ""
          values:
          - $type: ComplexValue
            replacedColumn: ""
            attributes:
            - replacedColumn: ""
              value:
                $type: StringValue
                replacedColumn: ""
                value: object
              useValue: true
            compositorValue: true
            compositorValueObj:
              replacedColumn: ""
              values:
                $type: CompositorValueSetCollectionSet
                set:
                - $type: CompositorValueSet
        elementTypeName: root
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      formInput:
        value:
          $type: ElementValue
          writeType: true
          type:
            $type: ElementType
            bodyType:
              $type: ComplexType
              namespace: ""
              name: anonymous
              compositor: true
              compositorObj:
                $type: SequenceCompositor
          replacedColumn: ""
          values:
          - $type: ComplexValue
            replacedColumn: ""
            compositorValue: true
            compositorValueObj:
              replacedColumn: ""
              values:
                $type: CompositorValueSetCollectionSet
                set:
                - $type: CompositorValueSet
      jmsMessageOutputProvider:
        $type: JMSMessageOutputProvider
        jmsOutputProviderRequest:
          $type: JMSOutputProvider
          name: Request Object
          menuName: Object
        jmsOutputProviderResponse:
          $type: JMSOutputProvider
          name: Response Message Object
          menuName: Message Object
      transportProperties:
        manager:
          protocol: 1
          properties:
          - $type: HTTPClientHTTPProperties
            followRedirects:
              bool: true
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: POST
            protocol: 1
            keepAlive1_1:
              bool: true
          - $type: JNDIProperties
            msgExpiration:
              $type: JMSMessageExpiration
            bytesMessageReadMethod:
              string: readUTF()
            responseCorrelation:
              correlationId:
                name: JMSCorrelationID
                value:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: StringTestValue
              messageSelector: ""
            queueProperties:
              jmsDestination:
                name: JMSDestination
                value:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: StringTestValue
                    value: JMS_RequestQueue
              jmsReplyTo:
                name: JMSReplyTo
                value:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: StringTestValue
                    value: JMS_ResponseQueue
            msgType:
              string: javax.jms.TextMessage
            useP2P:
              bool: true
            connProperties:
              jmsFactory:
                name: Connection Factory
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: MQ_JMS_MANAGER
              jndiFactory:
                name: Initial Context
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: com.sun.jndi.fscontext.RefFSContextFactory
              providerURL:
                name: Provider URL
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: file:/C:/JNDI-Directory
              auth:
                service:
                  name: Service
                  value:
                    fixedValue:
                      $type: StringTestValue
                username:
                  name: Username
                  value:
                    fixedValue:
                      $type: StringTestValue
                password:
                  name: Password
                  value:
                    fixedValue:
                      $type: PasswordTestValue
            useSync: true
          - $type: SonicMQJNDIProperties
            msgExpiration:
              $type: JMSMessageExpiration
            bytesMessageReadMethod:
              string: readUTF()
            responseCorrelation:
              correlationId:
                name: JMSCorrelationID
                value:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: StringTestValue
              messageSelector: ""
            queueProperties:
              jmsDestination:
                name: JMSDestination
                value:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: StringTestValue
                    value: JMS_RequestQueue
              jmsReplyTo:
                name: JMSReplyTo
                value:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: StringTestValue
                    value: JMS_ResponseQueue
            msgType:
              string: progress.message.jclient.MultipartMessage
            useP2P:
              bool: true
            connProperties:
              initialContextProps:
              - name: java.naming.security.credentials
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: Administrator
              - name: java.naming.security.principal
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: Administrator
              jmsFactory:
                name: Connection Factory
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: ConnectionFactory
              jndiFactory:
                name: Initial Context
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: com.sonicsw.jndi.mfcontext.MFContextFactory
              providerURL:
                name: Provider URL
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: "tcp://[hostname]:2506"
              auth:
                service:
                  name: Service
                  value:
                    fixedValue:
                      $type: StringTestValue
                username:
                  name: Username
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: Administrator
                password:
                  name: Password
                  value:
                    fixedValue:
                      $type: PasswordTestValue
            useSync: true
            partContentID:
              string: part1
          - $type: MQProperties
            mqrfh2fields:
              version:
                name: Version
                value:
                  fixedValue:
                    $type: StringTestValue
              encoding:
                name: Encoding
                value:
                  fixedValue:
                    $type: StringTestValue
              codedCharSetId:
                name: CodedCharSetId
                value:
                  fixedValue:
                    $type: StringTestValue
              format:
                name: Format
                value:
                  fixedValue:
                    $type: StringTestValue
              flags:
                name: Flags
                value:
                  fixedValue:
                    $type: StringTestValue
              nameValueCodedCharSetId:
                name: NameValueCodedCharSetId
                value:
                  fixedValue:
                    $type: StringTestValue
            mcd:
              msd:
                name: Message Service Domain
                value:
                  fixedValue:
                    $type: StringTestValue
              set:
                name: Message Set
                value:
                  fixedValue:
                    $type: StringTestValue
              type:
                name: Message Type
                value:
                  fixedValue:
                    $type: StringTestValue
              fmt:
                name: Output Format
                value:
                  fixedValue:
                    $type: StringTestValue
            psc:
              subIdentity:
                name: SubIdentity
                value:
                  fixedValue:
                    $type: StringTestValue
              qName:
                name: QName
                value:
                  fixedValue:
                    $type: StringTestValue
              qMgrName:
                name: QMgrName
                value:
                  fixedValue:
                    $type: StringTestValue
              subPoint:
                name: SubPoint
                value:
                  fixedValue:
                    $type: StringTestValue
              filter:
                name: Filter
                value:
                  fixedValue:
                    $type: StringTestValue
              subName:
                name: SubName
                value:
                  fixedValue:
                    $type: StringTestValue
              subUserData:
                name: SubUserData
                value:
                  fixedValue:
                    $type: StringTestValue
            jms:
              destination:
                name: Destination
                value:
                  fixedValue:
                    $type: StringTestValue
              replyTo:
                name: Reply To
                value:
                  fixedValue:
                    $type: StringTestValue
              timestamp:
                name: Timestamp
                value:
                  fixedValue:
                    $type: StringTestValue
              expiration:
                name: Expiration
                value:
                  fixedValue:
                    $type: StringTestValue
              correlationId:
                name: Correlation Id
                value:
                  fixedValue:
                    $type: StringTestValue
              priority:
                name: Priority
                value:
                  fixedValue:
                    $type: StringTestValue
              deliveryMode:
                name: Delivery Mode
                value:
                  fixedValue:
                    $type: StringTestValue
            mqQueueManager:
              ccsid:
                name: CCSID
                value:
                  fixedValue:
                    $type: StringTestValue
            mqSSL:
              peerName:
                name: Peer Name
                value:
                  fixedValue:
                    $type: StringTestValue
              cipherSuite:
                $type: EnumNameValuePair
                name: CipherSuite
                value:
                  fixedValue:
                    $type: StringTestValue
            conn:
              putManagerId:
                name: Put Manager Id
                value:
                  fixedValue:
                    $type: StringTestValue
              getManagerId:
                name: Get Manager Id
                value:
                  fixedValue:
                    $type: StringTestValue
              channel:
                name: Channel
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: CHANNEL1
              host:
                name: Host
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: host
              port:
                name: Port
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: 1414
              manager:
                name: Queue Manager
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: queue.manager.1
              putQueue:
                name: Put Queue
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: PutQueue
              getQueue:
                name: Get Queue
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: GetQueue
              auth:
                service:
                  name: Service
                  value:
                    fixedValue:
                      $type: StringTestValue
                username:
                  name: Username
                  value:
                    fixedValue:
                      $type: StringTestValue
                password:
                  name: Password
                  value:
                    fixedValue:
                      $type: PasswordTestValue
            mqpmMisc:
              applicationIdData:
                name: Application ID data
                value:
                  fixedValue:
                    $type: StringTestValue
              correlationID:
                name: Correlation ID
                value:
                  fixedValue:
                    $type: StringTestValue
              expiry:
                name: Expiry (in tenths of a second)
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: -1
              messageSequenceNumber:
                name: Message sequence number
                value:
                  fixedValue:
                    $type: StringTestValue
              replyToQueueManagerName:
                name: Reply queue manager name
                value:
                  fixedValue:
                    $type: StringTestValue
              replyToQueueName:
                name: Reply queue name
                value:
                  fixedValue:
                    $type: StringTestValue
              putApplicationName:
                name: Put application name
                value:
                  fixedValue:
                    $type: StringTestValue
              applicationOriginData:
                name: Originating application data
                value:
                  fixedValue:
                    $type: StringTestValue
              userId:
                name: User ID
                value:
                  fixedValue:
                    $type: StringTestValue
            mqgmMisc:
              correlationID:
                name: Correlation Id
                value:
                  fixedValue:
                    $type: StringTestValue
              waitInterval:
                name: Wait Interval(in milliseconds)
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: -1
          - $type: RMIProperties
            hostName:
              name: Host
              value:
                fixedValue:
                  $type: StringTestValue
                  value: Host
            portNumber:
              name: Port
              value:
                fixedValue:
                  $type: StringTestValue
                  value: Port
            bindingName:
              name: Binding
              value:
                fixedValue:
                  $type: StringTestValue
                  value: Binding
            remoteInterface:
              name: Remote Interface
              value:
                fixedValue:
                  $type: StringTestValue
                  value: Remote Interface
            methodName:
              name: Method Name
              value:
                fixedValue:
                  $type: StringTestValue
                  value: Method Name
        messageExchangePattern:
          inverted: true
      outputProviders:
        requestHeader:
          $type: HTTPNamedToolOutputProvider
          menuName: Transport Header
          name: Request Transport Header
        responseHeader:
          $type: HTTPNamedToolOutputProvider
          menuName: Transport Header
          name: Response Transport Header
        xmlRequestOutput:
          $type: NamedXMLToolOutputProvider
          menuName: Traffic
          name: Request Traffic
        trafficOutput:
          m_name: Traffic Stream
        objectOutput:
          $type: ObjectOutputProvider
          outputTools:
          - $type: TrafficViewer
            iconName: TrafficViewer
            name: Traffic Viewer
            showRequestHeaders: true
            showResponseHeaders: true
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: text/xml
  - $type: ToolTest
    name: DB Tool
    testID: 3
    tool:
      $type: DbTool
      iconName: DBTool
      name: DB Tool
      magicToken:
        fixedValue:
          $type: StringTestValue
          value: GO
      outputProviders:
        xmlRequestOutput:
          $type: NamedXMLToolOutputProvider
          name: SQL Query
        xmlResponseOutput:
          $type: NamedXMLToolOutputProvider
          name: Results as XML
        objectOutput:
          $type: ObjectOutputProvider
          outputTools:
          - $type: TrafficViewer
            iconName: TrafficViewer
            name: Traffic Viewer
            showRequestHeaders: true
            showResponseHeaders: true
          name: Traffic Object
      failOnSQLException: true
      account:
        local:
          $type: DbConfigSettings
  - $type: ToolTest
    name: Extension Tool
    testID: 4
    tool:
      $type: MethodTool
      iconName: Method
      name: Extension Tool
    writeInput: true
    inputType: InputUsable
    input:
      use: 1
      text:
        text: ""
        type: text/plain
