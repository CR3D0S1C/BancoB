---
parasoftVersion: 2025.3.0
productVersion: 10.7.4
schemaVersion: 03
suite:
  $type: TestSuite
  name: Test Suite
  hasEnvironmentConfig: true
  environmentConfig:
    environments:
    - name: QA
    - variables:
      - name: URL-BASE
        value: ""
      name: PREPROD
      active: true
    - variables:
      - name: URL-BASE
        value: ""
      name: PRODUCCION
  lastModifiedBy: TS
  authentications:
  - $type: BasicAuthentication
    name: Basic
    dataSourceNames:
    - Tabldedatos1
    username:
      fixedValue:
        $type: StringTestValue
        username: admin
    password:
      fixedValue:
        $type: PasswordTestValue
        password: AwAAABh0SEJJU3JQcnhjODNQOEJwNXJlb3N3PT0=
  - $type: NTLMAuthentication
    name: NTLM
    dataSourceNames:
    - Tabldedatos1
  - $type: OAuthAuthentication
    name: OAuth 1.0
    dataSourceNames:
    - Tabldedatos1
  dataSources:
  - id: ds_-446482690_1783025262616_1390612823
    impl:
      $type: TableDataSource
      model:
        columnIdentifiers:
        - user
        - pass
        rows:
        - - a
          - c
        - - b
          - d
    name: Tabldedatos1
    useAllRows: true
  - id: ds_-446482690_1783025279261_569867161
    impl:
      $type: TableDataSource
      model:
        columnIdentifiers:
        - dato1
        - dato2
        rows:
        - - a
          - c
        - - b
          - d
    name: Tabladedatos2
    useAllRows: true
  runMode: 1
  tests:
  - $type: RESTClientToolTest
    name: REST Client
    testID: 1
    tool:
      $type: RESTClient
      dataSourceNames:
      - Tabladedatos2
      iconName: RESTClient
      name: Ejemplo
      outputTools:
      - $type: GenericAssertionTool
        dataSourceNames:
        - Tabldedatos1
        iconName: XMLAssertor
        name: JSON Assertor
        wrappedTool:
          $type: XMLAssertionTool
          dataSourceNames:
          - Tabldedatos1
          iconName: XMLAssertor
          name: XML Assertor
          assertions:
          - $type: ValueAssertion
            timestamp: 1782942731215
            name: NameAbility
            extractEntireElement: true
            Assertion_XPath: "/root/abilities/item[1]/ability/name/string()"
            value:
              name: Value
              value:
                fixedValue:
                  $type: StringTestValue
                  value: limber
                parameterizedValue:
                  column: Use Data Source Wizard
          - $type: ValueAssertion
            timestamp: 1782942977067
            name: NameAbility2
            extractEntireElement: true
            Assertion_XPath: "/root/abilities/item[2]/ability/name/string()"
            value:
              name: Value
              value:
                fixedValue:
                  $type: StringTestValue
                  value: imposter
          message:
            $type: ExpectedXMLMessage
            message: true
        conversionStrategy:
          dataFormatName: JSON
          conversionStrategyId: JSON
          conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
      - $type: DiffTool
        dataSourceNames:
        - Tabldedatos1
        iconName: Diff
        name: Diff control generated on 02-07-2026 17:12:15.
        differs:
        - $type: JSONDiffer
          ignored:
          - operations:
            - true
            - true
            - true
            identifier: abilities
        source:
          controls:
          - keys:
            - ""
            - ""
            row:
              refs:
              - dataSourceName: Tabldedatos1
                row: 1
              last: false
          - "{\"abilities\":[{\"ability\":{\"name\":\"limber\",\"url\":\"https://pokeapi.co/api/v2/ability/7/\"\
            },\"is_hidden\":false,\"slot\":1},{\"ability\":{\"name\":\"imposter\"\
            ,\"url\":\"https://pokeapi.co/api/v2/ability/150/\"},\"is_hidden\":true,\"\
            slot\":3}],\"base_experience\":101,\"cries\":{\"latest\":\"https://raw.githubusercontent.com/PokeAPI/cries/main/cries/pokemon/latest/132.ogg\"\
            ,\"legacy\":\"https://raw.githubusercontent.com/PokeAPI/cries/main/cries/pokemon/legacy/132.ogg\"\
            },\"forms\":[{\"name\":\"ditto\",\"url\":\"https://pokeapi.co/api/v2/pokemon-form/132/\"\
            }],\"game_indices\":[{\"game_index\":76,\"version\":{\"name\":\"red\"\
            ,\"url\":\"https://pokeapi.co/api/v2/version/1/\"}},{\"game_index\":76,\"\
            version\":{\"name\":\"blue\",\"url\":\"https://pokeapi.co/api/v2/version/2/\"\
            }},{\"game_index\":76,\"version\":{\"name\":\"yellow\",\"url\":\"https://pokeapi.co/api/v2/version/3/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"gold\",\"url\":\"https://pokeapi.co/api/v2/version/4/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"silver\",\"url\":\"https://pokeapi.co/api/v2/version/5/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"crystal\",\"url\":\"https://pokeapi.co/api/v2/version/6/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"ruby\",\"url\":\"https://pokeapi.co/api/v2/version/7/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"sapphire\",\"url\":\"https://pokeapi.co/api/v2/version/8/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"emerald\",\"url\":\"https://pokeapi.co/api/v2/version/9/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"firered\",\"url\":\"https://pokeapi.co/api/v2/version/10/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"leafgreen\",\"url\":\"\
            https://pokeapi.co/api/v2/version/11/\"}},{\"game_index\":132,\"version\"\
            :{\"name\":\"diamond\",\"url\":\"https://pokeapi.co/api/v2/version/12/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"pearl\",\"url\":\"https://pokeapi.co/api/v2/version/13/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"platinum\",\"url\":\"https://pokeapi.co/api/v2/version/14/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"heartgold\",\"url\":\"\
            https://pokeapi.co/api/v2/version/15/\"}},{\"game_index\":132,\"version\"\
            :{\"name\":\"soulsilver\",\"url\":\"https://pokeapi.co/api/v2/version/16/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"black\",\"url\":\"https://pokeapi.co/api/v2/version/17/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"white\",\"url\":\"https://pokeapi.co/api/v2/version/18/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"black-2\",\"url\":\"https://pokeapi.co/api/v2/version/21/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"white-2\",\"url\":\"https://pokeapi.co/api/v2/version/22/\"\
            }}],\"height\":3,\"held_items\":[{\"item\":{\"name\":\"metal-powder\"\
            ,\"url\":\"https://pokeapi.co/api/v2/item/234/\"},\"version_details\"\
            :[{\"rarity\":5,\"version\":{\"name\":\"ruby\",\"url\":\"https://pokeapi.co/api/v2/version/7/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"sapphire\",\"url\":\"https://pokeapi.co/api/v2/version/8/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"emerald\",\"url\":\"https://pokeapi.co/api/v2/version/9/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"firered\",\"url\":\"https://pokeapi.co/api/v2/version/10/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"leafgreen\",\"url\":\"https://pokeapi.co/api/v2/version/11/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"diamond\",\"url\":\"https://pokeapi.co/api/v2/version/12/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"pearl\",\"url\":\"https://pokeapi.co/api/v2/version/13/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"platinum\",\"url\":\"https://pokeapi.co/api/v2/version/14/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"heartgold\",\"url\":\"https://pokeapi.co/api/v2/version/15/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"soulsilver\",\"url\":\"https://pokeapi.co/api/v2/version/16/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"black\",\"url\":\"https://pokeapi.co/api/v2/version/17/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"white\",\"url\":\"https://pokeapi.co/api/v2/version/18/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"black-2\",\"url\":\"https://pokeapi.co/api/v2/version/21/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"white-2\",\"url\":\"https://pokeapi.co/api/v2/version/22/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"x\",\"url\":\"https://pokeapi.co/api/v2/version/23/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"y\",\"url\":\"https://pokeapi.co/api/v2/version/24/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"omega-ruby\",\"url\":\"https://pokeapi.co/api/v2/version/25/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"alpha-sapphire\",\"url\":\"https://pokeapi.co/api/v2/version/26/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"sun\",\"url\":\"https://pokeapi.co/api/v2/version/27/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"moon\",\"url\":\"https://pokeapi.co/api/v2/version/28/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"ultra-sun\",\"url\":\"https://pokeapi.co/api/v2/version/29/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"ultra-moon\",\"url\":\"https://pokeapi.co/api/v2/version/30/\"\
            }}]},{\"item\":{\"name\":\"quick-powder\",\"url\":\"https://pokeapi.co/api/v2/item/251/\"\
            },\"version_details\":[{\"rarity\":50,\"version\":{\"name\":\"diamond\"\
            ,\"url\":\"https://pokeapi.co/api/v2/version/12/\"}},{\"rarity\":50,\"\
            version\":{\"name\":\"pearl\",\"url\":\"https://pokeapi.co/api/v2/version/13/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"platinum\",\"url\":\"https://pokeapi.co/api/v2/version/14/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"heartgold\",\"url\":\"https://pokeapi.co/api/v2/version/15/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"soulsilver\",\"url\":\"https://pokeapi.co/api/v2/version/16/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"black\",\"url\":\"https://pokeapi.co/api/v2/version/17/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"white\",\"url\":\"https://pokeapi.co/api/v2/version/18/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"black-2\",\"url\":\"https://pokeapi.co/api/v2/version/21/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"white-2\",\"url\":\"https://pokeapi.co/api/v2/version/22/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"x\",\"url\":\"https://pokeapi.co/api/v2/version/23/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"y\",\"url\":\"https://pokeapi.co/api/v2/version/24/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"omega-ruby\",\"url\":\"https://pokeapi.co/api/v2/version/25/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"alpha-sapphire\",\"url\":\"\
            https://pokeapi.co/api/v2/version/26/\"}},{\"rarity\":50,\"version\":{\"\
            name\":\"sun\",\"url\":\"https://pokeapi.co/api/v2/version/27/\"}},{\"\
            rarity\":50,\"version\":{\"name\":\"moon\",\"url\":\"https://pokeapi.co/api/v2/version/28/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"ultra-sun\",\"url\":\"https://pokeapi.co/api/v2/version/29/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"ultra-moon\",\"url\":\"https://pokeapi.co/api/v2/version/30/\"\
            }}]}],\"id\":132,\"is_default\":true,\"location_area_encounters\":\"https://pokeapi.co/api/v2/pokemon/132/encounters\"\
            ,\"moves\":[{\"move\":{\"name\":\"transform\",\"url\":\"https://pokeapi.co/api/v2/move/144/\"\
            },\"version_group_details\":[{\"level_learned_at\":1,\"move_learn_method\"\
            :{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"red-blue\",\"url\":\"https://pokeapi.co/api/v2/version-group/1/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"yellow\",\"url\":\"https://pokeapi.co/api/v2/version-group/2/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"gold-silver\",\"url\":\"https://pokeapi.co/api/v2/version-group/3/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"crystal\",\"url\":\"https://pokeapi.co/api/v2/version-group/4/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"ruby-sapphire\",\"url\":\"https://pokeapi.co/api/v2/version-group/5/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"emerald\",\"url\":\"https://pokeapi.co/api/v2/version-group/6/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"firered-leafgreen\",\"url\":\"https://pokeapi.co/api/v2/version-group/7/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"diamond-pearl\",\"url\":\"https://pokeapi.co/api/v2/version-group/8/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"platinum\",\"url\":\"https://pokeapi.co/api/v2/version-group/9/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"heartgold-soulsilver\",\"url\":\"\
            https://pokeapi.co/api/v2/version-group/10/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"black-white\",\"url\":\"\
            https://pokeapi.co/api/v2/version-group/11/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"colosseum\",\"url\":\"\
            https://pokeapi.co/api/v2/version-group/12/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"xd\",\"url\":\"https://pokeapi.co/api/v2/version-group/13/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"black-2-white-2\",\"url\":\"https://pokeapi.co/api/v2/version-group/14/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"x-y\",\"url\":\"https://pokeapi.co/api/v2/version-group/15/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"omega-ruby-alpha-sapphire\",\"url\"\
            :\"https://pokeapi.co/api/v2/version-group/16/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"sun-moon\",\"url\":\"https://pokeapi.co/api/v2/version-group/17/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"ultra-sun-ultra-moon\",\"url\":\"\
            https://pokeapi.co/api/v2/version-group/18/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"lets-go-pikachu-lets-go-eevee\"\
            ,\"url\":\"https://pokeapi.co/api/v2/version-group/19/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"sword-shield\",\"url\"\
            :\"https://pokeapi.co/api/v2/version-group/20/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"brilliant-diamond-shining-pearl\"\
            ,\"url\":\"https://pokeapi.co/api/v2/version-group/23/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"scarlet-violet\",\"url\"\
            :\"https://pokeapi.co/api/v2/version-group/25/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"red-green-japan\",\"url\"\
            :\"https://pokeapi.co/api/v2/version-group/28/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"blue-japan\",\"url\":\"\
            https://pokeapi.co/api/v2/version-group/29/\"}},{\"level_learned_at\"\
            :0,\"move_learn_method\":{\"name\":\"train\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/12/\"\
            },\"order\":null,\"version_group\":{\"name\":\"champions\",\"url\":\"\
            https://pokeapi.co/api/v2/version-group/32/\"}}]}],\"name\":\"ditto\"\
            ,\"order\":214,\"past_abilities\":[{\"abilities\":[{\"ability\":null,\"\
            is_hidden\":true,\"slot\":3}],\"generation\":{\"name\":\"generation-iv\"\
            ,\"url\":\"https://pokeapi.co/api/v2/generation/4/\"}}],\"past_stats\"\
            :[{\"generation\":{\"name\":\"generation-i\",\"url\":\"https://pokeapi.co/api/v2/generation/1/\"\
            },\"stats\":[{\"base_stat\":48,\"effort\":0,\"stat\":{\"name\":\"special\"\
            ,\"url\":\"https://pokeapi.co/api/v2/stat/9/\"}}]}],\"past_types\":[],\"\
            species\":{\"name\":\"ditto\",\"url\":\"https://pokeapi.co/api/v2/pokemon-species/132/\"\
            },\"sprites\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/132.png\"\
            ,\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/132.png\"\
            ,\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/132.png\"\
            ,\"front_shiny_female\":null,\"other\":{\"dream_world\":{\"front_default\"\
            :\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/132.svg\"\
            ,\"front_female\":null},\"home\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/132.png\"\
            ,\"front_shiny_female\":null},\"official-artwork\":{\"front_default\"\
            :\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/132.png\"\
            ,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/132.png\"\
            },\"showdown\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/back/132.gif\"\
            ,\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/back/shiny/132.gif\"\
            ,\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/132.gif\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/shiny/132.gif\"\
            ,\"front_shiny_female\":null}},\"versions\":{\"generation-i\":{\"red-blue\"\
            :{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/back/132.png\"\
            ,\"back_gray\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/back/gray/132.png\"\
            ,\"back_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/transparent/back/132.png\"\
            ,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/132.png\"\
            ,\"front_gray\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/gray/132.png\"\
            ,\"front_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/transparent/132.png\"\
            },\"yellow\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/back/132.png\"\
            ,\"back_gray\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/back/gray/132.png\"\
            ,\"back_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/transparent/back/132.png\"\
            ,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/132.png\"\
            ,\"front_gray\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/gray/132.png\"\
            ,\"front_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/transparent/132.png\"\
            }},\"generation-ii\":{\"crystal\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/back/132.png\"\
            ,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/back/shiny/132.png\"\
            ,\"back_shiny_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/back/shiny/132.png\"\
            ,\"back_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/back/132.png\"\
            ,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/132.png\"\
            ,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/shiny/132.png\"\
            ,\"front_shiny_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/shiny/132.png\"\
            ,\"front_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/132.png\"\
            },\"gold\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/back/132.png\"\
            ,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/back/shiny/132.png\"\
            ,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/132.png\"\
            ,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/shiny/132.png\"\
            ,\"front_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/transparent/132.png\"\
            },\"silver\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/back/132.png\"\
            ,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/back/shiny/132.png\"\
            ,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/132.png\"\
            ,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/shiny/132.png\"\
            ,\"front_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/transparent/132.png\"\
            }},\"generation-iii\":{\"emerald\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/emerald/132.png\"\
            ,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/emerald/shiny/132.png\"\
            },\"firered-leafgreen\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/back/132.png\"\
            ,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/back/shiny/132.png\"\
            ,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/132.png\"\
            ,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/shiny/132.png\"\
            },\"ruby-sapphire\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/back/132.png\"\
            ,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/back/shiny/132.png\"\
            ,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/132.png\"\
            ,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/shiny/132.png\"\
            }},\"generation-iv\":{\"diamond-pearl\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/132.png\"\
            ,\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/shiny/132.png\"\
            ,\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/shiny/132.png\"\
            ,\"front_shiny_female\":null},\"heartgold-soulsilver\":{\"back_default\"\
            :\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/132.png\"\
            ,\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/shiny/132.png\"\
            ,\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/shiny/132.png\"\
            ,\"front_shiny_female\":null},\"platinum\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/132.png\"\
            ,\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/shiny/132.png\"\
            ,\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/shiny/132.png\"\
            ,\"front_shiny_female\":null}},\"generation-ix\":{\"scarlet-violet\":{\"\
            front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ix/scarlet-violet/132.png\"\
            ,\"front_female\":null}},\"generation-v\":{\"black-white\":{\"animated\"\
            :{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/132.gif\"\
            ,\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/shiny/132.gif\"\
            ,\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/132.gif\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/shiny/132.gif\"\
            ,\"front_shiny_female\":null},\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/132.png\"\
            ,\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/shiny/132.png\"\
            ,\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/shiny/132.png\"\
            ,\"front_shiny_female\":null}},\"generation-vi\":{\"omegaruby-alphasapphire\"\
            :{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/shiny/132.png\"\
            ,\"front_shiny_female\":null},\"x-y\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/shiny/132.png\"\
            ,\"front_shiny_female\":null}},\"generation-vii\":{\"icons\":{\"front_default\"\
            :\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/icons/132.png\"\
            ,\"front_female\":null},\"ultra-sun-ultra-moon\":{\"front_default\":\"\
            https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/shiny/132.png\"\
            ,\"front_shiny_female\":null}},\"generation-viii\":{\"brilliant-diamond-shining-pearl\"\
            :{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-viii/brilliant-diamond-shining-pearl/132.png\"\
            ,\"front_female\":null},\"icons\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-viii/icons/132.png\"\
            ,\"front_female\":null}}}},\"stats\":[{\"base_stat\":48,\"effort\":1,\"\
            stat\":{\"name\":\"hp\",\"url\":\"https://pokeapi.co/api/v2/stat/1/\"\
            }},{\"base_stat\":48,\"effort\":0,\"stat\":{\"name\":\"attack\",\"url\"\
            :\"https://pokeapi.co/api/v2/stat/2/\"}},{\"base_stat\":48,\"effort\"\
            :0,\"stat\":{\"name\":\"defense\",\"url\":\"https://pokeapi.co/api/v2/stat/3/\"\
            }},{\"base_stat\":48,\"effort\":0,\"stat\":{\"name\":\"special-attack\"\
            ,\"url\":\"https://pokeapi.co/api/v2/stat/4/\"}},{\"base_stat\":48,\"\
            effort\":0,\"stat\":{\"name\":\"special-defense\",\"url\":\"https://pokeapi.co/api/v2/stat/5/\"\
            }},{\"base_stat\":48,\"effort\":0,\"stat\":{\"name\":\"speed\",\"url\"\
            :\"https://pokeapi.co/api/v2/stat/6/\"}}],\"types\":[{\"slot\":1,\"type\"\
            :{\"name\":\"normal\",\"url\":\"https://pokeapi.co/api/v2/type/1/\"}}],\"\
            weight\":40}"
          - keys:
            - ""
            - ""
            row:
              refs:
              - first: false
                last: true
                dataSourceName: Tabldedatos1
                row: 2
              first: false
          - "{\"abilities\":[{\"ability\":{\"name\":\"limber\",\"url\":\"https://pokeapi.co/api/v2/ability/7/\"\
            },\"is_hidden\":false,\"slot\":1},{\"ability\":{\"name\":\"imposter\"\
            ,\"url\":\"https://pokeapi.co/api/v2/ability/150/\"},\"is_hidden\":true,\"\
            slot\":3}],\"base_experience\":101,\"cries\":{\"latest\":\"https://raw.githubusercontent.com/PokeAPI/cries/main/cries/pokemon/latest/132.ogg\"\
            ,\"legacy\":\"https://raw.githubusercontent.com/PokeAPI/cries/main/cries/pokemon/legacy/132.ogg\"\
            },\"forms\":[{\"name\":\"ditto\",\"url\":\"https://pokeapi.co/api/v2/pokemon-form/132/\"\
            }],\"game_indices\":[{\"game_index\":76,\"version\":{\"name\":\"red\"\
            ,\"url\":\"https://pokeapi.co/api/v2/version/1/\"}},{\"game_index\":76,\"\
            version\":{\"name\":\"blue\",\"url\":\"https://pokeapi.co/api/v2/version/2/\"\
            }},{\"game_index\":76,\"version\":{\"name\":\"yellow\",\"url\":\"https://pokeapi.co/api/v2/version/3/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"gold\",\"url\":\"https://pokeapi.co/api/v2/version/4/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"silver\",\"url\":\"https://pokeapi.co/api/v2/version/5/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"crystal\",\"url\":\"https://pokeapi.co/api/v2/version/6/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"ruby\",\"url\":\"https://pokeapi.co/api/v2/version/7/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"sapphire\",\"url\":\"https://pokeapi.co/api/v2/version/8/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"emerald\",\"url\":\"https://pokeapi.co/api/v2/version/9/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"firered\",\"url\":\"https://pokeapi.co/api/v2/version/10/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"leafgreen\",\"url\":\"\
            https://pokeapi.co/api/v2/version/11/\"}},{\"game_index\":132,\"version\"\
            :{\"name\":\"diamond\",\"url\":\"https://pokeapi.co/api/v2/version/12/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"pearl\",\"url\":\"https://pokeapi.co/api/v2/version/13/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"platinum\",\"url\":\"https://pokeapi.co/api/v2/version/14/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"heartgold\",\"url\":\"\
            https://pokeapi.co/api/v2/version/15/\"}},{\"game_index\":132,\"version\"\
            :{\"name\":\"soulsilver\",\"url\":\"https://pokeapi.co/api/v2/version/16/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"black\",\"url\":\"https://pokeapi.co/api/v2/version/17/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"white\",\"url\":\"https://pokeapi.co/api/v2/version/18/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"black-2\",\"url\":\"https://pokeapi.co/api/v2/version/21/\"\
            }},{\"game_index\":132,\"version\":{\"name\":\"white-2\",\"url\":\"https://pokeapi.co/api/v2/version/22/\"\
            }}],\"height\":3,\"held_items\":[{\"item\":{\"name\":\"metal-powder\"\
            ,\"url\":\"https://pokeapi.co/api/v2/item/234/\"},\"version_details\"\
            :[{\"rarity\":5,\"version\":{\"name\":\"ruby\",\"url\":\"https://pokeapi.co/api/v2/version/7/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"sapphire\",\"url\":\"https://pokeapi.co/api/v2/version/8/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"emerald\",\"url\":\"https://pokeapi.co/api/v2/version/9/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"firered\",\"url\":\"https://pokeapi.co/api/v2/version/10/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"leafgreen\",\"url\":\"https://pokeapi.co/api/v2/version/11/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"diamond\",\"url\":\"https://pokeapi.co/api/v2/version/12/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"pearl\",\"url\":\"https://pokeapi.co/api/v2/version/13/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"platinum\",\"url\":\"https://pokeapi.co/api/v2/version/14/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"heartgold\",\"url\":\"https://pokeapi.co/api/v2/version/15/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"soulsilver\",\"url\":\"https://pokeapi.co/api/v2/version/16/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"black\",\"url\":\"https://pokeapi.co/api/v2/version/17/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"white\",\"url\":\"https://pokeapi.co/api/v2/version/18/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"black-2\",\"url\":\"https://pokeapi.co/api/v2/version/21/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"white-2\",\"url\":\"https://pokeapi.co/api/v2/version/22/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"x\",\"url\":\"https://pokeapi.co/api/v2/version/23/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"y\",\"url\":\"https://pokeapi.co/api/v2/version/24/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"omega-ruby\",\"url\":\"https://pokeapi.co/api/v2/version/25/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"alpha-sapphire\",\"url\":\"https://pokeapi.co/api/v2/version/26/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"sun\",\"url\":\"https://pokeapi.co/api/v2/version/27/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"moon\",\"url\":\"https://pokeapi.co/api/v2/version/28/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"ultra-sun\",\"url\":\"https://pokeapi.co/api/v2/version/29/\"\
            }},{\"rarity\":5,\"version\":{\"name\":\"ultra-moon\",\"url\":\"https://pokeapi.co/api/v2/version/30/\"\
            }}]},{\"item\":{\"name\":\"quick-powder\",\"url\":\"https://pokeapi.co/api/v2/item/251/\"\
            },\"version_details\":[{\"rarity\":50,\"version\":{\"name\":\"diamond\"\
            ,\"url\":\"https://pokeapi.co/api/v2/version/12/\"}},{\"rarity\":50,\"\
            version\":{\"name\":\"pearl\",\"url\":\"https://pokeapi.co/api/v2/version/13/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"platinum\",\"url\":\"https://pokeapi.co/api/v2/version/14/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"heartgold\",\"url\":\"https://pokeapi.co/api/v2/version/15/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"soulsilver\",\"url\":\"https://pokeapi.co/api/v2/version/16/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"black\",\"url\":\"https://pokeapi.co/api/v2/version/17/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"white\",\"url\":\"https://pokeapi.co/api/v2/version/18/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"black-2\",\"url\":\"https://pokeapi.co/api/v2/version/21/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"white-2\",\"url\":\"https://pokeapi.co/api/v2/version/22/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"x\",\"url\":\"https://pokeapi.co/api/v2/version/23/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"y\",\"url\":\"https://pokeapi.co/api/v2/version/24/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"omega-ruby\",\"url\":\"https://pokeapi.co/api/v2/version/25/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"alpha-sapphire\",\"url\":\"\
            https://pokeapi.co/api/v2/version/26/\"}},{\"rarity\":50,\"version\":{\"\
            name\":\"sun\",\"url\":\"https://pokeapi.co/api/v2/version/27/\"}},{\"\
            rarity\":50,\"version\":{\"name\":\"moon\",\"url\":\"https://pokeapi.co/api/v2/version/28/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"ultra-sun\",\"url\":\"https://pokeapi.co/api/v2/version/29/\"\
            }},{\"rarity\":50,\"version\":{\"name\":\"ultra-moon\",\"url\":\"https://pokeapi.co/api/v2/version/30/\"\
            }}]}],\"id\":132,\"is_default\":true,\"location_area_encounters\":\"https://pokeapi.co/api/v2/pokemon/132/encounters\"\
            ,\"moves\":[{\"move\":{\"name\":\"transform\",\"url\":\"https://pokeapi.co/api/v2/move/144/\"\
            },\"version_group_details\":[{\"level_learned_at\":1,\"move_learn_method\"\
            :{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"red-blue\",\"url\":\"https://pokeapi.co/api/v2/version-group/1/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"yellow\",\"url\":\"https://pokeapi.co/api/v2/version-group/2/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"gold-silver\",\"url\":\"https://pokeapi.co/api/v2/version-group/3/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"crystal\",\"url\":\"https://pokeapi.co/api/v2/version-group/4/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"ruby-sapphire\",\"url\":\"https://pokeapi.co/api/v2/version-group/5/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"emerald\",\"url\":\"https://pokeapi.co/api/v2/version-group/6/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"firered-leafgreen\",\"url\":\"https://pokeapi.co/api/v2/version-group/7/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"diamond-pearl\",\"url\":\"https://pokeapi.co/api/v2/version-group/8/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"platinum\",\"url\":\"https://pokeapi.co/api/v2/version-group/9/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"heartgold-soulsilver\",\"url\":\"\
            https://pokeapi.co/api/v2/version-group/10/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"black-white\",\"url\":\"\
            https://pokeapi.co/api/v2/version-group/11/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"colosseum\",\"url\":\"\
            https://pokeapi.co/api/v2/version-group/12/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"xd\",\"url\":\"https://pokeapi.co/api/v2/version-group/13/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"black-2-white-2\",\"url\":\"https://pokeapi.co/api/v2/version-group/14/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"x-y\",\"url\":\"https://pokeapi.co/api/v2/version-group/15/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"omega-ruby-alpha-sapphire\",\"url\"\
            :\"https://pokeapi.co/api/v2/version-group/16/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"sun-moon\",\"url\":\"https://pokeapi.co/api/v2/version-group/17/\"\
            }},{\"level_learned_at\":1,\"move_learn_method\":{\"name\":\"level-up\"\
            ,\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"},\"order\"\
            :null,\"version_group\":{\"name\":\"ultra-sun-ultra-moon\",\"url\":\"\
            https://pokeapi.co/api/v2/version-group/18/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"lets-go-pikachu-lets-go-eevee\"\
            ,\"url\":\"https://pokeapi.co/api/v2/version-group/19/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"sword-shield\",\"url\"\
            :\"https://pokeapi.co/api/v2/version-group/20/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"brilliant-diamond-shining-pearl\"\
            ,\"url\":\"https://pokeapi.co/api/v2/version-group/23/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"scarlet-violet\",\"url\"\
            :\"https://pokeapi.co/api/v2/version-group/25/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"red-green-japan\",\"url\"\
            :\"https://pokeapi.co/api/v2/version-group/28/\"}},{\"level_learned_at\"\
            :1,\"move_learn_method\":{\"name\":\"level-up\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/1/\"\
            },\"order\":null,\"version_group\":{\"name\":\"blue-japan\",\"url\":\"\
            https://pokeapi.co/api/v2/version-group/29/\"}},{\"level_learned_at\"\
            :0,\"move_learn_method\":{\"name\":\"train\",\"url\":\"https://pokeapi.co/api/v2/move-learn-method/12/\"\
            },\"order\":null,\"version_group\":{\"name\":\"champions\",\"url\":\"\
            https://pokeapi.co/api/v2/version-group/32/\"}}]}],\"name\":\"ditto\"\
            ,\"order\":214,\"past_abilities\":[{\"abilities\":[{\"ability\":null,\"\
            is_hidden\":true,\"slot\":3}],\"generation\":{\"name\":\"generation-iv\"\
            ,\"url\":\"https://pokeapi.co/api/v2/generation/4/\"}}],\"past_stats\"\
            :[{\"generation\":{\"name\":\"generation-i\",\"url\":\"https://pokeapi.co/api/v2/generation/1/\"\
            },\"stats\":[{\"base_stat\":48,\"effort\":0,\"stat\":{\"name\":\"special\"\
            ,\"url\":\"https://pokeapi.co/api/v2/stat/9/\"}}]}],\"past_types\":[],\"\
            species\":{\"name\":\"ditto\",\"url\":\"https://pokeapi.co/api/v2/pokemon-species/132/\"\
            },\"sprites\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/132.png\"\
            ,\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/132.png\"\
            ,\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/132.png\"\
            ,\"front_shiny_female\":null,\"other\":{\"dream_world\":{\"front_default\"\
            :\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/132.svg\"\
            ,\"front_female\":null},\"home\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/132.png\"\
            ,\"front_shiny_female\":null},\"official-artwork\":{\"front_default\"\
            :\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/132.png\"\
            ,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/132.png\"\
            },\"showdown\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/back/132.gif\"\
            ,\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/back/shiny/132.gif\"\
            ,\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/132.gif\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/shiny/132.gif\"\
            ,\"front_shiny_female\":null}},\"versions\":{\"generation-i\":{\"red-blue\"\
            :{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/back/132.png\"\
            ,\"back_gray\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/back/gray/132.png\"\
            ,\"back_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/transparent/back/132.png\"\
            ,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/132.png\"\
            ,\"front_gray\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/gray/132.png\"\
            ,\"front_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/transparent/132.png\"\
            },\"yellow\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/back/132.png\"\
            ,\"back_gray\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/back/gray/132.png\"\
            ,\"back_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/transparent/back/132.png\"\
            ,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/132.png\"\
            ,\"front_gray\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/gray/132.png\"\
            ,\"front_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/transparent/132.png\"\
            }},\"generation-ii\":{\"crystal\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/back/132.png\"\
            ,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/back/shiny/132.png\"\
            ,\"back_shiny_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/back/shiny/132.png\"\
            ,\"back_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/back/132.png\"\
            ,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/132.png\"\
            ,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/shiny/132.png\"\
            ,\"front_shiny_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/shiny/132.png\"\
            ,\"front_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/transparent/132.png\"\
            },\"gold\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/back/132.png\"\
            ,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/back/shiny/132.png\"\
            ,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/132.png\"\
            ,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/shiny/132.png\"\
            ,\"front_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/transparent/132.png\"\
            },\"silver\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/back/132.png\"\
            ,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/back/shiny/132.png\"\
            ,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/132.png\"\
            ,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/shiny/132.png\"\
            ,\"front_transparent\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/transparent/132.png\"\
            }},\"generation-iii\":{\"emerald\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/emerald/132.png\"\
            ,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/emerald/shiny/132.png\"\
            },\"firered-leafgreen\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/back/132.png\"\
            ,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/back/shiny/132.png\"\
            ,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/132.png\"\
            ,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/shiny/132.png\"\
            },\"ruby-sapphire\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/back/132.png\"\
            ,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/back/shiny/132.png\"\
            ,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/132.png\"\
            ,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/shiny/132.png\"\
            }},\"generation-iv\":{\"diamond-pearl\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/132.png\"\
            ,\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/shiny/132.png\"\
            ,\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/shiny/132.png\"\
            ,\"front_shiny_female\":null},\"heartgold-soulsilver\":{\"back_default\"\
            :\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/132.png\"\
            ,\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/shiny/132.png\"\
            ,\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/shiny/132.png\"\
            ,\"front_shiny_female\":null},\"platinum\":{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/132.png\"\
            ,\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/shiny/132.png\"\
            ,\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/shiny/132.png\"\
            ,\"front_shiny_female\":null}},\"generation-ix\":{\"scarlet-violet\":{\"\
            front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ix/scarlet-violet/132.png\"\
            ,\"front_female\":null}},\"generation-v\":{\"black-white\":{\"animated\"\
            :{\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/132.gif\"\
            ,\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/shiny/132.gif\"\
            ,\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/132.gif\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/shiny/132.gif\"\
            ,\"front_shiny_female\":null},\"back_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/132.png\"\
            ,\"back_female\":null,\"back_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/shiny/132.png\"\
            ,\"back_shiny_female\":null,\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/shiny/132.png\"\
            ,\"front_shiny_female\":null}},\"generation-vi\":{\"omegaruby-alphasapphire\"\
            :{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/shiny/132.png\"\
            ,\"front_shiny_female\":null},\"x-y\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/shiny/132.png\"\
            ,\"front_shiny_female\":null}},\"generation-vii\":{\"icons\":{\"front_default\"\
            :\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/icons/132.png\"\
            ,\"front_female\":null},\"ultra-sun-ultra-moon\":{\"front_default\":\"\
            https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/132.png\"\
            ,\"front_female\":null,\"front_shiny\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/shiny/132.png\"\
            ,\"front_shiny_female\":null}},\"generation-viii\":{\"brilliant-diamond-shining-pearl\"\
            :{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-viii/brilliant-diamond-shining-pearl/132.png\"\
            ,\"front_female\":null},\"icons\":{\"front_default\":\"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-viii/icons/132.png\"\
            ,\"front_female\":null}}}},\"stats\":[{\"base_stat\":48,\"effort\":1,\"\
            stat\":{\"name\":\"hp\",\"url\":\"https://pokeapi.co/api/v2/stat/1/\"\
            }},{\"base_stat\":48,\"effort\":0,\"stat\":{\"name\":\"attack\",\"url\"\
            :\"https://pokeapi.co/api/v2/stat/2/\"}},{\"base_stat\":48,\"effort\"\
            :0,\"stat\":{\"name\":\"defense\",\"url\":\"https://pokeapi.co/api/v2/stat/3/\"\
            }},{\"base_stat\":48,\"effort\":0,\"stat\":{\"name\":\"special-attack\"\
            ,\"url\":\"https://pokeapi.co/api/v2/stat/4/\"}},{\"base_stat\":48,\"\
            effort\":0,\"stat\":{\"name\":\"special-defense\",\"url\":\"https://pokeapi.co/api/v2/stat/5/\"\
            }},{\"base_stat\":48,\"effort\":0,\"stat\":{\"name\":\"speed\",\"url\"\
            :\"https://pokeapi.co/api/v2/stat/6/\"}}],\"types\":[{\"slot\":1,\"type\"\
            :{\"name\":\"normal\",\"url\":\"https://pokeapi.co/api/v2/type/1/\"}}],\"\
            weight\":40}"
          optionsType: 2
        mode: 3
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
                  _id: 1
                required: true
              name: anonymous
              compositor: true
              compositorObj:
                $type: AllCompositor
                types:
                - $type: ElementType
                  minOccurs: 0
                  nillable: true
                  localName: product
                  bodyType:
                    $type: ComplexType
                    _id: 2
                    attributes:
                    - ns: ""
                      name: type
                      fixed: string
                      contentType:
                        $type: StringType
                        _ref: 1
                    isAbstract: true
                    content: true
                    contentObj:
                      $type: StringType
                      _ref: 1
                    namespace: urn:parasoft:json
                    name: String
                - $type: ElementType
                  minOccurs: 0
                  nillable: true
                  localName: informationClient
                  bodyType:
                    $type: ComplexType
                    attributes:
                    - ns: ""
                      name: type
                      fixed: array
                      contentType:
                        $type: StringType
                        _ref: 1
                      required: true
                    name: anonymous
                    compositor: true
                    compositorObj:
                      $type: SequenceCompositor
                      types:
                      - $type: ElementType
                        minOccurs: 0
                        maxOccurs: -1
                        nillable: true
                        localName: item
                        bodyType:
                          $type: ComplexType
                          attributes:
                          - ns: ""
                            name: type
                            fixed: object
                            contentType:
                              $type: StringType
                              _ref: 1
                            required: true
                          name: anonymous
                          compositor: true
                          compositorObj:
                            $type: AllCompositor
                            types:
                            - $type: ElementType
                              minOccurs: 0
                              nillable: true
                              localName: typeId
                              bodyType:
                                $type: ComplexType
                                _ref: 2
                            - $type: ElementType
                              minOccurs: 0
                              nillable: true
                              localName: policyId
                              bodyType:
                                $type: ComplexType
                                _ref: 2
                            - $type: ElementType
                              minOccurs: 0
                              nillable: true
                              localName: organizationType
                              bodyType:
                                $type: ComplexType
                                _ref: 2
                            - $type: ElementType
                              minOccurs: 0
                              nillable: true
                              localName: firstName
                              bodyType:
                                $type: ComplexType
                                _ref: 2
                            - $type: ElementType
                              minOccurs: 0
                              nillable: true
                              localName: lastName
                              bodyType:
                                $type: ComplexType
                                _ref: 2
                            - $type: ElementType
                              minOccurs: 0
                              nillable: true
                              localName: identificationType
                              bodyType:
                                $type: ComplexType
                                _ref: 2
                            - $type: ElementType
                              minOccurs: 0
                              nillable: true
                              localName: identification
                              bodyType:
                                $type: ComplexType
                                _ref: 2
                            - $type: ElementType
                              minOccurs: 0
                              nillable: true
                              localName: rol
                              bodyType:
                                $type: ComplexType
                                _ref: 2
                            - $type: ElementType
                              minOccurs: 0
                              nillable: true
                              localName: optionalInformation
                              bodyType:
                                $type: ComplexType
                                attributes:
                                - ns: ""
                                  name: type
                                  fixed: object
                                  contentType:
                                    $type: StringType
                                    _ref: 1
                                  required: true
                                name: anonymous
                                compositor: true
                                compositorObj:
                                  $type: AllCompositor
                                  types:
                                  - $type: ElementType
                                    minOccurs: 0
                                    nillable: true
                                    localName: middleName
                                    bodyType:
                                      $type: ComplexType
                                      _ref: 2
                                  - $type: ElementType
                                    minOccurs: 0
                                    nillable: true
                                    localName: address
                                    bodyType:
                                      $type: ComplexType
                                      _ref: 2
                                  - $type: ElementType
                                    minOccurs: 0
                                    nillable: true
                                    localName: city
                                    bodyType:
                                      $type: ComplexType
                                      _ref: 2
                                  - $type: ElementType
                                    minOccurs: 0
                                    nillable: true
                                    localName: state
                                    bodyType:
                                      $type: ComplexType
                                      _ref: 2
                                  - $type: ElementType
                                    minOccurs: 0
                                    nillable: true
                                    localName: zipCode
                                    bodyType:
                                      $type: ComplexType
                                      _ref: 2
                                  - $type: ElementType
                                    minOccurs: 0
                                    nillable: true
                                    localName: birthCountry
                                    bodyType:
                                      $type: ComplexType
                                      _ref: 2
                                  - $type: ElementType
                                    minOccurs: 0
                                    nillable: true
                                    localName: residenceCountry
                                    bodyType:
                                      $type: ComplexType
                                      attributes:
                                      - ns: ""
                                        name: type
                                        fixed: array
                                        contentType:
                                          $type: StringType
                                          _ref: 1
                                        required: true
                                      name: anonymous
                                      compositor: true
                                      compositorObj:
                                        $type: SequenceCompositor
                                        types:
                                        - $type: ElementType
                                          minOccurs: 0
                                          maxOccurs: -1
                                          nillable: true
                                          localName: item
                                          bodyType:
                                            $type: ComplexType
                                            _ref: 2
                                  - $type: ElementType
                                    minOccurs: 0
                                    nillable: true
                                    localName: nationalityCountry
                                    bodyType:
                                      $type: ComplexType
                                      attributes:
                                      - ns: ""
                                        name: type
                                        fixed: array
                                        contentType:
                                          $type: StringType
                                          _ref: 1
                                        required: true
                                      name: anonymous
                                      compositor: true
                                      compositorObj:
                                        $type: SequenceCompositor
                                        types:
                                        - $type: ElementType
                                          minOccurs: 0
                                          maxOccurs: -1
                                          nillable: true
                                          localName: item
                                          bodyType:
                                            $type: ComplexType
                                            _ref: 2
                                  - $type: ElementType
                                    minOccurs: 0
                                    nillable: true
                                    localName: birthDate
                                    bodyType:
                                      $type: ComplexType
                                      _ref: 2
                                  - $type: ElementType
                                    minOccurs: 0
                                    nillable: true
                                    localName: economicActivityCode
                                    bodyType:
                                      $type: ComplexType
                                      _ref: 2
                                  - $type: ElementType
                                    minOccurs: 0
                                    nillable: true
                                    localName: businessType
                                    bodyType:
                                      $type: ComplexType
                                      _ref: 2
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
                  values:
                  - $type: ElementValue
                    replacedColumn: ""
                    values:
                    - $type: ComplexValue
                      replacedColumn: ""
                      allowArrayExclude: true
                      attributes:
                      - replacedColumn: ""
                        value:
                          $type: StringValue
                          replacedColumn: ""
                          value: string
                      contentValue: true
                      contentValueObj:
                        $type: StringValue
                        replacedColumn: ""
                        value: PRUEBA EJEMPLO QA
                  - $type: ElementValue
                    replacedColumn: ""
                    values:
                    - $type: ComplexValue
                      replacedColumn: ""
                      allowArrayExclude: true
                      attributes:
                      - replacedColumn: ""
                        value:
                          $type: StringValue
                          replacedColumn: ""
                          value: array
                        useValue: true
                      compositorValue: true
                      compositorValueObj:
                        replacedColumn: ""
                        values:
                          $type: CompositorValueSetCollectionSet
                          set:
                          - $type: CompositorValueSet
                            values:
                            - $type: ElementValue
                              replacedColumn: ""
                              values:
                              - $type: ComplexValue
                                replacedColumn: ""
                                allowArrayExclude: true
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
                                      values:
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            value: ""
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            value: "${Politica}"
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            value: I
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            columnName: Use Data Source Wizard
                                            value: "${Nombres}"
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            value: "${Apellidos}"
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            value: ""
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            value: "${Identificacion}"
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            value: desarrollador
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
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
                                                values:
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: "${SegundoNombre}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: "${Direccion}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: "${Ciudad}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: "${Provincia}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: 145822
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: "${PaisNacimiento}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: array
                                                      useValue: true
                                                    compositorValue: true
                                                    compositorValueObj:
                                                      replacedColumn: ""
                                                      values:
                                                        $type: CompositorValueSetCollectionSet
                                                        set:
                                                        - $type: CompositorValueSet
                                                          values:
                                                          - $type: ElementValue
                                                            replacedColumn: ""
                                                            values:
                                                            - $type: ComplexValue
                                                              replacedColumn: ""
                                                              allowArrayExclude: true
                                                              contentValue: true
                                                              contentValueObj:
                                                                $type: StringValue
                                                                replacedColumn: ""
                                                                value: "${PaisResidencia}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: array
                                                      useValue: true
                                                    compositorValue: true
                                                    compositorValueObj:
                                                      replacedColumn: ""
                                                      values:
                                                        $type: CompositorValueSetCollectionSet
                                                        set:
                                                        - $type: CompositorValueSet
                                                          values:
                                                          - $type: ElementValue
                                                            replacedColumn: ""
                                                            values:
                                                            - $type: ComplexValue
                                                              replacedColumn: ""
                                                              allowArrayExclude: true
                                                              contentValue: true
                                                              contentValueObj:
                                                                $type: StringValue
                                                                replacedColumn: ""
                                                                value: "${PaisNacionalidad}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: 13/01/1987
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: "${ActividadEconomica}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: ASEGURADORA
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
      timeout:
        useDefault: false
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
          HTTPClient_Endpoint: https://pokeapi.co/api/v2/pokemon/ditto
      transportProperties:
        manager:
          protocol: 1
          properties:
          - $type: HTTPClientHTTPProperties
            followRedirects:
              bool: true
            common:
              auth:
                useDefault: false
                authName: NTLM
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: Host
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: pokeapi.co
                - name: Authorization
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Basic [MASKED]"
            protocol: 1
            keepAlive1_1:
              bool: true
          - $type: HTTPClientHTTPProperties
            followRedirects:
              bool: true
            common:
              auth:
                useDefault: false
                authName: NTLM
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: Host
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: pokeapi.co
                - name: Authorization
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Basic [MASKED]"
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
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: |-
            {
               "product": "PRUEBA EJEMPLO QA",
               "informationClient": [
                  {
                     "typeId": "",
                     "policyId": "${Politica}",
                     "organizationType": "I",
                     "firstName": "${Nombres}",
                     "lastName": "${Apellidos}",
                     "identificationType": "",
                     "identification": "${Identificacion}",
                     "rol":"desarrollador",
                     "optionalInformation": {
                        "middleName": "${SegundoNombre}",
                        "address": "${Direccion}",
                        "city": "${Ciudad}",
                        "state": "${Provincia}",
                        "zipCode": "145822",
                        "birthCountry": "${PaisNacimiento}",
                        "residenceCountry": ["${PaisResidencia}"],
                        "nationalityCountry":["${PaisNacionalidad}"],
                        "birthDate": "13/01/1987",
                        "economicActivityCode": "${ActividadEconomica}",
                        "businessType": "ASEGURADORA"
                     }
                  }
               ]
            }
          type: application/json
        dataSource:
          columnName: dato1
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
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: v2
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: pokemon
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: ditto
          parameterizedValue:
            column: dato1
      resourceMethod:
        httpMethod: GET
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  - $type: RESTClientToolTest
    name: Ejemplo 2
    testFlowLogic:
      dependencyLogic:
        index: 1
    testID: 5
    tool:
      $type: RESTClient
      dataSourceNames:
      - Tabldedatos1
      iconName: RESTClient
      name: Ejemplo 2
      outputTools:
      - $type: GenericAssertionTool
        dataSourceNames:
        - Tabldedatos1
        iconName: XMLAssertor
        name: JSON Assertor
        wrappedTool:
          $type: XMLAssertionTool
          dataSourceNames:
          - Tabldedatos1
          iconName: XMLAssertor
          name: XML Assertor
          assertions:
          - $type: ValueAssertion
            timestamp: 1782942731215
            name: NameAbility
            extractEntireElement: true
            Assertion_XPath: "/root/abilities/item[1]/ability/name/string()"
            value:
              name: Value
              value:
                fixedValue:
                  $type: StringTestValue
                  value: limber
                parameterizedValue:
                  column: Use Data Source Wizard
          - $type: ValueAssertion
            timestamp: 1782942977067
            name: NameAbility2
            extractEntireElement: true
            Assertion_XPath: "/root/abilities/item[2]/ability/name/string()"
            value:
              name: Value
              value:
                fixedValue:
                  $type: StringTestValue
                  value: imposter
          message:
            $type: ExpectedXMLMessage
            message: true
        conversionStrategy:
          dataFormatName: JSON
          conversionStrategyId: JSON
          conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
      - $type: DiffTool
        iconName: Diff
        name: Diff control generated on 02-07-2026 17:12:15.
        differs:
        - $type: TextDiffer
        source:
          controls:
          - keys:
            - ""
            - ""
            - user
            - a
            row:
              refs:
              - dataSourceName: Tabldedatos1
                row: 1
              last: false
          - |-
            <!DOCTYPE html><html lang="en"><head><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
              new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
              j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
              'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
              })(window,document,'script','dataLayer','GTM-MD89GGQ');</script><meta name="generator" content="React Static"><title data-react-helmet="true">Page Not Found - Pok&#xE9;API</title><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5, shrink-to-fit=no"><meta data-react-helmet="true" property="og:type" content="website"><meta data-react-helmet="true" name="Description" content="An open RESTful API for Pok&#xE9;mon data"><meta data-react-helmet="true" property="keywords" content="pokemon pok&#xE9;mon API REST free"><meta data-react-helmet="true" property="og:image" content="/static/pokeapi_256.3fa72200.png"><meta data-react-helmet="true" property="description" content="An open RESTful API for Pok&#xE9;mon data"><link rel="preload" as="script" href="/templates/styles.f65bd0cb.js"><link rel="preload" as="script" href="/templates/vendors~main.b08a0546.js"><link rel="preload" as="script" href="/main.5d01ff9f.js"><link rel="preload" as="style" href="/styles.d61da460.css"><link rel="stylesheet" href="/styles.d61da460.css"><link data-react-helmet="true" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700"><link data-react-helmet="true" rel="icon" href="/pokeapi_192_square.png"><script data-react-helmet="true" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-9300109033485921" crossorigin="anonymous"></script><script data-react-helmet="true" async src="https://www.googletagmanager.com/gtag/js?id=G-X3X3FV0WED"></script><script data-react-helmet="true">window.dataLayer = window.dataLayer || [];
                                function gtag() {
                                    dataLayer.push(arguments)
                                }
                                gtag('js', new Date());
                                gtag('config', 'G-X3X3FV0WED');</script></head><body><noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MD89GGQ" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><div id="root"><div id="site-header" class="Header-module__headerwrapper--2Yq6L"><header class="Header-module__header--3xzeo"><a class="Header-module__homelink--1N9Da" title="Pok&#xE9;API" href="/"><img src="/static/pokeapi_256.3fa72200.png" alt="Pok&#xE9;API"></a><nav class="Header-module__nav--25Sms"><a class="Header-module__link--zKtyy" href="/">Home</a><a class="Header-module__link--zKtyy" href="/about">About</a><a class="Header-module__link--zKtyy" href="/docs/v2">API v2</a><a class="Header-module__link--zKtyy" href="/docs/graphql">GraphQL</a></nav></header></div><main id="site-content"><div class="Page-module__page--mC5go"><div class="Page-module__constrain_width--N2xeq"><h1>404 &#x2013; Page Not Found</h1><p>We couldn&apos;t find what you were looking for.</p><p>Please contact the owner of the site that linked you to the original URL and let them know their link is broken.</p></div></div></main><footer id="site-footer" class="Footer-module__footer--3nalg"><div class="Footer-module__container--yg5jX"><div>Created by <a href="https://github.com/phalt">Paul Hallett</a> and other <a href="https://github.com/PokeAPI/pokeapi/graphs/contributors">Pok&#xE9;API contributors</a> around the world. Pok&#xE9;mon and Pok&#xE9;mon character names are trademarks of Nintendo.</div><div><a href="https://pokeapi.statuspage.io/"><img alt="Status" src="https://img.shields.io/badge/dynamic/json?color=blue&amp;label=status&amp;query=%24.status.description&amp;url=https%3A%2F%2Fzlfyqp3hlvly.statuspage.io%2Fapi%2Fv2%2Fsummary.json"></a></div></div></footer></div><script type="text/javascript">window.__routeInfo = JSON.parse("{\"template\":\"__react_static_root__/src/pages/404.js\",\"sharedHashesByProp\":{},\"data\":{},\"path\":\"404\",\"sharedData\":{},\"siteData\":{\"alerts\":[{\"htmlMessage\":\"<p>Starting June 18th a new GraphQL specification is rolling out, v1beta2. Read more at <a href=\\\"/docs/graphql#v1beta2\\\">GraphQL v1beta2</a>. The former v1beta version is sun-setting and scheduled to be removed.</p>\\n\",\"level\":\"important\",\"id\":\"f191fc90\"}]}}");</script><script defer type="text/javascript" src="/templates/styles.f65bd0cb.js"></script><script defer type="text/javascript" src="/templates/vendors~main.b08a0546.js"></script><script defer type="text/javascript" src="/main.5d01ff9f.js"></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/v4513226cdae34746b4dedf0b4dfa099e1781791509496" integrity="sha512-ZE9pZaUXND66v380QUtch/5sE9tPFh2zg45pR2PB0CVkCtOREv2AJKkSidISWkysEuQ0EH8faUU5du78bx87UQ==" data-cf-beacon='{"version":"2024.11.0","token":"9fbcf60ab0bc4d7d9c24cc0a2b3b7af0","r":1,"server_timing":{"name":{"cfCacheStatus":true,"cfEdge":true,"cfExtPri":true,"cfL4":true,"cfOrigin":true,"cfSpeedBrain":true},"location_startswith":null}}' crossorigin="anonymous"></script>
            </body></html>
          - keys:
            - ""
            - ""
            - user
            - b
            row:
              refs:
              - first: false
                last: true
                dataSourceName: Tabldedatos1
                row: 2
              first: false
          - |-
            <!DOCTYPE html><html lang="en"><head><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
              new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
              j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
              'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
              })(window,document,'script','dataLayer','GTM-MD89GGQ');</script><meta name="generator" content="React Static"><title data-react-helmet="true">Page Not Found - Pok&#xE9;API</title><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5, shrink-to-fit=no"><meta data-react-helmet="true" property="og:type" content="website"><meta data-react-helmet="true" name="Description" content="An open RESTful API for Pok&#xE9;mon data"><meta data-react-helmet="true" property="keywords" content="pokemon pok&#xE9;mon API REST free"><meta data-react-helmet="true" property="og:image" content="/static/pokeapi_256.3fa72200.png"><meta data-react-helmet="true" property="description" content="An open RESTful API for Pok&#xE9;mon data"><link rel="preload" as="script" href="/templates/styles.f65bd0cb.js"><link rel="preload" as="script" href="/templates/vendors~main.b08a0546.js"><link rel="preload" as="script" href="/main.5d01ff9f.js"><link rel="preload" as="style" href="/styles.d61da460.css"><link rel="stylesheet" href="/styles.d61da460.css"><link data-react-helmet="true" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700"><link data-react-helmet="true" rel="icon" href="/pokeapi_192_square.png"><script data-react-helmet="true" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-9300109033485921" crossorigin="anonymous"></script><script data-react-helmet="true" async src="https://www.googletagmanager.com/gtag/js?id=G-X3X3FV0WED"></script><script data-react-helmet="true">window.dataLayer = window.dataLayer || [];
                                function gtag() {
                                    dataLayer.push(arguments)
                                }
                                gtag('js', new Date());
                                gtag('config', 'G-X3X3FV0WED');</script></head><body><noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MD89GGQ" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><div id="root"><div id="site-header" class="Header-module__headerwrapper--2Yq6L"><header class="Header-module__header--3xzeo"><a class="Header-module__homelink--1N9Da" title="Pok&#xE9;API" href="/"><img src="/static/pokeapi_256.3fa72200.png" alt="Pok&#xE9;API"></a><nav class="Header-module__nav--25Sms"><a class="Header-module__link--zKtyy" href="/">Home</a><a class="Header-module__link--zKtyy" href="/about">About</a><a class="Header-module__link--zKtyy" href="/docs/v2">API v2</a><a class="Header-module__link--zKtyy" href="/docs/graphql">GraphQL</a></nav></header></div><main id="site-content"><div class="Page-module__page--mC5go"><div class="Page-module__constrain_width--N2xeq"><h1>404 &#x2013; Page Not Found</h1><p>We couldn&apos;t find what you were looking for.</p><p>Please contact the owner of the site that linked you to the original URL and let them know their link is broken.</p></div></div></main><footer id="site-footer" class="Footer-module__footer--3nalg"><div class="Footer-module__container--yg5jX"><div>Created by <a href="https://github.com/phalt">Paul Hallett</a> and other <a href="https://github.com/PokeAPI/pokeapi/graphs/contributors">Pok&#xE9;API contributors</a> around the world. Pok&#xE9;mon and Pok&#xE9;mon character names are trademarks of Nintendo.</div><div><a href="https://pokeapi.statuspage.io/"><img alt="Status" src="https://img.shields.io/badge/dynamic/json?color=blue&amp;label=status&amp;query=%24.status.description&amp;url=https%3A%2F%2Fzlfyqp3hlvly.statuspage.io%2Fapi%2Fv2%2Fsummary.json"></a></div></div></footer></div><script type="text/javascript">window.__routeInfo = JSON.parse("{\"template\":\"__react_static_root__/src/pages/404.js\",\"sharedHashesByProp\":{},\"data\":{},\"path\":\"404\",\"sharedData\":{},\"siteData\":{\"alerts\":[{\"htmlMessage\":\"<p>Starting June 18th a new GraphQL specification is rolling out, v1beta2. Read more at <a href=\\\"/docs/graphql#v1beta2\\\">GraphQL v1beta2</a>. The former v1beta version is sun-setting and scheduled to be removed.</p>\\n\",\"level\":\"important\",\"id\":\"f191fc90\"}]}}");</script><script defer type="text/javascript" src="/templates/styles.f65bd0cb.js"></script><script defer type="text/javascript" src="/templates/vendors~main.b08a0546.js"></script><script defer type="text/javascript" src="/main.5d01ff9f.js"></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/v4513226cdae34746b4dedf0b4dfa099e1781791509496" integrity="sha512-ZE9pZaUXND66v380QUtch/5sE9tPFh2zg45pR2PB0CVkCtOREv2AJKkSidISWkysEuQ0EH8faUU5du78bx87UQ==" data-cf-beacon='{"version":"2024.11.0","token":"9fbcf60ab0bc4d7d9c24cc0a2b3b7af0","r":1,"server_timing":{"name":{"cfCacheStatus":true,"cfEdge":true,"cfExtPri":true,"cfL4":true,"cfOrigin":true,"cfSpeedBrain":true},"location_startswith":null}}' crossorigin="anonymous"></script>
            </body></html>
          optionsType: 2
        mode: 1
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
                  values:
                  - $type: ElementValue
                    replacedColumn: ""
                    values:
                    - $type: ComplexValue
                      replacedColumn: ""
                      allowArrayExclude: true
                      attributes:
                      - replacedColumn: ""
                        value:
                          $type: StringValue
                          replacedColumn: ""
                          value: string
                      contentValue: true
                      contentValueObj:
                        $type: StringValue
                        replacedColumn: ""
                        value: PRUEBA EJEMPLO QA
                  - $type: ElementValue
                    replacedColumn: ""
                    values:
                    - $type: ComplexValue
                      replacedColumn: ""
                      allowArrayExclude: true
                      attributes:
                      - replacedColumn: ""
                        value:
                          $type: StringValue
                          replacedColumn: ""
                          value: array
                        useValue: true
                      compositorValue: true
                      compositorValueObj:
                        replacedColumn: ""
                        values:
                          $type: CompositorValueSetCollectionSet
                          set:
                          - $type: CompositorValueSet
                            values:
                            - $type: ElementValue
                              replacedColumn: ""
                              values:
                              - $type: ComplexValue
                                replacedColumn: ""
                                allowArrayExclude: true
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
                                      values:
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            value: ""
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            value: "${Politica}"
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            value: I
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            columnName: Use Data Source Wizard
                                            value: "${Nombres}"
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            value: "${Apellidos}"
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            value: ""
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            value: "${Identificacion}"
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
                                          attributes:
                                          - replacedColumn: ""
                                            value:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: string
                                          contentValue: true
                                          contentValueObj:
                                            $type: StringValue
                                            replacedColumn: ""
                                            value: desarrollador
                                      - $type: ElementValue
                                        replacedColumn: ""
                                        values:
                                        - $type: ComplexValue
                                          replacedColumn: ""
                                          allowArrayExclude: true
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
                                                values:
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: "${SegundoNombre}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: "${Direccion}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: "${Ciudad}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: "${Provincia}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: 145822
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: "${PaisNacimiento}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: array
                                                      useValue: true
                                                    compositorValue: true
                                                    compositorValueObj:
                                                      replacedColumn: ""
                                                      values:
                                                        $type: CompositorValueSetCollectionSet
                                                        set:
                                                        - $type: CompositorValueSet
                                                          values:
                                                          - $type: ElementValue
                                                            replacedColumn: ""
                                                            values:
                                                            - $type: ComplexValue
                                                              replacedColumn: ""
                                                              allowArrayExclude: true
                                                              contentValue: true
                                                              contentValueObj:
                                                                $type: StringValue
                                                                replacedColumn: ""
                                                                value: "${PaisResidencia}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: array
                                                      useValue: true
                                                    compositorValue: true
                                                    compositorValueObj:
                                                      replacedColumn: ""
                                                      values:
                                                        $type: CompositorValueSetCollectionSet
                                                        set:
                                                        - $type: CompositorValueSet
                                                          values:
                                                          - $type: ElementValue
                                                            replacedColumn: ""
                                                            values:
                                                            - $type: ComplexValue
                                                              replacedColumn: ""
                                                              allowArrayExclude: true
                                                              contentValue: true
                                                              contentValueObj:
                                                                $type: StringValue
                                                                replacedColumn: ""
                                                                value: "${PaisNacionalidad}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: 13/01/1987
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: "${ActividadEconomica}"
                                                - $type: ElementValue
                                                  replacedColumn: ""
                                                  values:
                                                  - $type: ComplexValue
                                                    replacedColumn: ""
                                                    allowArrayExclude: true
                                                    attributes:
                                                    - replacedColumn: ""
                                                      value:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: string
                                                    contentValue: true
                                                    contentValueObj:
                                                      $type: StringValue
                                                      replacedColumn: ""
                                                      value: ASEGURADORA
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
          hasReference: true
          qnameAsString: ":"
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
      timeout:
        useDefault: false
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
          HTTPClient_Endpoint: "https://pokeapi.co/${user}/v2/pokemon/ditto"
      transportProperties:
        manager:
          protocol: 1
          properties:
          - $type: HTTPClientHTTPProperties
            followRedirects:
              bool: true
            common:
              auth:
                useDefault: false
                authName: NTLM
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: Host
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: pokeapi.co
                - name: Authorization
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Basic [MASKED]"
            protocol: 1
            keepAlive1_1:
              bool: true
          - $type: HTTPClientHTTPProperties
            followRedirects:
              bool: true
            common:
              auth:
                useDefault: false
                authName: NTLM
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: Host
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: pokeapi.co
                - name: Authorization
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Basic [MASKED]"
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
          name: Traffic Object
      formXML:
        doctype: ""
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: |-
            {
               "product": "PRUEBA EJEMPLO QA",
               "informationClient": [
                  {
                     "typeId": "",
                     "policyId": "${Politica}",
                     "organizationType": "I",
                     "firstName": "${Nombres}",
                     "lastName": "${Apellidos}",
                     "identificationType": "",
                     "identification": "${Identificacion}",
                     "rol":"desarrollador",
                     "optionalInformation": {
                        "middleName": "${SegundoNombre}",
                        "address": "${Direccion}",
                        "city": "${Ciudad}",
                        "state": "${Provincia}",
                        "zipCode": "145822",
                        "birthCountry": "${PaisNacimiento}",
                        "residenceCountry": ["${PaisResidencia}"],
                        "nationalityCountry":["${PaisNacionalidad}"],
                        "birthDate": "13/01/1987",
                        "economicActivityCode": "${ActividadEconomica}",
                        "businessType": "ASEGURADORA"
                     }
                  }
               ]
            }
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
          parameterizedValue:
            column: user
          selectedIndex: -2
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: v2
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: pokemon
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: ditto
      resourceMethod:
        httpMethod: GET
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  - $type: TestSuite
    name: Crear transacciones
    testFlowLogic:
      dependencyLogic:
        index: 2
    testID: 2
    tests:
    - $type: RESTClientToolTest
      name: REST Client
      testID: 6
      tool:
        $type: RESTClient
        dataSourceNames:
        - Tabladedatos2
        iconName: RESTClient
        name: Ejemplo
        outputTools:
        - $type: GenericAssertionTool
          dataSourceNames:
          - Tabldedatos1
          iconName: XMLAssertor
          name: JSON Assertor
          wrappedTool:
            $type: XMLAssertionTool
            dataSourceNames:
            - Tabldedatos1
            iconName: XMLAssertor
            name: XML Assertor
            assertions:
            - $type: ValueAssertion
              timestamp: 1782942731215
              name: NameAbility
              extractEntireElement: true
              Assertion_XPath: "/root/abilities/item[1]/ability/name/string()"
              value:
                name: Value
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: limber
                  parameterizedValue:
                    column: Use Data Source Wizard
            - $type: ValueAssertion
              timestamp: 1782942977067
              name: NameAbility2
              extractEntireElement: true
              Assertion_XPath: "/root/abilities/item[2]/ability/name/string()"
              value:
                name: Value
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: imposter
            message:
              $type: ExpectedXMLMessage
              message: true
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
        - $type: DiffTool
          iconName: Diff
          name: Diff control generated on 02-07-2026 17:12:15.
          differs:
          - $type: TextDiffer
          source:
            controls:
            - keys:
              - ""
              - ""
              - dato1
              - a
              row:
                refs:
                - dataSourceName: Tabladedatos2
                  row: 1
                - dataSourceName: Tabldedatos1
                  row: 1
                last: false
            - Not Found
            - keys:
              - ""
              - ""
              - dato1
              - b
              row:
                refs:
                - first: false
                  last: true
                  dataSourceName: Tabladedatos2
                  row: 2
                - dataSourceName: Tabldedatos1
                  row: 1
                first: false
                last: false
            - Not Found
            - keys:
              - ""
              - ""
              - dato1
              - a
              row:
                refs:
                - dataSourceName: Tabladedatos2
                  row: 1
                - first: false
                  last: true
                  dataSourceName: Tabldedatos1
                  row: 2
                first: false
                last: false
            - Not Found
            - keys:
              - ""
              - ""
              - dato1
              - b
              row:
                refs:
                - first: false
                  last: true
                  dataSourceName: Tabladedatos2
                  row: 2
                - first: false
                  last: true
                  dataSourceName: Tabldedatos1
                  row: 2
                first: false
            - Not Found
            optionsType: 2
          mode: 1
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
                    values:
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: string
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: PRUEBA EJEMPLO QA
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: array
                          useValue: true
                        compositorValue: true
                        compositorValueObj:
                          replacedColumn: ""
                          values:
                            $type: CompositorValueSetCollectionSet
                            set:
                            - $type: CompositorValueSet
                              values:
                              - $type: ElementValue
                                replacedColumn: ""
                                values:
                                - $type: ComplexValue
                                  replacedColumn: ""
                                  allowArrayExclude: true
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
                                        values:
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: ""
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: "${Politica}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: I
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              columnName: Use Data Source Wizard
                                              value: "${Nombres}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: "${Apellidos}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: ""
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: "${Identificacion}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: desarrollador
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
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
                                                  values:
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${SegundoNombre}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${Direccion}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${Ciudad}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${Provincia}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: 145822
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${PaisNacimiento}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: array
                                                        useValue: true
                                                      compositorValue: true
                                                      compositorValueObj:
                                                        replacedColumn: ""
                                                        values:
                                                          $type: CompositorValueSetCollectionSet
                                                          set:
                                                          - $type: CompositorValueSet
                                                            values:
                                                            - $type: ElementValue
                                                              replacedColumn: ""
                                                              values:
                                                              - $type: ComplexValue
                                                                replacedColumn: ""
                                                                allowArrayExclude: true
                                                                contentValue: true
                                                                contentValueObj:
                                                                  $type: StringValue
                                                                  replacedColumn: ""
                                                                  value: "${PaisResidencia}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: array
                                                        useValue: true
                                                      compositorValue: true
                                                      compositorValueObj:
                                                        replacedColumn: ""
                                                        values:
                                                          $type: CompositorValueSetCollectionSet
                                                          set:
                                                          - $type: CompositorValueSet
                                                            values:
                                                            - $type: ElementValue
                                                              replacedColumn: ""
                                                              values:
                                                              - $type: ComplexValue
                                                                replacedColumn: ""
                                                                allowArrayExclude: true
                                                                contentValue: true
                                                                contentValueObj:
                                                                  $type: StringValue
                                                                  replacedColumn: ""
                                                                  value: "${PaisNacionalidad}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: 13/01/1987
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${ActividadEconomica}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: ASEGURADORA
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
            hasReference: true
            qnameAsString: ":"
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
        timeout:
          useDefault: false
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
            HTTPClient_Endpoint: "https://pokeapi.co/api/v2/pokemon/${dato1}"
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  authName: NTLM
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Host
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: pokeapi.co
                  - name: Authorization
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Basic [MASKED]"
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  authName: NTLM
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Host
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: pokeapi.co
                  - name: Authorization
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Basic [MASKED]"
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
            name: Traffic Object
        formXML:
          doctype: ""
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: |-
              {
                 "product": "PRUEBA EJEMPLO QA",
                 "informationClient": [
                    {
                       "typeId": "",
                       "policyId": "${Politica}",
                       "organizationType": "I",
                       "firstName": "${Nombres}",
                       "lastName": "${Apellidos}",
                       "identificationType": "",
                       "identification": "${Identificacion}",
                       "rol":"desarrollador",
                       "optionalInformation": {
                          "middleName": "${SegundoNombre}",
                          "address": "${Direccion}",
                          "city": "${Ciudad}",
                          "state": "${Provincia}",
                          "zipCode": "145822",
                          "birthCountry": "${PaisNacimiento}",
                          "residenceCountry": ["${PaisResidencia}"],
                          "nationalityCountry":["${PaisNacionalidad}"],
                          "birthDate": "13/01/1987",
                          "economicActivityCode": "${ActividadEconomica}",
                          "businessType": "ASEGURADORA"
                       }
                    }
                 ]
              }
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
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: v2
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: pokemon
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: ditto
            parameterizedValue:
              column: dato1
            selectedIndex: -2
        resourceMethod:
          httpMethod: GET
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      name: Ejemplo 2
      testID: 7
      tool:
        $type: RESTClient
        dataSourceNames:
        - Tabldedatos1
        iconName: RESTClient
        name: Ejemplo 2
        outputTools:
        - $type: GenericAssertionTool
          dataSourceNames:
          - Tabldedatos1
          iconName: XMLAssertor
          name: JSON Assertor
          wrappedTool:
            $type: XMLAssertionTool
            dataSourceNames:
            - Tabldedatos1
            iconName: XMLAssertor
            name: XML Assertor
            assertions:
            - $type: ValueAssertion
              timestamp: 1782942731215
              name: NameAbility
              extractEntireElement: true
              Assertion_XPath: "/root/abilities/item[1]/ability/name/string()"
              value:
                name: Value
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: limber
                  parameterizedValue:
                    column: Use Data Source Wizard
            - $type: ValueAssertion
              timestamp: 1782942977067
              name: NameAbility2
              extractEntireElement: true
              Assertion_XPath: "/root/abilities/item[2]/ability/name/string()"
              value:
                name: Value
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: imposter
            message:
              $type: ExpectedXMLMessage
              message: true
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
        - $type: DiffTool
          iconName: Diff
          name: Diff control generated on 02-07-2026 17:12:16.
          differs:
          - $type: TextDiffer
          source:
            controls:
            - keys:
              - ""
              - ""
              - user
              - a
              row:
                refs:
                - dataSourceName: Tabladedatos2
                  row: 1
                - dataSourceName: Tabldedatos1
                  row: 1
                last: false
            - |-
              <!DOCTYPE html><html lang="en"><head><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                })(window,document,'script','dataLayer','GTM-MD89GGQ');</script><meta name="generator" content="React Static"><title data-react-helmet="true">Page Not Found - Pok&#xE9;API</title><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5, shrink-to-fit=no"><meta data-react-helmet="true" property="og:type" content="website"><meta data-react-helmet="true" name="Description" content="An open RESTful API for Pok&#xE9;mon data"><meta data-react-helmet="true" property="keywords" content="pokemon pok&#xE9;mon API REST free"><meta data-react-helmet="true" property="og:image" content="/static/pokeapi_256.3fa72200.png"><meta data-react-helmet="true" property="description" content="An open RESTful API for Pok&#xE9;mon data"><link rel="preload" as="script" href="/templates/styles.f65bd0cb.js"><link rel="preload" as="script" href="/templates/vendors~main.b08a0546.js"><link rel="preload" as="script" href="/main.5d01ff9f.js"><link rel="preload" as="style" href="/styles.d61da460.css"><link rel="stylesheet" href="/styles.d61da460.css"><link data-react-helmet="true" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700"><link data-react-helmet="true" rel="icon" href="/pokeapi_192_square.png"><script data-react-helmet="true" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-9300109033485921" crossorigin="anonymous"></script><script data-react-helmet="true" async src="https://www.googletagmanager.com/gtag/js?id=G-X3X3FV0WED"></script><script data-react-helmet="true">window.dataLayer = window.dataLayer || [];
                                  function gtag() {
                                      dataLayer.push(arguments)
                                  }
                                  gtag('js', new Date());
                                  gtag('config', 'G-X3X3FV0WED');</script></head><body><noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MD89GGQ" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><div id="root"><div id="site-header" class="Header-module__headerwrapper--2Yq6L"><header class="Header-module__header--3xzeo"><a class="Header-module__homelink--1N9Da" title="Pok&#xE9;API" href="/"><img src="/static/pokeapi_256.3fa72200.png" alt="Pok&#xE9;API"></a><nav class="Header-module__nav--25Sms"><a class="Header-module__link--zKtyy" href="/">Home</a><a class="Header-module__link--zKtyy" href="/about">About</a><a class="Header-module__link--zKtyy" href="/docs/v2">API v2</a><a class="Header-module__link--zKtyy" href="/docs/graphql">GraphQL</a></nav></header></div><main id="site-content"><div class="Page-module__page--mC5go"><div class="Page-module__constrain_width--N2xeq"><h1>404 &#x2013; Page Not Found</h1><p>We couldn&apos;t find what you were looking for.</p><p>Please contact the owner of the site that linked you to the original URL and let them know their link is broken.</p></div></div></main><footer id="site-footer" class="Footer-module__footer--3nalg"><div class="Footer-module__container--yg5jX"><div>Created by <a href="https://github.com/phalt">Paul Hallett</a> and other <a href="https://github.com/PokeAPI/pokeapi/graphs/contributors">Pok&#xE9;API contributors</a> around the world. Pok&#xE9;mon and Pok&#xE9;mon character names are trademarks of Nintendo.</div><div><a href="https://pokeapi.statuspage.io/"><img alt="Status" src="https://img.shields.io/badge/dynamic/json?color=blue&amp;label=status&amp;query=%24.status.description&amp;url=https%3A%2F%2Fzlfyqp3hlvly.statuspage.io%2Fapi%2Fv2%2Fsummary.json"></a></div></div></footer></div><script type="text/javascript">window.__routeInfo = JSON.parse("{\"template\":\"__react_static_root__/src/pages/404.js\",\"sharedHashesByProp\":{},\"data\":{},\"path\":\"404\",\"sharedData\":{},\"siteData\":{\"alerts\":[{\"htmlMessage\":\"<p>Starting June 18th a new GraphQL specification is rolling out, v1beta2. Read more at <a href=\\\"/docs/graphql#v1beta2\\\">GraphQL v1beta2</a>. The former v1beta version is sun-setting and scheduled to be removed.</p>\\n\",\"level\":\"important\",\"id\":\"f191fc90\"}]}}");</script><script defer type="text/javascript" src="/templates/styles.f65bd0cb.js"></script><script defer type="text/javascript" src="/templates/vendors~main.b08a0546.js"></script><script defer type="text/javascript" src="/main.5d01ff9f.js"></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/v4513226cdae34746b4dedf0b4dfa099e1781791509496" integrity="sha512-ZE9pZaUXND66v380QUtch/5sE9tPFh2zg45pR2PB0CVkCtOREv2AJKkSidISWkysEuQ0EH8faUU5du78bx87UQ==" data-cf-beacon='{"version":"2024.11.0","token":"9fbcf60ab0bc4d7d9c24cc0a2b3b7af0","r":1,"server_timing":{"name":{"cfCacheStatus":true,"cfEdge":true,"cfExtPri":true,"cfL4":true,"cfOrigin":true,"cfSpeedBrain":true},"location_startswith":null}}' crossorigin="anonymous"></script>
              </body></html>
            - keys:
              - ""
              - ""
              - user
              - a
              row:
                refs:
                - first: false
                  last: true
                  dataSourceName: Tabladedatos2
                  row: 2
                - dataSourceName: Tabldedatos1
                  row: 1
                first: false
                last: false
            - |-
              <!DOCTYPE html><html lang="en"><head><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                })(window,document,'script','dataLayer','GTM-MD89GGQ');</script><meta name="generator" content="React Static"><title data-react-helmet="true">Page Not Found - Pok&#xE9;API</title><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5, shrink-to-fit=no"><meta data-react-helmet="true" property="og:type" content="website"><meta data-react-helmet="true" name="Description" content="An open RESTful API for Pok&#xE9;mon data"><meta data-react-helmet="true" property="keywords" content="pokemon pok&#xE9;mon API REST free"><meta data-react-helmet="true" property="og:image" content="/static/pokeapi_256.3fa72200.png"><meta data-react-helmet="true" property="description" content="An open RESTful API for Pok&#xE9;mon data"><link rel="preload" as="script" href="/templates/styles.f65bd0cb.js"><link rel="preload" as="script" href="/templates/vendors~main.b08a0546.js"><link rel="preload" as="script" href="/main.5d01ff9f.js"><link rel="preload" as="style" href="/styles.d61da460.css"><link rel="stylesheet" href="/styles.d61da460.css"><link data-react-helmet="true" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700"><link data-react-helmet="true" rel="icon" href="/pokeapi_192_square.png"><script data-react-helmet="true" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-9300109033485921" crossorigin="anonymous"></script><script data-react-helmet="true" async src="https://www.googletagmanager.com/gtag/js?id=G-X3X3FV0WED"></script><script data-react-helmet="true">window.dataLayer = window.dataLayer || [];
                                  function gtag() {
                                      dataLayer.push(arguments)
                                  }
                                  gtag('js', new Date());
                                  gtag('config', 'G-X3X3FV0WED');</script></head><body><noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MD89GGQ" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><div id="root"><div id="site-header" class="Header-module__headerwrapper--2Yq6L"><header class="Header-module__header--3xzeo"><a class="Header-module__homelink--1N9Da" title="Pok&#xE9;API" href="/"><img src="/static/pokeapi_256.3fa72200.png" alt="Pok&#xE9;API"></a><nav class="Header-module__nav--25Sms"><a class="Header-module__link--zKtyy" href="/">Home</a><a class="Header-module__link--zKtyy" href="/about">About</a><a class="Header-module__link--zKtyy" href="/docs/v2">API v2</a><a class="Header-module__link--zKtyy" href="/docs/graphql">GraphQL</a></nav></header></div><main id="site-content"><div class="Page-module__page--mC5go"><div class="Page-module__constrain_width--N2xeq"><h1>404 &#x2013; Page Not Found</h1><p>We couldn&apos;t find what you were looking for.</p><p>Please contact the owner of the site that linked you to the original URL and let them know their link is broken.</p></div></div></main><footer id="site-footer" class="Footer-module__footer--3nalg"><div class="Footer-module__container--yg5jX"><div>Created by <a href="https://github.com/phalt">Paul Hallett</a> and other <a href="https://github.com/PokeAPI/pokeapi/graphs/contributors">Pok&#xE9;API contributors</a> around the world. Pok&#xE9;mon and Pok&#xE9;mon character names are trademarks of Nintendo.</div><div><a href="https://pokeapi.statuspage.io/"><img alt="Status" src="https://img.shields.io/badge/dynamic/json?color=blue&amp;label=status&amp;query=%24.status.description&amp;url=https%3A%2F%2Fzlfyqp3hlvly.statuspage.io%2Fapi%2Fv2%2Fsummary.json"></a></div></div></footer></div><script type="text/javascript">window.__routeInfo = JSON.parse("{\"template\":\"__react_static_root__/src/pages/404.js\",\"sharedHashesByProp\":{},\"data\":{},\"path\":\"404\",\"sharedData\":{},\"siteData\":{\"alerts\":[{\"htmlMessage\":\"<p>Starting June 18th a new GraphQL specification is rolling out, v1beta2. Read more at <a href=\\\"/docs/graphql#v1beta2\\\">GraphQL v1beta2</a>. The former v1beta version is sun-setting and scheduled to be removed.</p>\\n\",\"level\":\"important\",\"id\":\"f191fc90\"}]}}");</script><script defer type="text/javascript" src="/templates/styles.f65bd0cb.js"></script><script defer type="text/javascript" src="/templates/vendors~main.b08a0546.js"></script><script defer type="text/javascript" src="/main.5d01ff9f.js"></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/v4513226cdae34746b4dedf0b4dfa099e1781791509496" integrity="sha512-ZE9pZaUXND66v380QUtch/5sE9tPFh2zg45pR2PB0CVkCtOREv2AJKkSidISWkysEuQ0EH8faUU5du78bx87UQ==" data-cf-beacon='{"version":"2024.11.0","token":"9fbcf60ab0bc4d7d9c24cc0a2b3b7af0","r":1,"server_timing":{"name":{"cfCacheStatus":true,"cfEdge":true,"cfExtPri":true,"cfL4":true,"cfOrigin":true,"cfSpeedBrain":true},"location_startswith":null}}' crossorigin="anonymous"></script>
              </body></html>
            - keys:
              - ""
              - ""
              - user
              - b
              row:
                refs:
                - dataSourceName: Tabladedatos2
                  row: 1
                - first: false
                  last: true
                  dataSourceName: Tabldedatos1
                  row: 2
                first: false
                last: false
            - |-
              <!DOCTYPE html><html lang="en"><head><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                })(window,document,'script','dataLayer','GTM-MD89GGQ');</script><meta name="generator" content="React Static"><title data-react-helmet="true">Page Not Found - Pok&#xE9;API</title><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5, shrink-to-fit=no"><meta data-react-helmet="true" property="og:type" content="website"><meta data-react-helmet="true" name="Description" content="An open RESTful API for Pok&#xE9;mon data"><meta data-react-helmet="true" property="keywords" content="pokemon pok&#xE9;mon API REST free"><meta data-react-helmet="true" property="og:image" content="/static/pokeapi_256.3fa72200.png"><meta data-react-helmet="true" property="description" content="An open RESTful API for Pok&#xE9;mon data"><link rel="preload" as="script" href="/templates/styles.f65bd0cb.js"><link rel="preload" as="script" href="/templates/vendors~main.b08a0546.js"><link rel="preload" as="script" href="/main.5d01ff9f.js"><link rel="preload" as="style" href="/styles.d61da460.css"><link rel="stylesheet" href="/styles.d61da460.css"><link data-react-helmet="true" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700"><link data-react-helmet="true" rel="icon" href="/pokeapi_192_square.png"><script data-react-helmet="true" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-9300109033485921" crossorigin="anonymous"></script><script data-react-helmet="true" async src="https://www.googletagmanager.com/gtag/js?id=G-X3X3FV0WED"></script><script data-react-helmet="true">window.dataLayer = window.dataLayer || [];
                                  function gtag() {
                                      dataLayer.push(arguments)
                                  }
                                  gtag('js', new Date());
                                  gtag('config', 'G-X3X3FV0WED');</script></head><body><noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MD89GGQ" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><div id="root"><div id="site-header" class="Header-module__headerwrapper--2Yq6L"><header class="Header-module__header--3xzeo"><a class="Header-module__homelink--1N9Da" title="Pok&#xE9;API" href="/"><img src="/static/pokeapi_256.3fa72200.png" alt="Pok&#xE9;API"></a><nav class="Header-module__nav--25Sms"><a class="Header-module__link--zKtyy" href="/">Home</a><a class="Header-module__link--zKtyy" href="/about">About</a><a class="Header-module__link--zKtyy" href="/docs/v2">API v2</a><a class="Header-module__link--zKtyy" href="/docs/graphql">GraphQL</a></nav></header></div><main id="site-content"><div class="Page-module__page--mC5go"><div class="Page-module__constrain_width--N2xeq"><h1>404 &#x2013; Page Not Found</h1><p>We couldn&apos;t find what you were looking for.</p><p>Please contact the owner of the site that linked you to the original URL and let them know their link is broken.</p></div></div></main><footer id="site-footer" class="Footer-module__footer--3nalg"><div class="Footer-module__container--yg5jX"><div>Created by <a href="https://github.com/phalt">Paul Hallett</a> and other <a href="https://github.com/PokeAPI/pokeapi/graphs/contributors">Pok&#xE9;API contributors</a> around the world. Pok&#xE9;mon and Pok&#xE9;mon character names are trademarks of Nintendo.</div><div><a href="https://pokeapi.statuspage.io/"><img alt="Status" src="https://img.shields.io/badge/dynamic/json?color=blue&amp;label=status&amp;query=%24.status.description&amp;url=https%3A%2F%2Fzlfyqp3hlvly.statuspage.io%2Fapi%2Fv2%2Fsummary.json"></a></div></div></footer></div><script type="text/javascript">window.__routeInfo = JSON.parse("{\"template\":\"__react_static_root__/src/pages/404.js\",\"sharedHashesByProp\":{},\"data\":{},\"path\":\"404\",\"sharedData\":{},\"siteData\":{\"alerts\":[{\"htmlMessage\":\"<p>Starting June 18th a new GraphQL specification is rolling out, v1beta2. Read more at <a href=\\\"/docs/graphql#v1beta2\\\">GraphQL v1beta2</a>. The former v1beta version is sun-setting and scheduled to be removed.</p>\\n\",\"level\":\"important\",\"id\":\"f191fc90\"}]}}");</script><script defer type="text/javascript" src="/templates/styles.f65bd0cb.js"></script><script defer type="text/javascript" src="/templates/vendors~main.b08a0546.js"></script><script defer type="text/javascript" src="/main.5d01ff9f.js"></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/v4513226cdae34746b4dedf0b4dfa099e1781791509496" integrity="sha512-ZE9pZaUXND66v380QUtch/5sE9tPFh2zg45pR2PB0CVkCtOREv2AJKkSidISWkysEuQ0EH8faUU5du78bx87UQ==" data-cf-beacon='{"version":"2024.11.0","token":"9fbcf60ab0bc4d7d9c24cc0a2b3b7af0","r":1,"server_timing":{"name":{"cfCacheStatus":true,"cfEdge":true,"cfExtPri":true,"cfL4":true,"cfOrigin":true,"cfSpeedBrain":true},"location_startswith":null}}' crossorigin="anonymous"></script>
              </body></html>
            - keys:
              - ""
              - ""
              - user
              - b
              row:
                refs:
                - first: false
                  last: true
                  dataSourceName: Tabladedatos2
                  row: 2
                - first: false
                  last: true
                  dataSourceName: Tabldedatos1
                  row: 2
                first: false
            - |-
              <!DOCTYPE html><html lang="en"><head><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                })(window,document,'script','dataLayer','GTM-MD89GGQ');</script><meta name="generator" content="React Static"><title data-react-helmet="true">Page Not Found - Pok&#xE9;API</title><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5, shrink-to-fit=no"><meta data-react-helmet="true" property="og:type" content="website"><meta data-react-helmet="true" name="Description" content="An open RESTful API for Pok&#xE9;mon data"><meta data-react-helmet="true" property="keywords" content="pokemon pok&#xE9;mon API REST free"><meta data-react-helmet="true" property="og:image" content="/static/pokeapi_256.3fa72200.png"><meta data-react-helmet="true" property="description" content="An open RESTful API for Pok&#xE9;mon data"><link rel="preload" as="script" href="/templates/styles.f65bd0cb.js"><link rel="preload" as="script" href="/templates/vendors~main.b08a0546.js"><link rel="preload" as="script" href="/main.5d01ff9f.js"><link rel="preload" as="style" href="/styles.d61da460.css"><link rel="stylesheet" href="/styles.d61da460.css"><link data-react-helmet="true" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700"><link data-react-helmet="true" rel="icon" href="/pokeapi_192_square.png"><script data-react-helmet="true" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-9300109033485921" crossorigin="anonymous"></script><script data-react-helmet="true" async src="https://www.googletagmanager.com/gtag/js?id=G-X3X3FV0WED"></script><script data-react-helmet="true">window.dataLayer = window.dataLayer || [];
                                  function gtag() {
                                      dataLayer.push(arguments)
                                  }
                                  gtag('js', new Date());
                                  gtag('config', 'G-X3X3FV0WED');</script></head><body><noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MD89GGQ" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><div id="root"><div id="site-header" class="Header-module__headerwrapper--2Yq6L"><header class="Header-module__header--3xzeo"><a class="Header-module__homelink--1N9Da" title="Pok&#xE9;API" href="/"><img src="/static/pokeapi_256.3fa72200.png" alt="Pok&#xE9;API"></a><nav class="Header-module__nav--25Sms"><a class="Header-module__link--zKtyy" href="/">Home</a><a class="Header-module__link--zKtyy" href="/about">About</a><a class="Header-module__link--zKtyy" href="/docs/v2">API v2</a><a class="Header-module__link--zKtyy" href="/docs/graphql">GraphQL</a></nav></header></div><main id="site-content"><div class="Page-module__page--mC5go"><div class="Page-module__constrain_width--N2xeq"><h1>404 &#x2013; Page Not Found</h1><p>We couldn&apos;t find what you were looking for.</p><p>Please contact the owner of the site that linked you to the original URL and let them know their link is broken.</p></div></div></main><footer id="site-footer" class="Footer-module__footer--3nalg"><div class="Footer-module__container--yg5jX"><div>Created by <a href="https://github.com/phalt">Paul Hallett</a> and other <a href="https://github.com/PokeAPI/pokeapi/graphs/contributors">Pok&#xE9;API contributors</a> around the world. Pok&#xE9;mon and Pok&#xE9;mon character names are trademarks of Nintendo.</div><div><a href="https://pokeapi.statuspage.io/"><img alt="Status" src="https://img.shields.io/badge/dynamic/json?color=blue&amp;label=status&amp;query=%24.status.description&amp;url=https%3A%2F%2Fzlfyqp3hlvly.statuspage.io%2Fapi%2Fv2%2Fsummary.json"></a></div></div></footer></div><script type="text/javascript">window.__routeInfo = JSON.parse("{\"template\":\"__react_static_root__/src/pages/404.js\",\"sharedHashesByProp\":{},\"data\":{},\"path\":\"404\",\"sharedData\":{},\"siteData\":{\"alerts\":[{\"htmlMessage\":\"<p>Starting June 18th a new GraphQL specification is rolling out, v1beta2. Read more at <a href=\\\"/docs/graphql#v1beta2\\\">GraphQL v1beta2</a>. The former v1beta version is sun-setting and scheduled to be removed.</p>\\n\",\"level\":\"important\",\"id\":\"f191fc90\"}]}}");</script><script defer type="text/javascript" src="/templates/styles.f65bd0cb.js"></script><script defer type="text/javascript" src="/templates/vendors~main.b08a0546.js"></script><script defer type="text/javascript" src="/main.5d01ff9f.js"></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/v4513226cdae34746b4dedf0b4dfa099e1781791509496" integrity="sha512-ZE9pZaUXND66v380QUtch/5sE9tPFh2zg45pR2PB0CVkCtOREv2AJKkSidISWkysEuQ0EH8faUU5du78bx87UQ==" data-cf-beacon='{"version":"2024.11.0","token":"9fbcf60ab0bc4d7d9c24cc0a2b3b7af0","r":1,"server_timing":{"name":{"cfCacheStatus":true,"cfEdge":true,"cfExtPri":true,"cfL4":true,"cfOrigin":true,"cfSpeedBrain":true},"location_startswith":null}}' crossorigin="anonymous"></script>
              </body></html>
            optionsType: 2
          mode: 1
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
                    values:
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: string
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: PRUEBA EJEMPLO QA
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: array
                          useValue: true
                        compositorValue: true
                        compositorValueObj:
                          replacedColumn: ""
                          values:
                            $type: CompositorValueSetCollectionSet
                            set:
                            - $type: CompositorValueSet
                              values:
                              - $type: ElementValue
                                replacedColumn: ""
                                values:
                                - $type: ComplexValue
                                  replacedColumn: ""
                                  allowArrayExclude: true
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
                                        values:
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: ""
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: "${Politica}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: I
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              columnName: Use Data Source Wizard
                                              value: "${Nombres}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: "${Apellidos}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: ""
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: "${Identificacion}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: desarrollador
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
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
                                                  values:
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${SegundoNombre}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${Direccion}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${Ciudad}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${Provincia}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: 145822
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${PaisNacimiento}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: array
                                                        useValue: true
                                                      compositorValue: true
                                                      compositorValueObj:
                                                        replacedColumn: ""
                                                        values:
                                                          $type: CompositorValueSetCollectionSet
                                                          set:
                                                          - $type: CompositorValueSet
                                                            values:
                                                            - $type: ElementValue
                                                              replacedColumn: ""
                                                              values:
                                                              - $type: ComplexValue
                                                                replacedColumn: ""
                                                                allowArrayExclude: true
                                                                contentValue: true
                                                                contentValueObj:
                                                                  $type: StringValue
                                                                  replacedColumn: ""
                                                                  value: "${PaisResidencia}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: array
                                                        useValue: true
                                                      compositorValue: true
                                                      compositorValueObj:
                                                        replacedColumn: ""
                                                        values:
                                                          $type: CompositorValueSetCollectionSet
                                                          set:
                                                          - $type: CompositorValueSet
                                                            values:
                                                            - $type: ElementValue
                                                              replacedColumn: ""
                                                              values:
                                                              - $type: ComplexValue
                                                                replacedColumn: ""
                                                                allowArrayExclude: true
                                                                contentValue: true
                                                                contentValueObj:
                                                                  $type: StringValue
                                                                  replacedColumn: ""
                                                                  value: "${PaisNacionalidad}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: 13/01/1987
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${ActividadEconomica}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: ASEGURADORA
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
            hasReference: true
            qnameAsString: ":"
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
        timeout:
          useDefault: false
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
            HTTPClient_Endpoint: "https://pokeapi.co/${user}/v2/pokemon/ditto"
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  authName: NTLM
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Host
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: pokeapi.co
                  - name: Authorization
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Basic [MASKED]"
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  authName: NTLM
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Host
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: pokeapi.co
                  - name: Authorization
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Basic [MASKED]"
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
            name: Traffic Object
        formXML:
          doctype: ""
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: |-
              {
                 "product": "PRUEBA EJEMPLO QA",
                 "informationClient": [
                    {
                       "typeId": "",
                       "policyId": "${Politica}",
                       "organizationType": "I",
                       "firstName": "${Nombres}",
                       "lastName": "${Apellidos}",
                       "identificationType": "",
                       "identification": "${Identificacion}",
                       "rol":"desarrollador",
                       "optionalInformation": {
                          "middleName": "${SegundoNombre}",
                          "address": "${Direccion}",
                          "city": "${Ciudad}",
                          "state": "${Provincia}",
                          "zipCode": "145822",
                          "birthCountry": "${PaisNacimiento}",
                          "residenceCountry": ["${PaisResidencia}"],
                          "nationalityCountry":["${PaisNacionalidad}"],
                          "birthDate": "13/01/1987",
                          "economicActivityCode": "${ActividadEconomica}",
                          "businessType": "ASEGURADORA"
                       }
                    }
                 ]
              }
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
            parameterizedValue:
              column: user
            selectedIndex: -2
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: v2
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: pokemon
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: ditto
        resourceMethod:
          httpMethod: GET
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
  - $type: TestSuite
    name: verificar transacciones
    testFlowLogic:
      dependencyLogic:
        index: 2
        success: 0
    testID: 3
    tests:
    - $type: RESTClientToolTest
      name: REST Client
      testID: 8
      tool:
        $type: RESTClient
        dataSourceNames:
        - Tabladedatos2
        iconName: RESTClient
        name: Ejemplo
        outputTools:
        - $type: GenericAssertionTool
          dataSourceNames:
          - Tabldedatos1
          iconName: XMLAssertor
          name: JSON Assertor
          wrappedTool:
            $type: XMLAssertionTool
            dataSourceNames:
            - Tabldedatos1
            iconName: XMLAssertor
            name: XML Assertor
            assertions:
            - $type: ValueAssertion
              timestamp: 1782942731215
              name: NameAbility
              extractEntireElement: true
              Assertion_XPath: "/root/abilities/item[1]/ability/name/string()"
              value:
                name: Value
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: limber
                  parameterizedValue:
                    column: Use Data Source Wizard
            - $type: ValueAssertion
              timestamp: 1782942977067
              name: NameAbility2
              extractEntireElement: true
              Assertion_XPath: "/root/abilities/item[2]/ability/name/string()"
              value:
                name: Value
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: imposter
            message:
              $type: ExpectedXMLMessage
              message: true
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
        - $type: DiffTool
          iconName: Diff
          name: Diff control generated on 02-07-2026 17:12:16.
          differs:
          - $type: TextDiffer
          source:
            controls:
            - keys:
              - ""
              - ""
              - dato1
              - a
              row:
                refs:
                - dataSourceName: Tabladedatos2
                  row: 1
                - dataSourceName: Tabldedatos1
                  row: 1
                last: false
            - Not Found
            - keys:
              - ""
              - ""
              - dato1
              - b
              row:
                refs:
                - first: false
                  last: true
                  dataSourceName: Tabladedatos2
                  row: 2
                - dataSourceName: Tabldedatos1
                  row: 1
                first: false
                last: false
            - Not Found
            - keys:
              - ""
              - ""
              - dato1
              - a
              row:
                refs:
                - dataSourceName: Tabladedatos2
                  row: 1
                - first: false
                  last: true
                  dataSourceName: Tabldedatos1
                  row: 2
                first: false
                last: false
            - Not Found
            - keys:
              - ""
              - ""
              - dato1
              - b
              row:
                refs:
                - first: false
                  last: true
                  dataSourceName: Tabladedatos2
                  row: 2
                - first: false
                  last: true
                  dataSourceName: Tabldedatos1
                  row: 2
                first: false
            - Not Found
            optionsType: 2
          mode: 1
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
                    values:
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: string
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: PRUEBA EJEMPLO QA
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: array
                          useValue: true
                        compositorValue: true
                        compositorValueObj:
                          replacedColumn: ""
                          values:
                            $type: CompositorValueSetCollectionSet
                            set:
                            - $type: CompositorValueSet
                              values:
                              - $type: ElementValue
                                replacedColumn: ""
                                values:
                                - $type: ComplexValue
                                  replacedColumn: ""
                                  allowArrayExclude: true
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
                                        values:
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: ""
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: "${Politica}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: I
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              columnName: Use Data Source Wizard
                                              value: "${Nombres}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: "${Apellidos}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: ""
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: "${Identificacion}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: desarrollador
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
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
                                                  values:
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${SegundoNombre}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${Direccion}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${Ciudad}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${Provincia}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: 145822
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${PaisNacimiento}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: array
                                                        useValue: true
                                                      compositorValue: true
                                                      compositorValueObj:
                                                        replacedColumn: ""
                                                        values:
                                                          $type: CompositorValueSetCollectionSet
                                                          set:
                                                          - $type: CompositorValueSet
                                                            values:
                                                            - $type: ElementValue
                                                              replacedColumn: ""
                                                              values:
                                                              - $type: ComplexValue
                                                                replacedColumn: ""
                                                                allowArrayExclude: true
                                                                contentValue: true
                                                                contentValueObj:
                                                                  $type: StringValue
                                                                  replacedColumn: ""
                                                                  value: "${PaisResidencia}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: array
                                                        useValue: true
                                                      compositorValue: true
                                                      compositorValueObj:
                                                        replacedColumn: ""
                                                        values:
                                                          $type: CompositorValueSetCollectionSet
                                                          set:
                                                          - $type: CompositorValueSet
                                                            values:
                                                            - $type: ElementValue
                                                              replacedColumn: ""
                                                              values:
                                                              - $type: ComplexValue
                                                                replacedColumn: ""
                                                                allowArrayExclude: true
                                                                contentValue: true
                                                                contentValueObj:
                                                                  $type: StringValue
                                                                  replacedColumn: ""
                                                                  value: "${PaisNacionalidad}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: 13/01/1987
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${ActividadEconomica}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: ASEGURADORA
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
            hasReference: true
            qnameAsString: ":"
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
        timeout:
          useDefault: false
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
            HTTPClient_Endpoint: "https://pokeapi.co/api/v2/pokemon/${dato1}"
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  authName: NTLM
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Host
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: pokeapi.co
                  - name: Authorization
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Basic [MASKED]"
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  authName: NTLM
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Host
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: pokeapi.co
                  - name: Authorization
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Basic [MASKED]"
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
            name: Traffic Object
        formXML:
          doctype: ""
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: |-
              {
                 "product": "PRUEBA EJEMPLO QA",
                 "informationClient": [
                    {
                       "typeId": "",
                       "policyId": "${Politica}",
                       "organizationType": "I",
                       "firstName": "${Nombres}",
                       "lastName": "${Apellidos}",
                       "identificationType": "",
                       "identification": "${Identificacion}",
                       "rol":"desarrollador",
                       "optionalInformation": {
                          "middleName": "${SegundoNombre}",
                          "address": "${Direccion}",
                          "city": "${Ciudad}",
                          "state": "${Provincia}",
                          "zipCode": "145822",
                          "birthCountry": "${PaisNacimiento}",
                          "residenceCountry": ["${PaisResidencia}"],
                          "nationalityCountry":["${PaisNacionalidad}"],
                          "birthDate": "13/01/1987",
                          "economicActivityCode": "${ActividadEconomica}",
                          "businessType": "ASEGURADORA"
                       }
                    }
                 ]
              }
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
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: v2
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: pokemon
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: ditto
            parameterizedValue:
              column: dato1
            selectedIndex: -2
        resourceMethod:
          httpMethod: GET
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      name: Ejemplo 2
      testID: 9
      tool:
        $type: RESTClient
        dataSourceNames:
        - Tabldedatos1
        iconName: RESTClient
        name: Ejemplo 2
        outputTools:
        - $type: GenericAssertionTool
          dataSourceNames:
          - Tabldedatos1
          iconName: XMLAssertor
          name: JSON Assertor
          wrappedTool:
            $type: XMLAssertionTool
            dataSourceNames:
            - Tabldedatos1
            iconName: XMLAssertor
            name: XML Assertor
            assertions:
            - $type: ValueAssertion
              timestamp: 1782942731215
              name: NameAbility
              extractEntireElement: true
              Assertion_XPath: "/root/abilities/item[1]/ability/name/string()"
              value:
                name: Value
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: limber
                  parameterizedValue:
                    column: Use Data Source Wizard
            - $type: ValueAssertion
              timestamp: 1782942977067
              name: NameAbility2
              extractEntireElement: true
              Assertion_XPath: "/root/abilities/item[2]/ability/name/string()"
              value:
                name: Value
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: imposter
            message:
              $type: ExpectedXMLMessage
              message: true
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
        - $type: DiffTool
          iconName: Diff
          name: Diff control generated on 02-07-2026 17:12:16.
          differs:
          - $type: TextDiffer
          source:
            controls:
            - keys:
              - ""
              - ""
              - user
              - a
              row:
                refs:
                - dataSourceName: Tabladedatos2
                  row: 1
                - dataSourceName: Tabldedatos1
                  row: 1
                last: false
            - |-
              <!DOCTYPE html><html lang="en"><head><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                })(window,document,'script','dataLayer','GTM-MD89GGQ');</script><meta name="generator" content="React Static"><title data-react-helmet="true">Page Not Found - Pok&#xE9;API</title><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5, shrink-to-fit=no"><meta data-react-helmet="true" property="og:type" content="website"><meta data-react-helmet="true" name="Description" content="An open RESTful API for Pok&#xE9;mon data"><meta data-react-helmet="true" property="keywords" content="pokemon pok&#xE9;mon API REST free"><meta data-react-helmet="true" property="og:image" content="/static/pokeapi_256.3fa72200.png"><meta data-react-helmet="true" property="description" content="An open RESTful API for Pok&#xE9;mon data"><link rel="preload" as="script" href="/templates/styles.f65bd0cb.js"><link rel="preload" as="script" href="/templates/vendors~main.b08a0546.js"><link rel="preload" as="script" href="/main.5d01ff9f.js"><link rel="preload" as="style" href="/styles.d61da460.css"><link rel="stylesheet" href="/styles.d61da460.css"><link data-react-helmet="true" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700"><link data-react-helmet="true" rel="icon" href="/pokeapi_192_square.png"><script data-react-helmet="true" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-9300109033485921" crossorigin="anonymous"></script><script data-react-helmet="true" async src="https://www.googletagmanager.com/gtag/js?id=G-X3X3FV0WED"></script><script data-react-helmet="true">window.dataLayer = window.dataLayer || [];
                                  function gtag() {
                                      dataLayer.push(arguments)
                                  }
                                  gtag('js', new Date());
                                  gtag('config', 'G-X3X3FV0WED');</script></head><body><noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MD89GGQ" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><div id="root"><div id="site-header" class="Header-module__headerwrapper--2Yq6L"><header class="Header-module__header--3xzeo"><a class="Header-module__homelink--1N9Da" title="Pok&#xE9;API" href="/"><img src="/static/pokeapi_256.3fa72200.png" alt="Pok&#xE9;API"></a><nav class="Header-module__nav--25Sms"><a class="Header-module__link--zKtyy" href="/">Home</a><a class="Header-module__link--zKtyy" href="/about">About</a><a class="Header-module__link--zKtyy" href="/docs/v2">API v2</a><a class="Header-module__link--zKtyy" href="/docs/graphql">GraphQL</a></nav></header></div><main id="site-content"><div class="Page-module__page--mC5go"><div class="Page-module__constrain_width--N2xeq"><h1>404 &#x2013; Page Not Found</h1><p>We couldn&apos;t find what you were looking for.</p><p>Please contact the owner of the site that linked you to the original URL and let them know their link is broken.</p></div></div></main><footer id="site-footer" class="Footer-module__footer--3nalg"><div class="Footer-module__container--yg5jX"><div>Created by <a href="https://github.com/phalt">Paul Hallett</a> and other <a href="https://github.com/PokeAPI/pokeapi/graphs/contributors">Pok&#xE9;API contributors</a> around the world. Pok&#xE9;mon and Pok&#xE9;mon character names are trademarks of Nintendo.</div><div><a href="https://pokeapi.statuspage.io/"><img alt="Status" src="https://img.shields.io/badge/dynamic/json?color=blue&amp;label=status&amp;query=%24.status.description&amp;url=https%3A%2F%2Fzlfyqp3hlvly.statuspage.io%2Fapi%2Fv2%2Fsummary.json"></a></div></div></footer></div><script type="text/javascript">window.__routeInfo = JSON.parse("{\"template\":\"__react_static_root__/src/pages/404.js\",\"sharedHashesByProp\":{},\"data\":{},\"path\":\"404\",\"sharedData\":{},\"siteData\":{\"alerts\":[{\"htmlMessage\":\"<p>Starting June 18th a new GraphQL specification is rolling out, v1beta2. Read more at <a href=\\\"/docs/graphql#v1beta2\\\">GraphQL v1beta2</a>. The former v1beta version is sun-setting and scheduled to be removed.</p>\\n\",\"level\":\"important\",\"id\":\"f191fc90\"}]}}");</script><script defer type="text/javascript" src="/templates/styles.f65bd0cb.js"></script><script defer type="text/javascript" src="/templates/vendors~main.b08a0546.js"></script><script defer type="text/javascript" src="/main.5d01ff9f.js"></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/v4513226cdae34746b4dedf0b4dfa099e1781791509496" integrity="sha512-ZE9pZaUXND66v380QUtch/5sE9tPFh2zg45pR2PB0CVkCtOREv2AJKkSidISWkysEuQ0EH8faUU5du78bx87UQ==" data-cf-beacon='{"version":"2024.11.0","token":"9fbcf60ab0bc4d7d9c24cc0a2b3b7af0","r":1,"server_timing":{"name":{"cfCacheStatus":true,"cfEdge":true,"cfExtPri":true,"cfL4":true,"cfOrigin":true,"cfSpeedBrain":true},"location_startswith":null}}' crossorigin="anonymous"></script>
              </body></html>
            - keys:
              - ""
              - ""
              - user
              - a
              row:
                refs:
                - first: false
                  last: true
                  dataSourceName: Tabladedatos2
                  row: 2
                - dataSourceName: Tabldedatos1
                  row: 1
                first: false
                last: false
            - |-
              <!DOCTYPE html><html lang="en"><head><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                })(window,document,'script','dataLayer','GTM-MD89GGQ');</script><meta name="generator" content="React Static"><title data-react-helmet="true">Page Not Found - Pok&#xE9;API</title><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5, shrink-to-fit=no"><meta data-react-helmet="true" property="og:type" content="website"><meta data-react-helmet="true" name="Description" content="An open RESTful API for Pok&#xE9;mon data"><meta data-react-helmet="true" property="keywords" content="pokemon pok&#xE9;mon API REST free"><meta data-react-helmet="true" property="og:image" content="/static/pokeapi_256.3fa72200.png"><meta data-react-helmet="true" property="description" content="An open RESTful API for Pok&#xE9;mon data"><link rel="preload" as="script" href="/templates/styles.f65bd0cb.js"><link rel="preload" as="script" href="/templates/vendors~main.b08a0546.js"><link rel="preload" as="script" href="/main.5d01ff9f.js"><link rel="preload" as="style" href="/styles.d61da460.css"><link rel="stylesheet" href="/styles.d61da460.css"><link data-react-helmet="true" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700"><link data-react-helmet="true" rel="icon" href="/pokeapi_192_square.png"><script data-react-helmet="true" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-9300109033485921" crossorigin="anonymous"></script><script data-react-helmet="true" async src="https://www.googletagmanager.com/gtag/js?id=G-X3X3FV0WED"></script><script data-react-helmet="true">window.dataLayer = window.dataLayer || [];
                                  function gtag() {
                                      dataLayer.push(arguments)
                                  }
                                  gtag('js', new Date());
                                  gtag('config', 'G-X3X3FV0WED');</script></head><body><noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MD89GGQ" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><div id="root"><div id="site-header" class="Header-module__headerwrapper--2Yq6L"><header class="Header-module__header--3xzeo"><a class="Header-module__homelink--1N9Da" title="Pok&#xE9;API" href="/"><img src="/static/pokeapi_256.3fa72200.png" alt="Pok&#xE9;API"></a><nav class="Header-module__nav--25Sms"><a class="Header-module__link--zKtyy" href="/">Home</a><a class="Header-module__link--zKtyy" href="/about">About</a><a class="Header-module__link--zKtyy" href="/docs/v2">API v2</a><a class="Header-module__link--zKtyy" href="/docs/graphql">GraphQL</a></nav></header></div><main id="site-content"><div class="Page-module__page--mC5go"><div class="Page-module__constrain_width--N2xeq"><h1>404 &#x2013; Page Not Found</h1><p>We couldn&apos;t find what you were looking for.</p><p>Please contact the owner of the site that linked you to the original URL and let them know their link is broken.</p></div></div></main><footer id="site-footer" class="Footer-module__footer--3nalg"><div class="Footer-module__container--yg5jX"><div>Created by <a href="https://github.com/phalt">Paul Hallett</a> and other <a href="https://github.com/PokeAPI/pokeapi/graphs/contributors">Pok&#xE9;API contributors</a> around the world. Pok&#xE9;mon and Pok&#xE9;mon character names are trademarks of Nintendo.</div><div><a href="https://pokeapi.statuspage.io/"><img alt="Status" src="https://img.shields.io/badge/dynamic/json?color=blue&amp;label=status&amp;query=%24.status.description&amp;url=https%3A%2F%2Fzlfyqp3hlvly.statuspage.io%2Fapi%2Fv2%2Fsummary.json"></a></div></div></footer></div><script type="text/javascript">window.__routeInfo = JSON.parse("{\"template\":\"__react_static_root__/src/pages/404.js\",\"sharedHashesByProp\":{},\"data\":{},\"path\":\"404\",\"sharedData\":{},\"siteData\":{\"alerts\":[{\"htmlMessage\":\"<p>Starting June 18th a new GraphQL specification is rolling out, v1beta2. Read more at <a href=\\\"/docs/graphql#v1beta2\\\">GraphQL v1beta2</a>. The former v1beta version is sun-setting and scheduled to be removed.</p>\\n\",\"level\":\"important\",\"id\":\"f191fc90\"}]}}");</script><script defer type="text/javascript" src="/templates/styles.f65bd0cb.js"></script><script defer type="text/javascript" src="/templates/vendors~main.b08a0546.js"></script><script defer type="text/javascript" src="/main.5d01ff9f.js"></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/v4513226cdae34746b4dedf0b4dfa099e1781791509496" integrity="sha512-ZE9pZaUXND66v380QUtch/5sE9tPFh2zg45pR2PB0CVkCtOREv2AJKkSidISWkysEuQ0EH8faUU5du78bx87UQ==" data-cf-beacon='{"version":"2024.11.0","token":"9fbcf60ab0bc4d7d9c24cc0a2b3b7af0","r":1,"server_timing":{"name":{"cfCacheStatus":true,"cfEdge":true,"cfExtPri":true,"cfL4":true,"cfOrigin":true,"cfSpeedBrain":true},"location_startswith":null}}' crossorigin="anonymous"></script>
              </body></html>
            - keys:
              - ""
              - ""
              - user
              - b
              row:
                refs:
                - dataSourceName: Tabladedatos2
                  row: 1
                - first: false
                  last: true
                  dataSourceName: Tabldedatos1
                  row: 2
                first: false
                last: false
            - |-
              <!DOCTYPE html><html lang="en"><head><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                })(window,document,'script','dataLayer','GTM-MD89GGQ');</script><meta name="generator" content="React Static"><title data-react-helmet="true">Page Not Found - Pok&#xE9;API</title><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5, shrink-to-fit=no"><meta data-react-helmet="true" property="og:type" content="website"><meta data-react-helmet="true" name="Description" content="An open RESTful API for Pok&#xE9;mon data"><meta data-react-helmet="true" property="keywords" content="pokemon pok&#xE9;mon API REST free"><meta data-react-helmet="true" property="og:image" content="/static/pokeapi_256.3fa72200.png"><meta data-react-helmet="true" property="description" content="An open RESTful API for Pok&#xE9;mon data"><link rel="preload" as="script" href="/templates/styles.f65bd0cb.js"><link rel="preload" as="script" href="/templates/vendors~main.b08a0546.js"><link rel="preload" as="script" href="/main.5d01ff9f.js"><link rel="preload" as="style" href="/styles.d61da460.css"><link rel="stylesheet" href="/styles.d61da460.css"><link data-react-helmet="true" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700"><link data-react-helmet="true" rel="icon" href="/pokeapi_192_square.png"><script data-react-helmet="true" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-9300109033485921" crossorigin="anonymous"></script><script data-react-helmet="true" async src="https://www.googletagmanager.com/gtag/js?id=G-X3X3FV0WED"></script><script data-react-helmet="true">window.dataLayer = window.dataLayer || [];
                                  function gtag() {
                                      dataLayer.push(arguments)
                                  }
                                  gtag('js', new Date());
                                  gtag('config', 'G-X3X3FV0WED');</script></head><body><noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MD89GGQ" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><div id="root"><div id="site-header" class="Header-module__headerwrapper--2Yq6L"><header class="Header-module__header--3xzeo"><a class="Header-module__homelink--1N9Da" title="Pok&#xE9;API" href="/"><img src="/static/pokeapi_256.3fa72200.png" alt="Pok&#xE9;API"></a><nav class="Header-module__nav--25Sms"><a class="Header-module__link--zKtyy" href="/">Home</a><a class="Header-module__link--zKtyy" href="/about">About</a><a class="Header-module__link--zKtyy" href="/docs/v2">API v2</a><a class="Header-module__link--zKtyy" href="/docs/graphql">GraphQL</a></nav></header></div><main id="site-content"><div class="Page-module__page--mC5go"><div class="Page-module__constrain_width--N2xeq"><h1>404 &#x2013; Page Not Found</h1><p>We couldn&apos;t find what you were looking for.</p><p>Please contact the owner of the site that linked you to the original URL and let them know their link is broken.</p></div></div></main><footer id="site-footer" class="Footer-module__footer--3nalg"><div class="Footer-module__container--yg5jX"><div>Created by <a href="https://github.com/phalt">Paul Hallett</a> and other <a href="https://github.com/PokeAPI/pokeapi/graphs/contributors">Pok&#xE9;API contributors</a> around the world. Pok&#xE9;mon and Pok&#xE9;mon character names are trademarks of Nintendo.</div><div><a href="https://pokeapi.statuspage.io/"><img alt="Status" src="https://img.shields.io/badge/dynamic/json?color=blue&amp;label=status&amp;query=%24.status.description&amp;url=https%3A%2F%2Fzlfyqp3hlvly.statuspage.io%2Fapi%2Fv2%2Fsummary.json"></a></div></div></footer></div><script type="text/javascript">window.__routeInfo = JSON.parse("{\"template\":\"__react_static_root__/src/pages/404.js\",\"sharedHashesByProp\":{},\"data\":{},\"path\":\"404\",\"sharedData\":{},\"siteData\":{\"alerts\":[{\"htmlMessage\":\"<p>Starting June 18th a new GraphQL specification is rolling out, v1beta2. Read more at <a href=\\\"/docs/graphql#v1beta2\\\">GraphQL v1beta2</a>. The former v1beta version is sun-setting and scheduled to be removed.</p>\\n\",\"level\":\"important\",\"id\":\"f191fc90\"}]}}");</script><script defer type="text/javascript" src="/templates/styles.f65bd0cb.js"></script><script defer type="text/javascript" src="/templates/vendors~main.b08a0546.js"></script><script defer type="text/javascript" src="/main.5d01ff9f.js"></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/v4513226cdae34746b4dedf0b4dfa099e1781791509496" integrity="sha512-ZE9pZaUXND66v380QUtch/5sE9tPFh2zg45pR2PB0CVkCtOREv2AJKkSidISWkysEuQ0EH8faUU5du78bx87UQ==" data-cf-beacon='{"version":"2024.11.0","token":"9fbcf60ab0bc4d7d9c24cc0a2b3b7af0","r":1,"server_timing":{"name":{"cfCacheStatus":true,"cfEdge":true,"cfExtPri":true,"cfL4":true,"cfOrigin":true,"cfSpeedBrain":true},"location_startswith":null}}' crossorigin="anonymous"></script>
              </body></html>
            - keys:
              - ""
              - ""
              - user
              - b
              row:
                refs:
                - first: false
                  last: true
                  dataSourceName: Tabladedatos2
                  row: 2
                - first: false
                  last: true
                  dataSourceName: Tabldedatos1
                  row: 2
                first: false
            - |-
              <!DOCTYPE html><html lang="en"><head><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                })(window,document,'script','dataLayer','GTM-MD89GGQ');</script><meta name="generator" content="React Static"><title data-react-helmet="true">Page Not Found - Pok&#xE9;API</title><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5, shrink-to-fit=no"><meta data-react-helmet="true" property="og:type" content="website"><meta data-react-helmet="true" name="Description" content="An open RESTful API for Pok&#xE9;mon data"><meta data-react-helmet="true" property="keywords" content="pokemon pok&#xE9;mon API REST free"><meta data-react-helmet="true" property="og:image" content="/static/pokeapi_256.3fa72200.png"><meta data-react-helmet="true" property="description" content="An open RESTful API for Pok&#xE9;mon data"><link rel="preload" as="script" href="/templates/styles.f65bd0cb.js"><link rel="preload" as="script" href="/templates/vendors~main.b08a0546.js"><link rel="preload" as="script" href="/main.5d01ff9f.js"><link rel="preload" as="style" href="/styles.d61da460.css"><link rel="stylesheet" href="/styles.d61da460.css"><link data-react-helmet="true" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700"><link data-react-helmet="true" rel="icon" href="/pokeapi_192_square.png"><script data-react-helmet="true" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-9300109033485921" crossorigin="anonymous"></script><script data-react-helmet="true" async src="https://www.googletagmanager.com/gtag/js?id=G-X3X3FV0WED"></script><script data-react-helmet="true">window.dataLayer = window.dataLayer || [];
                                  function gtag() {
                                      dataLayer.push(arguments)
                                  }
                                  gtag('js', new Date());
                                  gtag('config', 'G-X3X3FV0WED');</script></head><body><noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MD89GGQ" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><div id="root"><div id="site-header" class="Header-module__headerwrapper--2Yq6L"><header class="Header-module__header--3xzeo"><a class="Header-module__homelink--1N9Da" title="Pok&#xE9;API" href="/"><img src="/static/pokeapi_256.3fa72200.png" alt="Pok&#xE9;API"></a><nav class="Header-module__nav--25Sms"><a class="Header-module__link--zKtyy" href="/">Home</a><a class="Header-module__link--zKtyy" href="/about">About</a><a class="Header-module__link--zKtyy" href="/docs/v2">API v2</a><a class="Header-module__link--zKtyy" href="/docs/graphql">GraphQL</a></nav></header></div><main id="site-content"><div class="Page-module__page--mC5go"><div class="Page-module__constrain_width--N2xeq"><h1>404 &#x2013; Page Not Found</h1><p>We couldn&apos;t find what you were looking for.</p><p>Please contact the owner of the site that linked you to the original URL and let them know their link is broken.</p></div></div></main><footer id="site-footer" class="Footer-module__footer--3nalg"><div class="Footer-module__container--yg5jX"><div>Created by <a href="https://github.com/phalt">Paul Hallett</a> and other <a href="https://github.com/PokeAPI/pokeapi/graphs/contributors">Pok&#xE9;API contributors</a> around the world. Pok&#xE9;mon and Pok&#xE9;mon character names are trademarks of Nintendo.</div><div><a href="https://pokeapi.statuspage.io/"><img alt="Status" src="https://img.shields.io/badge/dynamic/json?color=blue&amp;label=status&amp;query=%24.status.description&amp;url=https%3A%2F%2Fzlfyqp3hlvly.statuspage.io%2Fapi%2Fv2%2Fsummary.json"></a></div></div></footer></div><script type="text/javascript">window.__routeInfo = JSON.parse("{\"template\":\"__react_static_root__/src/pages/404.js\",\"sharedHashesByProp\":{},\"data\":{},\"path\":\"404\",\"sharedData\":{},\"siteData\":{\"alerts\":[{\"htmlMessage\":\"<p>Starting June 18th a new GraphQL specification is rolling out, v1beta2. Read more at <a href=\\\"/docs/graphql#v1beta2\\\">GraphQL v1beta2</a>. The former v1beta version is sun-setting and scheduled to be removed.</p>\\n\",\"level\":\"important\",\"id\":\"f191fc90\"}]}}");</script><script defer type="text/javascript" src="/templates/styles.f65bd0cb.js"></script><script defer type="text/javascript" src="/templates/vendors~main.b08a0546.js"></script><script defer type="text/javascript" src="/main.5d01ff9f.js"></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/v4513226cdae34746b4dedf0b4dfa099e1781791509496" integrity="sha512-ZE9pZaUXND66v380QUtch/5sE9tPFh2zg45pR2PB0CVkCtOREv2AJKkSidISWkysEuQ0EH8faUU5du78bx87UQ==" data-cf-beacon='{"version":"2024.11.0","token":"9fbcf60ab0bc4d7d9c24cc0a2b3b7af0","r":1,"server_timing":{"name":{"cfCacheStatus":true,"cfEdge":true,"cfExtPri":true,"cfL4":true,"cfOrigin":true,"cfSpeedBrain":true},"location_startswith":null}}' crossorigin="anonymous"></script>
              </body></html>
            optionsType: 2
          mode: 1
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
                    values:
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: string
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: PRUEBA EJEMPLO QA
                    - $type: ElementValue
                      replacedColumn: ""
                      values:
                      - $type: ComplexValue
                        replacedColumn: ""
                        allowArrayExclude: true
                        attributes:
                        - replacedColumn: ""
                          value:
                            $type: StringValue
                            replacedColumn: ""
                            value: array
                          useValue: true
                        compositorValue: true
                        compositorValueObj:
                          replacedColumn: ""
                          values:
                            $type: CompositorValueSetCollectionSet
                            set:
                            - $type: CompositorValueSet
                              values:
                              - $type: ElementValue
                                replacedColumn: ""
                                values:
                                - $type: ComplexValue
                                  replacedColumn: ""
                                  allowArrayExclude: true
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
                                        values:
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: ""
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: "${Politica}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: I
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              columnName: Use Data Source Wizard
                                              value: "${Nombres}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: "${Apellidos}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: ""
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: "${Identificacion}"
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
                                            attributes:
                                            - replacedColumn: ""
                                              value:
                                                $type: StringValue
                                                replacedColumn: ""
                                                value: string
                                            contentValue: true
                                            contentValueObj:
                                              $type: StringValue
                                              replacedColumn: ""
                                              value: desarrollador
                                        - $type: ElementValue
                                          replacedColumn: ""
                                          values:
                                          - $type: ComplexValue
                                            replacedColumn: ""
                                            allowArrayExclude: true
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
                                                  values:
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${SegundoNombre}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${Direccion}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${Ciudad}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${Provincia}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: 145822
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${PaisNacimiento}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: array
                                                        useValue: true
                                                      compositorValue: true
                                                      compositorValueObj:
                                                        replacedColumn: ""
                                                        values:
                                                          $type: CompositorValueSetCollectionSet
                                                          set:
                                                          - $type: CompositorValueSet
                                                            values:
                                                            - $type: ElementValue
                                                              replacedColumn: ""
                                                              values:
                                                              - $type: ComplexValue
                                                                replacedColumn: ""
                                                                allowArrayExclude: true
                                                                contentValue: true
                                                                contentValueObj:
                                                                  $type: StringValue
                                                                  replacedColumn: ""
                                                                  value: "${PaisResidencia}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: array
                                                        useValue: true
                                                      compositorValue: true
                                                      compositorValueObj:
                                                        replacedColumn: ""
                                                        values:
                                                          $type: CompositorValueSetCollectionSet
                                                          set:
                                                          - $type: CompositorValueSet
                                                            values:
                                                            - $type: ElementValue
                                                              replacedColumn: ""
                                                              values:
                                                              - $type: ComplexValue
                                                                replacedColumn: ""
                                                                allowArrayExclude: true
                                                                contentValue: true
                                                                contentValueObj:
                                                                  $type: StringValue
                                                                  replacedColumn: ""
                                                                  value: "${PaisNacionalidad}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: 13/01/1987
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: "${ActividadEconomica}"
                                                  - $type: ElementValue
                                                    replacedColumn: ""
                                                    values:
                                                    - $type: ComplexValue
                                                      replacedColumn: ""
                                                      allowArrayExclude: true
                                                      attributes:
                                                      - replacedColumn: ""
                                                        value:
                                                          $type: StringValue
                                                          replacedColumn: ""
                                                          value: string
                                                      contentValue: true
                                                      contentValueObj:
                                                        $type: StringValue
                                                        replacedColumn: ""
                                                        value: ASEGURADORA
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
            hasReference: true
            qnameAsString: ":"
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
        timeout:
          useDefault: false
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
            HTTPClient_Endpoint: "https://pokeapi.co/${user}/v2/pokemon/ditto"
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  authName: NTLM
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Host
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: pokeapi.co
                  - name: Authorization
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Basic [MASKED]"
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  authName: NTLM
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Host
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: pokeapi.co
                  - name: Authorization
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Basic [MASKED]"
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
            name: Traffic Object
        formXML:
          doctype: ""
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: |-
              {
                 "product": "PRUEBA EJEMPLO QA",
                 "informationClient": [
                    {
                       "typeId": "",
                       "policyId": "${Politica}",
                       "organizationType": "I",
                       "firstName": "${Nombres}",
                       "lastName": "${Apellidos}",
                       "identificationType": "",
                       "identification": "${Identificacion}",
                       "rol":"desarrollador",
                       "optionalInformation": {
                          "middleName": "${SegundoNombre}",
                          "address": "${Direccion}",
                          "city": "${Ciudad}",
                          "state": "${Provincia}",
                          "zipCode": "145822",
                          "birthCountry": "${PaisNacimiento}",
                          "residenceCountry": ["${PaisResidencia}"],
                          "nationalityCountry":["${PaisNacionalidad}"],
                          "birthDate": "13/01/1987",
                          "economicActivityCode": "${ActividadEconomica}",
                          "businessType": "ASEGURADORA"
                       }
                    }
                 ]
              }
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
            parameterizedValue:
              column: user
            selectedIndex: -2
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: v2
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: pokemon
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: ditto
        resourceMethod:
          httpMethod: GET
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
