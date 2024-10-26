.class public Lch/qos/logback/classic/util/DefaultNestedComponentRules;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDefaultNestedComponentRegistryRules(Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)V
    .locals 3

    const-class v0, Lch/qos/logback/core/AppenderBase;

    const-class v1, Lch/qos/logback/classic/PatternLayout;

    const-string v2, "layout"

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lch/qos/logback/core/UnsynchronizedAppenderBase;

    const-class v1, Lch/qos/logback/classic/PatternLayout;

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lch/qos/logback/core/AppenderBase;

    const-class v1, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    const-string v2, "encoder"

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lch/qos/logback/core/UnsynchronizedAppenderBase;

    const-class v1, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-virtual {p0, v0, v2, v1}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {p0}, Lch/qos/logback/core/net/ssl/SSLNestedComponentRegistryRules;->addDefaultNestedComponentRegistryRules(Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)V

    return-void
.end method
