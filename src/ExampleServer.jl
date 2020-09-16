module ExampleServer
    using Immortal

    include("./Handlers.jl")
    import .Handlers


    function run()
        config_path::String = "/home/entropy/Проекты/ExampleServer/config.yml"

        connection, broker_config, channels_config = Immortal.init(config_path)
        channels_dicts = Immortal.declares(connection, broker_config, channels_config)
        Adapter = Immortal.get_adapter(broker_config)
    end
end
